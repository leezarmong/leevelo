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

            System.out.print("혹시 찾으시는 단어의 위치 알고싶으신가요?");
            String search = scan.next();

            int position = -1; // Default position if the word is not found

            for (int i = 0; i < strArray.length; i++) {
                if (strArray[i].equals(search)) {
                    position = i + 1; // Positions are usually 1-indexed
                    break; // Stop searching once the word is found
                }
            }

            if (position != -1) {
                System.out.println("The word '" + search + "' is at position: " + position);
            } else {
                System.out.println("The word '" + search + "' was not found.");
            }

            System.out.println(Arrays.toString(strArray));
//            for(String insertst : strArray){
//                System.out.println(insertst);
//            }
        }
        // 띄어쓰기를 기준한 길이를 출력해준다.
        // 공백을 기준으로 했으니 단어의 갯수가 된다.

    }

    public static void main(String[] args) {
        Today23 td23 = new Today23();

        System.out.println("문자를 입력해주세요.");
        String k = scan.nextLine().trim();
        // 문자열 좌우 의 공백을 제거한다.

        td23.text(k);
    }
}
