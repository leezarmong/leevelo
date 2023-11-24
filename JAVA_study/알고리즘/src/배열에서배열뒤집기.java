public class 배열에서배열뒤집기 {

    public int[] arra (int[] nums){
        int[] result = new int[nums.length];

        for(int i=0; i<nums.length; i++){
            result[i] = nums[nums.length-1-i];
        }

        return result;
    }
}
