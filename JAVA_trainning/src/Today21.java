public class Today21 {


    // 배열 뒤집기.
    public int[] arra(int[] nums) {

        int[] result = new int[nums.length];

        for (int i = 0; i < nums.length; i++) {
            result[i] = nums[nums.length - 1 - i];
        }

        return new int[0];
    }

    // 배열 수로 뒤집기
    public int arra2(int[] nums) {

        int result = 0;
        String k = "";

        for (int i = nums.length - 1; i >= 0; i--) {
            k += nums[i];
        }

        result = Integer.parseInt(k);

        return result;
    }

}
