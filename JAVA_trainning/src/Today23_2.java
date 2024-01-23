import java.util.Arrays;
import java.util.Scanner;

public class Today23_2 {
    static Scanner scan = new Scanner(System.in);

    //알파뱃 개수
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
        System.out.print("알파뱃개수 "+count+"\n");
        String result = sb.toString();
        System.out.print(result);

    }

    //찾고싶은 알파뱃 개수
    public void text2(String k){

        int count =0;
        System.out.print("찾고싶은 알파뱃 개수");
        char c = scan.next().charAt(0);

        for(int i=0; i<k.length(); i ++){
            if(k.charAt(i)== c){
                count++;
            }
        }

        System.out.print(c+"의 갯수 는 "+count);

    }

    //문장 개수 찾고싶은 단어 위치
    public void text3(String k){

        String[] len = k.split(" ");
        System.out.println("문장 의 개수 는 "+len.length+" 입니다.");

        String[] strArray = new String[len.length];

        StringBuilder sb = new StringBuilder();
        for(int i=0; i<len.length; i++){
            strArray[i] = len[i];

            if(len[i].length() == 3){
                sb.append(" test hi ");
            }
            else{
                sb.append(len[i]).append(" ");
            }

        }



        System.out.println("배열에 추가 되었습니다. "+Arrays.toString(strArray));
        System.out.println("Modified String: " + sb.toString().trim());

        System.out.print("찾고싶은 단어의 위치 는? :");
        String search = scan.next();

        int insert = 0 ;
        for(int i=0; i<strArray.length;i++){

            if(strArray[i].equals(search)){
                insert = i+1;
                break;
            }
        }
        if(insert!= 0) {
            System.out.print(search + " 의 위치는 " + insert + " 입니다.");
        }
        else {
            System.out.print(search+" 는 없습니다.");
        }

    }

    public void text4(){

        StringBuilder sb = new StringBuilder();
        String k = "test";
        sb.insert(0,k);
        sb.append(" test");
        System.out.print(sb+" gg");

    }

    public static void main(String[] args){

        Today23_2 td = new Today23_2();

        System.out.print("입력 하고싶은 단어");
        String k = scan.nextLine();

        System.out.print("1.알파뱃 개수 / 2.찾고싶은 알파뱃 개수 / 3.문장 갯수 또는 찾고싶은 위치 / 4.종료");
        int n = scan.nextInt();

        switch (n){
            case 1:
                td.text(k);
                break;
            case 2:
                td.text2(k);
                break;
            case 3:
                td.text3(k);
                break;
            case 4:
                System.exit(0);
                break;
            case 5:
                td.text4();
                break;


        }




    }

}
