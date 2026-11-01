package dev.android.dynamicisland.settings;

import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/** Small offline ranked index. No Android/UI dependencies and no preference writes. */
final class SettingsSearchEngine {
    static final int MAX_QUERY=128;
    private static final String INITIALS="ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ";
    static final class Field {
        final String text,compact,initials;
        final String[] words;
        final int weight;
        Field(String value,int weight) {
            text=normalize(value);compact=text.replace(" ","");words=text.split(" ");
            initials=initials(text);this.weight=weight;
        }
        int match(String term,boolean fuzzy) {
            if(term.isEmpty())return 0;
            if(isInitialQuery(term))return initials.contains(term) ? weight*65/100 : 0;
            for(String word:words)if(word.equals(term))return weight;
            for(String word:words)if(word.startsWith(term))return weight*86/100;
            if(compact.contains(term))return weight*74/100;
            if(!fuzzy)return 0;
            int length=term.codePointCount(0,term.length());
            boolean korean=term.codePoints().anyMatch(c->c>=0xac00&&c<=0xd7a3);
            if(length<(korean?3:4)||length>32)return 0;
            int allowed=length>=9?2:1;
            for(String word:words)if(Math.abs(word.length()-term.length())<=allowed
                    &&distance(term,word,allowed)<=allowed)return weight*(text.equals(word)?60:48)/100;
            return 0;
        }
    }
    static final class Document {
        final String id,title,summary,path;
        final List<Field> fields;
        Document(String id,String title,String summary,String path,List<Field> fields) {
            this.id=id;this.title=title;this.summary=summary;this.path=path;this.fields=List.copyOf(fields);
        }
    }
    private static final class Hit {
        final Document document;final int score;
        Hit(Document document,int score){this.document=document;this.score=score;}
    }
    private final List<Document> documents;
    private final Set<String> ignored=new HashSet<>();
    SettingsSearchEngine(List<Document> documents,String stopWords) {
        this.documents=List.copyOf(documents);
        for(String word:normalize(stopWords).split(" "))if(!word.isEmpty())ignored.add(word);
    }
    List<Document> search(String query,int limit) {
        if(limit<=0)return List.of();
        String normalized=normalize(query==null?"":query.substring(0,Math.min(query.length(),MAX_QUERY)));
        if(normalized.isEmpty())return List.of();
        Set<String> terms=new LinkedHashSet<>();
        for(String word:normalized.split(" "))if(!ignored.contains(word)&&terms.size()<10)terms.add(word);
        String compact=normalized.replace(" ","");
        List<Hit> hits=new ArrayList<>();
        for(Document document:documents) {
            if(Thread.currentThread().isInterrupted())return List.of();
            int score=0;boolean matches=true;
            for(String term:terms) {
                int best=0;
                for(Field field:document.fields)best=Math.max(best,field.match(term,false));
                if(best==0)for(Field field:document.fields)best=Math.max(best,field.match(term,true));
                if(best==0){matches=false;break;}
                score+=best;
            }
            if(!matches)continue;
            int phrase=0;
            for(Field field:document.fields) {
                if(field.compact.equals(compact))phrase=Math.max(phrase,field.weight*3);
                else if(field.compact.startsWith(compact))phrase=Math.max(phrase,field.weight);
            }
            if(terms.isEmpty()&&phrase==0)continue;
            hits.add(new Hit(document,score+phrase));
        }
        hits.sort(Comparator.<Hit>comparingInt(hit->hit.score).reversed().thenComparing(hit->hit.document.id));
        List<Document> result=new ArrayList<>();
        for(Hit hit:hits){if(result.size()==limit)break;result.add(hit.document);}
        return result;
    }
    static String normalize(String value) {
        String input=Normalizer.normalize(value==null?"":value,Normalizer.Form.NFKC).toLowerCase(Locale.ROOT);
        StringBuilder out=new StringBuilder();
        for(int i=0;i<input.length();) {
            int cp=input.codePointAt(i);i+=Character.charCount(cp);
            if(cp>=0x1100&&cp<=0x1112)out.append(INITIALS.charAt(cp-0x1100));
            else if(cp==0x131)out.append('i');
            else if(cp==0x451)out.append('е');
            else if(Character.isLetterOrDigit(cp)) {
                String piece=new String(Character.toChars(cp));
                if(Character.UnicodeScript.of(cp)==Character.UnicodeScript.LATIN)
                    piece=Normalizer.normalize(piece,Normalizer.Form.NFD).replaceAll("\\p{M}+","");
                out.append(piece);
            }else if(Character.getType(cp)!=Character.NON_SPACING_MARK)out.append(' ');
        }
        return out.toString().trim().replaceAll("\\s+"," ");
    }
    private static boolean isInitialQuery(String value) {
        return value.length()>=2&&value.chars().allMatch(c->INITIALS.indexOf(c)>=0);
    }
    private static String initials(String text) {
        StringBuilder out=new StringBuilder();
        for(int i=0;i<text.length();i++) {
            char c=text.charAt(i);
            if(c>=0xac00&&c<=0xd7a3)out.append(INITIALS.charAt((c-0xac00)/588));
            else if(INITIALS.indexOf(c)>=0)out.append(c);
        }
        return out.toString();
    }
    /** Bounded optimal-string-alignment distance, including adjacent-key transposition. */
    private static int distance(String a,String b,int max) {
        if(Math.abs(a.length()-b.length())>max)return max+1;
        int[] older=new int[b.length()+1],previous=new int[b.length()+1],current=new int[b.length()+1];
        for(int j=0;j<=b.length();j++)previous[j]=j;
        for(int i=1;i<=a.length();i++) {
            current[0]=i;int minimum=i;
            for(int j=1;j<=b.length();j++) {
                int value=Math.min(Math.min(previous[j]+1,current[j-1]+1),previous[j-1]+(a.charAt(i-1)==b.charAt(j-1)?0:1));
                if(i>1&&j>1&&a.charAt(i-1)==b.charAt(j-2)&&a.charAt(i-2)==b.charAt(j-1))value=Math.min(value,older[j-2]+1);
                current[j]=value;minimum=Math.min(minimum,value);
            }
            if(minimum>max)return max+1;
            int[] swap=older;older=previous;previous=current;current=swap;
        }
        return previous[b.length()];
    }
}
