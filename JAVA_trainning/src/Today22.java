import java.util.Scanner;

public class Today22 {
    static Scanner scan = new Scanner(System.in);

    public void text() {


        System.out.print("문자 입력하세요");
        String k = scan.next();

        char[] c = new char[k.length()];
        int count = 0 ;
        for (int i = 0; i < c.length; i++) {
            c[i] = k.charAt(i);
            count++;

            if (!(i == c.length - 1)) {
                System.out.print(c[i] + ",");
            }
            else System.out.print(c[i]+"\n");

        }
        System.out.print("문자 개수"+ count);
    }

    public void tes2() {

        System.out.print("문자입력");
        String len = scan.next();

        System.out.print("찾을 단어");
        char c = scan.next().charAt(0);

        int count = 0;
        for (int i = 0; i < len.length(); i++) {
            if (len.charAt(i) == c) {
                count++;
            }
        }

        System.out.print("포함된 개수 >" + count);
    }

    public static void main(String[] args) {
        Today22 td2 = new Today22();

        td2.text();
    }

}
