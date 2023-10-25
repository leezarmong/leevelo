import java.util.Arrays;
import java.util.Collections;
import java.util.Scanner;

public class Colution8 {
    /*
     * 함수 solution은 정수 n을 매개변수로 입력받습니다.
     * n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요.
     * 예를들어 n이 118372면 873211을 리턴하면 됩니다.
     * */
    public long solution(long n) {
       String[] k = Long.toString(n).split("");
   //     String[] k = String.valueOf(n).split("");
        //long 의 인자값을 String으로 바꿔주면서 String 의 배열이다보니 문자열을 구분할수 있는 split을 사용하여 공백없음을 표기 해준다.

        String index = "";
        // 문자를 담을 String

        Arrays.sort(k, Collections.reverseOrder());
        //내림차순 Collections.reverseOrder() 를 사용 해주어야 된다.

        for (String list : k) {
            index += list;
        }
        long answer = Long.parseLong(index);
        //long 변환
        return answer;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("number:");
        Long k = scan.nextLong();


        Colution8 cl = new Colution8();

        System.out.print(cl.solution(k));
    }


}
