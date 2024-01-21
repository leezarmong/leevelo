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

    // 입력한 수 배열로 뒤집기
    public int[] arra3(int nums) {

        String k = Integer.toString(nums);
        int[] result = new int[k.length()];

        for (int i = 0; i < result.length; i++) {
            result[i] = Integer.parseInt(k.substring(result.length - 1 - i, result.length - i));
        }

        return result;
    }

    //입력한 수를 배열로 String 일 경우
    public int[] arra4 (String nums){

        int[] result = new int[nums.length()];

        for(int i=0; i<result.length; i++){
            //result[i] = Character.getNumericValue(nums.charAt(i));
            result[i] = Integer.parseInt(String.valueOf(nums.charAt(i)));
        }

        return result;
    }

    //입력한 수를 배열로 int 일 경우
    public int[] arra5 (int nums){

        String k=Integer.toString(nums);
        int[] result = new int[k.length()];

        for(int i=0; i<result.length; i++){
            //char c = k.charAt(i);
            //result[i] = Integer.parseInt(String.valueOf(c));
            result[i] =Character.getNumericValue(k.charAt(i));

        }

        return result;
    }

}
