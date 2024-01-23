import java.util.Scanner;

public class Today22 {
    static Scanner scan = new Scanner(System.in);

    public void text() {


        System.out.print("문자 입력하세요");
        String k = scan.next();


        int count = 0 ;


        StringBuilder sb = new StringBuilder();
        for (int i = k.length()-1; i >=0; i--) {

            sb.insert(0,k.charAt(i));
            count++;

            if(i%1==0 && i >0){
                sb.insert(0,",");
            }
        }
        String result = sb.toString();
        System.out.print(result);
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



        System.out.print("문자 갯수 1 , 찾는문자 카운트 2 , 종료 3");
        int n = scan.nextInt();

        switch (n){
            case 1 :
                td2.text();
                break;
            case 2:
                td2.tes2();
                break;
            case 3:
                System.exit(0);
        }
    }

}
