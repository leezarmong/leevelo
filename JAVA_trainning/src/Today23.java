import java.util.Scanner;

public class Today23 {
    static Scanner scan = new Scanner(System.in);

    public void text(String k) {

        if (k.isEmpty()) {
            System.out.println('0');
            // 비어있을경우 0 을 출력
        } else System.out.println(k.split(" ").length);
        // 띄어쓰기를 기준한 길이를 출력해준다.

    }

    public static void main(String[] args) {
        Today23 td23 = new Today23();

        System.out.println("문자를 입력해주세요.");
        String k = scan.nextLine().trim();
        // 문자열 좌우 의 공백을 제거한다.

        td23.text(k);
    }
}
