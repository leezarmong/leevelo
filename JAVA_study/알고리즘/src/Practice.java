import java.util.Scanner;

public class Practice {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("문장을 입력해 주세요.");
        String str = scan.nextLine();

        for(int i=0; i<str.length(); i++){
            String b = str.substring(0,1);// 두개의 인수를 적게 된다면 그 부분만 제공 된다.

            String a = str.substring(1); // 하지만 한개의인수를 적게 된다면 이 인덱스를 제외한 나머지가 제공 된다.

            str = a+b;
            System.out.println(str);

        }
    }
}
