.class public Lcom/samsung/android/sdk/scs/ai/AiServices;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppCategorizer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategorizer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategorizer;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/suggestion/AppCategorizer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBasicEntityExtractor(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/entity/BasicEntityExtractor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBasicNlpAnalyzer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/bnlp/BasicNlpAnalyzer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/bnlp/BasicNlpAnalyzer;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/bnlp/BasicNlpAnalyzer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getBoundaryDetector(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getC2PAClient(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClient;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClient;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getClassifier(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Classifier;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/Classifier;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/Classifier;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getConfiguration(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Configuration;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/Configuration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getCorrector(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Corrector;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/Corrector;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/Corrector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDocumentCategoryClassifier(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getEmojiAugmentor(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/EmojiAugmentor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getEventCategoryClassifier(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/event/EventCategoryClassifier;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/event/EventCategoryClassifier;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/event/EventCategoryClassifier;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getEventExtractor(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractor;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/event/EventExtractor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getExtractor(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Extractor;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/Extractor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getFolderNameSuggester(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggester;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggester;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/suggestion/FolderNameSuggester;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getFormatConverter(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/FormatConverter;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/FormatConverter;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/FormatConverter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getGeneric(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Generic;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/Generic;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/Generic;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getImageEditorGenerator(Landroid/content/Context;I)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/visual/RequestType;

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/AiServices;->getImageEditorGenerator(Landroid/content/Context;ILcom/samsung/android/sdk/scs/ai/visual/RequestType;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;

    move-result-object p0

    return-object p0
.end method

.method public static getImageEditorGenerator(Landroid/content/Context;ILcom/samsung/android/sdk/scs/ai/visual/RequestType;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;-><init>(Landroid/content/Context;ILcom/samsung/android/sdk/scs/ai/visual/RequestType;)V

    return-object v0
.end method

.method public static getImageUpscaler(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageUpscaler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getKeyPhraseExtractor(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/phrase/KeyPhraseExtractor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getKeywordSuggester(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggester;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggester;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggester;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getLanguageDetector(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/language/LanguageDetector;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/language/LanguageDetector;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/language/LanguageDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getLlmCloudUsage(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/LlmCloudUsageRequest;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/LlmCloudUsageRequest;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/LlmCloudUsageRequest;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getModelDownloader(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/downloader/ModelDownloader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getNeuralTranslator(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getNotesOrganizer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizer;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getReminderEntityExtractor(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntityExtractor;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntityExtractor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/reminder/ReminderEntityExtractor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSmartCoverer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/SmartCoverer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSmartReplyer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSpeechRecognizer(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V

    return-object v0
.end method

.method public static getSuggester(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Suggester;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/Suggester;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/Suggester;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSuggesterForExternal(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getSummarizer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Summarizer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getToneConverter(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/ToneConverter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getTranslator(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Translator;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/Translator;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/Translator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getUnitConverter(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getWallpaperGenerator(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getWritingComposer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
