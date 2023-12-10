import java.util.Arrays;
import java.util.Scanner;

public class JavaTest {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int[] t = {-1, -1, -1, -1};    //  10개 0~9 의 랜덤 값을 삽입 하기위 해 -1 로 초기 화
        int k = (int) (Math.random() * 4); // 배열의 랜덤된 위치 를 만들기 위함
        int rand = (int) (Math.random() * 10);    // 랜덤으로 지정된 위치에 들어갈 0~9 의 값.

        t[k] = rand; // 초기화


        for (int i = 0; i < t.length; i++) { //t의 배열 의 길이 만큼 (4) 돌려준다.
            if(t[i] != -1 || t[i] == k){
                continue;
            }
            else {
                int temp = (int) (Math.random() * 10); // 나머지 인덱스에 들어갈 또다른 값들.
                for (int j = 0; j < i; j++) {  // 나머지 3개의 값을 넣기위해 i 만큼 j 를 돌려 준다.

                    if (temp == t[j] ) {   // 여기서 돌린 temp 의 랜덤 값과 t[]를 j 만큼 돌렸을때 이미 지정된
                        // j[k] 의 값가 같다면 제거 j-- 제거해준다.
                        j--;
                        temp = (int) (Math.random() * 10); // 그리고 또다른 랜덤값을 생성.
                    }
                }
                t[i] = temp;  // 나머지 t[i] 의 원소를 나머지 값들로 채워 준다.
            }
            System.out.println(Arrays.toString(t));
        }

        System.out.println("Test 정답 :");

            int testK = scan.nextInt();

            if (testK == (k + 1)) {
                System.out.println("정답 힙니다.");

            } else {
                System.out.println("틀렸습니다.");


        }
    }
}
