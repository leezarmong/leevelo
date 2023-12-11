import java.util.Arrays;
import java.util.Collections;

public class Reverce {

    //문자열 뒤집기.
    public String revece(String str) {
        String result = "";

        for (int i = str.length() - 1; i >= 0; i--) {
            result += str.substring(i, i + 1);
        }

        return result;
    }

    //배열 에서 배열 뒤집기
    public int[] arrrarever(int[] nums) {
        int[] result = {};

        for (int i = nums.length - 1; i >= 0; i--) {
            result[i] = nums[nums.length - 1 - i]; // result = nums 배열의 배열 길이의 마지막 원소 -1  -i
        }

        return result;
    }

    //배열 에서 수 로 뒤집기
    public int numsreve(int[] arra) {
        String answer = "";
        int result = 0;

        for (int i = arra.length - 1; i >= 0; i--) {
            answer += arra[i];
        }

        result = Integer.parseInt(answer);

        return 0;
    }

    //배열 에서 수로.
    public int nums1(int[] arra1) {

        StringBuffer answer = new StringBuffer();

        for (int i = 0; i < arra1.length; i++) {
            answer.append(arra1[i]);
        }

        return Integer.parseInt(answer.toString());
    }

    //입력한 수 배열로 뒤집기
    public int[] arra1(int nums) {
        int[] result = {};

        String answer = Integer.toString(nums);
        result = new int[answer.length()];

        for (int i = 0; i < result.length; i++) {
            result[i] = Integer.parseInt(answer.substring(result.length - 1 - i, result.length - i));

        }

        return result;
    }

    // 입력한 수를 배열로 String
    public int[] arra2(String nums) {
        int[] result = {};

        result = new int[nums.length()];

        for (int i = 0; i < result.length; i++) {
            result[i] = Character.getNumericValue(nums.charAt(i));
        }

        return result;
    }

    //입력한 수 배열로 int
    public int[] arra3(int nums) {
        int[] result = {};
        String answer = Integer.toString(nums);

        result = new int[answer.length()];

        for (int i = 0; i < result.length; i++) {
            result[i] = Character.getNumericValue(answer.charAt(i));

        }

        return result;
    }

    //입력한 수 뒤집기
    public int nums5(int nums) {
        int result = 0;

        while (nums != 0) {
            int digit = nums % 10;

            result = result * 10 + digit;

            nums /= 10;
        }

        return result;
    }

    //입력한 수 오름 차순 내림차순
    public int nums6 (int nums){
        String[] answer = Integer.toString(nums).split("");
        String index ="";

        Arrays.sort(answer, Collections.reverseOrder());

        for(String num : answer){
            index += num;
        }

        int result = Integer.parseInt(index);

        return result;
    }


}


