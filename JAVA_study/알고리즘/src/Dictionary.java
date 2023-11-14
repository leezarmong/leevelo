import java.util.Arrays;
import java.util.Scanner;

public class Dictionary {
    private static String[] kor = {"사랑","아기","돈","미래","희망"};
    private static String[] eng = {"love","baby","money","future","hope"};


    public static String kor2Eng(String word){
        String result = word;


        for(int i=0; i<kor.length; i++){
            if(result.equals(kor[i])){
            // 입력 된 값이 배열 원소의 위치와 같다면

                return eng[i];
                //입력된 원소 위치 의 영어 단어가 리턴 된다.
            }
        }

        return null;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);



        while(true){
            System.out.println(Arrays.toString(kor)+"찾고싶은 영어/ 그만");
            String k = scan.next();

            if(k.equals("그만")){
                break;
            }

            String result = kor2Eng(k);

            if(result==(null))
                System.out.println(k+"은(는) 저의 사전에 없습니다.");
            else
                System.out.println(k+"은(는) "+result);
        }

    }
}
