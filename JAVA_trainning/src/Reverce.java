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

        for(int i=0; i<arra1.length; i++){
            answer.append(arra1[i]);
        }

        return Integer.parseInt(answer.toString());
    }


}


