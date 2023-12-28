import java.util.Scanner;

public class test {

    public String updown(String str) {

        String st = "";

        for (int i = 0; i < str.length(); i++) {
            char c = str.charAt(i);

            if (Character.isUpperCase(c)) {
                st += Character.toLowerCase(c);
            } else {
                st += Character.toUpperCase(c);
            }
        }
        return st;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.println("영 단어 입력. :");
        String str = scan.nextLine();

        test ts = new test();

        System.out.println(ts.updown(str));
    }

}
