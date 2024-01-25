import java.util.Scanner;

public class Today25 {
    static Scanner scan = new Scanner(System.in);

    //알파벳 카운팅
    public void text(String k){

        int count = 0 ;

        StringBuilder sb = new StringBuilder();
        for(int i=k.length()-1; i>=0; i--){

            sb.insert(0,k.charAt(i));
            count++;

            if(count%1==0 && i>0){
                sb.insert(0,",");
            }
        }
        System.out.println("알파벳 개수 "+count);
        System.out.print(sb.toString());
    }
    //알파벳 카운팅 배열일 경우 for each 사용.
    public void text2(String[] kb){

        String k ="";

        for(String insert : kb){
            k += insert;
        }
        int count = 0 ;

        StringBuilder sb = new StringBuilder();
        for(int i=k.length()-1; i>=0; i--){

            sb.insert(0,k.charAt(i));
            count++;

            if(count%1==0 && i>0){
                sb.insert(0,",");
            }
        }
        System.out.println("알파벳 개수 "+count);
        System.out.print(sb.toString());
    }

    public static void main(String[] args){

        Today25 td = new Today25();
        String k = "asdf";
        td.text(k);
    }
}
