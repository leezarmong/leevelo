import java.util.Scanner;

public class Today23 {
    static Scanner scan = new Scanner(System.in);

    public void text(String k) {

        if(k.isEmpty()){
            System.out.println('0');
        }
        else System.out.println(k.split(" ").length);



    }

    public static void main(String[] args) {
        Today23 td23 = new Today23();

        System.out.println("문자를 입력해주세요.");
        String k = scan.nextLine().trim();

        td23.text(k);
    }
}
