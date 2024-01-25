import java.util.Arrays;
import java.util.Scanner;

public class Today25 {
    static Scanner scan = new Scanner(System.in);

    //알파벳 카운팅
    public void text(String k) {

        int count = 0;

        StringBuilder sb = new StringBuilder();
        for (int i = k.length() - 1; i >= 0; i--) {

            sb.insert(0, k.charAt(i));
            count++;

            if (count % 1 == 0 && i > 0) {
                sb.insert(0, ",");
            }
        }
        System.out.println("알파벳 개수 " + count);
        System.out.print(sb.toString());
    }

    //알파벳 카운팅 배열일 경우 for each 사용.
    public void text2(String[] kb) {

        String k = "";

        for (String insert : kb) {
            k += insert;
        }
        int count = 0;

        StringBuilder sb = new StringBuilder();
        for (int i = k.length() - 1; i >= 0; i--) {

            sb.insert(0, k.charAt(i));
            count++;

            if (count % 1 == 0 && i > 0) {
                sb.insert(0, ",");
            }
        }
        System.out.println("알파벳 개수 " + count);
        System.out.print(sb.toString());
    }

    public void text3(String k) {

        String[] strArra = k.split(" ");
        String[] insertArr = new String[strArra.length];
        int count = 0;

        for (int i = 0; i < strArra.length; i++) {
            insertArr[i] = strArra[i];
            count++;
        }
        System.out.print("문장의 갯수" + count);

    }

    public void text4(String k) {

        String[] arraSt = k.split(" ");
        String[] insert = new String[arraSt.length];

        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arraSt.length; i++) {
            insert[i] = arraSt[i];

            if (arraSt[i].length() == 2) {
                sb.append("insert ");
            } else {
                sb.append(arraSt[i]).append(" ");
            }
        }
        System.out.print(sb.toString().trim());

    }

    public void text6(String[] ll){
        String[] arra = new String[ll.length];
        int count = 0 ;



        for(int i=0; i<ll.length; i++){
            arra[i] = ll[i];
            count++;
        }
        System.out.println("지금 입력된 문자 배열 길이"+count);

        String k = "";

        for(String insert : arra){
            k += insert;
        }
        System.out.println(k+"문자로 합쳐졌습니다.");
        System.out.print("찾고싶은 알파뱃 개수 :");
        char c = scan.next().charAt(0);
        int count2 = 0 ;
        for(int i=0; i<k.length(); i++){

            if(k.charAt(i)==c){
                count2++;
            }

        }
        System.out.print("찾는 알파뱃 개수");
        System.out.print(count2);
    }


    //main
    public static void main(String[] args) {

        Today25 td = new Today25();

        String[] ll = {"as","as","bb"};
        td.text6(ll);

    }
}
