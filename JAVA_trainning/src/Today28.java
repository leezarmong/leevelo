import java.util.Scanner;

public class Today28 {

    // 문자 int 변경 후 최대 최소 구하기.
    public int[] arra(String k) {
        String[] insertk = k.split(" ");

        // 최대 최소 초기화.
        int max = 0;
        int min = 0;

        max = min = Integer.parseInt(insertk[0]);

        for (int i = 0; i < insertk.length; i++) {

            max = Math.max(max, Integer.parseInt(insertk[i]));
            min = Math.min(min, Integer.parseInt(insertk[i]));

        }
        //최대 최소 배열 .
        int[] result = new int[2];
        result[0] = max;
        result[1] = min;

        return result;
    }

    // main
    public static void main(String[] args) {
        Today28 td = new Today28(); // 인스턴스
        Scanner scan = new Scanner(System.in);  // scan 인스턴스

        System.out.println("숫자 입력해주세요 띄어 쓰기로 구분 해주세요.");
        String k = scan.nextLine();

        int[] result = td.arra(k);

            System.out.println("최대 값 은 :" + result[0]);
            System.out.println("최소 값 은 :" + result[1]);

    }
}
