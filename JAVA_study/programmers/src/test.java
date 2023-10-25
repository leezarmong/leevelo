import java.util.Scanner;

public class test {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        // scanner class

        String index ="";

        System.out.print("upper lower :");
        String k = scan.nextLine();

        for (int i = 0; i < k.length(); i++) {

            char c = k.charAt(i);
            // k 의 원소  char 로 변환
            if(Character.isUpperCase(c)){
                index +=Character.toLowerCase(c);
            }
            else
                index +=Character.toUpperCase(c);

        }

        System.out.print(index);
    }
}
