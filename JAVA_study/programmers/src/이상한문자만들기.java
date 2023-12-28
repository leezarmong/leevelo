import java.util.Scanner;

public class 이상한문자만들기 {

    public String solution(String str) {
        StringBuilder sb = new StringBuilder();
        boolean toUpper = true; // 첫 글자를 대문자로 변경하기 위한 플래그

        for (char c : str.toCharArray()) {
            if (!Character.isAlphabetic(c)) { // 문자가 알파벳인지 검사하는 isAlphabetic() 메소드
            //if(c == ' '){

                sb.append(c); // 공백은 그대로 추가
                toUpper = true; // 다음 단어의 첫 글자를 대문자로 변경해야 함

            } else {
                if (toUpper) {
                    sb.append(Character.toUpperCase(c)); // 첫 글자는 대문자로 변환

                } else {
                    sb.append(Character.toLowerCase(c)); // 나머지는 소문자로 변환
                }
                toUpper = !toUpper; // 플래그를 토글하여 다음 문자의 대문자 사용
                // 참 거짓 반복 하기 위함.
            }
        }

        return sb.toString();
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        String k = "try hello world";

        이상한문자만들기 sk = new 이상한문자만들기();
        String result = sk.solution(k);
        System.out.print(result);
    }
}