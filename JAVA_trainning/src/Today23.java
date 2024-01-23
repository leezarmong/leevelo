import java.util.Arrays;
import java.util.Scanner;

public class Today23 {
    static Scanner scan = new Scanner(System.in);

    public void text(String k) {

        if (k.isEmpty()) {
            System.out.println('0');
            // 비어있을경우 0 을 출력
        } else {// System.out.println(k.split(" ").length);
            String[] str = k.split(" ");
            System.out.println(str.length);

            String[] strArray = new String[str.length];

            for(int i=0; i<str.length; i++){
                strArray[i] = str[i];
            }


            System.out.print("찾고 있는 단어의 위치를 알고 싶으세요? 단어를 입력하세요: ");
            String search = scan.next();

            int position = -1; // 단어가 찾아지지 않은 경우의 기본 위치

            for (int i = 0; i < strArray.length; i++) {
                if (strArray[i].equals(search)) {
                    position = i + 1; // 위치는 일반적으로 1부터 시작합니다
                    break; // 단어를 찾으면 검색 중지
                }
            }

            if (position != -1) {
                System.out.println("단어 '" + search + "'의 위치는: " + position);
            } else {
                System.out.println("단어 '" + search + "'을(를) 찾을 수 없습니다.");
            }

            System.out.println(Arrays.toString(strArray));
//            for(String insertst : strArray){
//                System.out.println(insertst);
//            }
        }
        // 띄어쓰기를 기준한 길이를 출력해준다.
        // 공백을 기준으로 했으니 단어의 갯수가 된다.

    }

    public void text2(String[] k){

        String[] arra = new String[k.length];

        for(int i=0; i<k.length; i++){
            arra[i] = k[i];
        }

        System.out.print("찾고싶은 단어");
        String src = scan.next();

        int isnert = -1;

        for(int i=0; i<arra.length; i++){
            if(arra[i].equals(src)){
                isnert = i+1;
                break;
            }
        }

        if(isnert != -1){
            System.out.print(src+"위치는"+isnert);
        }
        else
            System.out.print(src+"는(은) 없습니다.");

    }

    public static void main(String[] args) {
        Today23 td23 = new Today23();



        System.out.println("문자를 입력해주세요.");
        String k = scan.nextLine().trim();
        // 문자열 좌우 의 공백을 제거한다.

        td23.text(k);


        String[] kk = {"show","me"};
        td23.text2(kk);
    }
}
