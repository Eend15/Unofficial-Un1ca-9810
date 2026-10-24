package dev.android.dynamicisland.island.detect;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.junit.Test;

public class OtpDetectorTest {
    private static String code(String text) {
        OtpDetector.Match m = OtpDetector.detect(text);
        return m == null ? null : m.code;
    }

    @Test
    public void koreanVerificationTexts() {
        assertEquals("482913", code("[Web발신] [카카오뱅크] 인증번호 [482913]를 입력해 주세요."));
        assertEquals("123456", code("[토스] 인증번호 123456 타인에게 알려주지 마세요."));
        assertEquals("654321", code("인증번호는 654321입니다. (유효시간 3분)"));
        assertEquals("7788", code("[삼성페이] 결제 인증번호 7788"));
        assertEquals("390214", code("[네이버] 인증번호 [390 214]를 입력해주세요."));
    }

    @Test
    public void internationalSmsWithServiceName() {
        assertEquals("448413", code("[국제발신]\nDiscord 확인 코드: 448413"));
        assertEquals("448413", code("010-1234-5678 [국제발신] Discord 확인 코드: 448413"));
        assertEquals("448413", code("+447700900123 [국제발신]\nDiscord 확인 코드: 448413"));
    }

    @Test
    public void englishVerificationTexts() {
        assertEquals("123456", code("Your Google verification code is 123456"));
        assertEquals("482913", code("482913 is your verification code"));
        assertEquals("482913", code("G-482913 is your Google verification code."));
        assertEquals("8841", code("Use code 8841 to log in. Do not share it."));
    }

    @Test
    public void paymentOrderPhoneAndAdTextsAreNotCodes() {
        assertNull(code("[Web발신] 신한카드(1234) 승인 홍길동 10,000원 일시불 03/05 12:30 스타벅스"));
        assertNull(code("승인번호 12345678 신한카드 결제 35,000원"));
        assertNull(code("배달의민족 주문번호 123456 배달이 시작되었어요"));
        assertNull(code("(광고) 인증번호 이벤트 참여하고 1234 포인트 받기"));
        assertNull(code("고객센터 인증번호 문의 1588-1234"));
        assertNull(code("인증번호 안내 ₩50000 결제"));
        assertNull(code("점심 먹었어? 2024년 5월 12일에 만나자"));
    }

    @Test
    public void phoneNumberNearTheCodeLosesToTheCode() {
        assertEquals("482913", code("인증번호 482913 문의 고객센터 1588-1234"));
    }

    @Test
    public void displayGroupsSixAndEightDigits() {
        assertEquals("482 913", OtpDetector.detect("인증번호 482913").display());
        assertEquals("1234 5678", OtpDetector.detect("인증번호 12345678").display());
        assertEquals("7788", OtpDetector.detect("인증번호 7788").display());
        assertNotNull(OtpDetector.detect("OTP 99887"));
    }

    @Test
    public void reviewFindings() {
        // 노출금지 contains 출금; "Europe" contains eur
        assertEquals("482913", code("[현대카드] 본인확인 인증번호 482913 타인노출금지"));
        assertEquals("482913", code("인증번호 482913 Europe"));
        // "code is" with words in between
        assertEquals("482913", code("Your code is 482913"));
        assertEquals("4821", code("Netflix: Your sign-in code is 4821."));
        assertEquals("482913", code("Your Apple ID Code is: 482913."));
        assertEquals("4821", code("Your Toss code is 4821"));
        // an amount nearby does not make the code a price
        assertEquals("482913", code("결제 인증번호 [482913] 금액 35,000원"));
        assertEquals("482913", code("인증번호 482913 입력. 결제금액 15,000원"));
        assertEquals("482913", code("해외결제 인증번호 482913 USD 12.00"));
        // dates and service numbers are not codes
        assertNull(code("Your password was changed on 2026-10-21. If this wasn't you, contact us."));
        assertNull(code("[신한은행] 본인확인을 위해 1599-8000 으로 연락 바랍니다"));
    }
}
