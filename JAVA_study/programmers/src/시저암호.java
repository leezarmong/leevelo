import java.util.Scanner;

public class 시저암호 {

    public String solution(String s, int n) {
        String answer = "";
        StringBuffer sb = new StringBuffer(); // 구분된 문자열을 담을 StringBuffer

        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);

            if (Character.isLowerCase(c)) {
                c = (char) ((c - 'a' + n) % 26 + 'a');
            } else if (Character.isUpperCase(c)) {
                c = (char) ((c - 'A' + n) % 26 + 'A');
            }
            answer += c;

            // 문자열을 쉼표로 구분하여 sb에 추가
            if (sb.length() != 0) {
                sb.append(",");
            }
            sb.append(c);
        }

        String result = sb.toString();// sb에 있는 문자열을 반환
        return result;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("문자열 입력: ");
        String k = scanner.next();

        System.out.print("숫자 입력: ");
        int ik = scanner.nextInt();

        시저암호 si = new 시저암호();

        String re = si.solution(k, ik);
        System.out.println(re); // 결과 출력
    }
}