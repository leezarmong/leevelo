import java.util.Arrays;
import java.util.Scanner;

public class Today24 {
    static Scanner scan = new Scanner(System.in);

    public void text(String k) {

        int count = 0 ;

        StringBuilder sb = new StringBuilder();

        for(int i=k.length()-1; i>=0; i--){
            sb.insert(0, k.charAt(i));
            count++;
            if(count%1==0 && i>0){
                sb.insert(0,",");
            }
        }

        String result =sb.toString();

        System.out.print("문자의 개수 "+count+"\n");
        System.out.print(result);

    }

    public void text2(String k ){

        String[] arra = k.split(" ");
        System.out.print("문장의 개수 는 "+arra.length+" 개 입니다.");
        String[] insertArra = new String[arra.length];

        for(int i=0; i<arra.length; i++){
            insertArra[i] = arra[i];
        }
        System.out.print(Arrays.toString(insertArra));

    }

    public void text3(String k ){
        String[] arra = k .split(" ");

        String[] insertar = new String[arra.length];

        StringBuilder sb = new StringBuilder();
        for(int i=0; i<arra.length; i++){
            insertar[i]=arra[i];
            if(arra[i].length()==3){

                sb.append(" insert hi ");
            }
            else {
                sb.append(arra[i]).append(" ");
            }
        }
        String result = sb.toString();
        System.out.print(result);
    }


    public void text4(String k){

        String[] arra = k.split(" ");
        String[] arraStr = new String[arra.length];
        int insert = 0 ;


        System.out.print("찾고싶은 단어 의 위치는? : ");
        String search = scan.next();

        for(int i=0; i<arra.length; i++){
            arraStr[i] = arra[i];

            if(arraStr[i].equals(search)){
                insert = i+1;
                break;
            }
        }

        if(insert != 0){
            System.out.print(search+" 는 "+insert+" 번 째 에 있습니다.");
        }
        else{
            System.out.print(search+" 는 없습니다.");
        }



    }

    public static void main(String[] args) {
        System.out.println("문자 입력해 주세요");
        String k = scan. nextLine();
        Today24 td = new Today24();

        td.text4(k);
    }
}
