import java.util.Scanner;

public class Comma {

    public static boolean exception(String nums) { // 범위 에 벗어 나지 않도록 하기.

        for (char c : nums.toCharArray()) {
            if (c < '0' && c > '9') {
                return false;
            }
        }
        return true;
    }

    public String comma(String nums) {

        int len = nums.length();
        int count = 0;

        StringBuffer answer = new StringBuffer();

        for (int i = len - 1; i >= 0; i--) {
            answer.insert(0, nums.charAt(i));
            count++;

            if (count % 3 == 0 && i > 0) {
                answer.insert(0, ",");
            }
        }
        answer.append(" 원");
        return answer.toString();
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        Comma cm = new Comma();

        System.out.println("금액을 입력해주세요.");
        String nums = scan.next();

        if (!exception(nums)) {
            System.out.println("범위를 벗어 났습니다.");
            return;
        }
        System.out.println(cm.comma(nums));

    }
}
