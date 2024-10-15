package Test;

public class Today1016 {



    public int[]arr (int[] nums){


        int len = nums.length;

        if(len >=6){
            int[] result = {-1};

            return result;
        }

        for(int i=0; i<nums.length; i++){

            if(nums[i] >=10){
                int[] result = {-1};
                return result;
            }
        }

        int min ;

        min = nums[0];

        for(int i=0; i<nums.length; i++){
            min = Math.min(nums[i],min);
        }

        int[] result = new int[nums.length-1];
        int index = 0 ;
        for(int i=0; i<nums.length; i++){

            if(nums[i] == min){
                continue;
            }
            result[index++] = nums[i];
        }

        return result;
    }


   public int nums (int num){
        int result = 0 ;

        while(num != 0){
            int digit = num % 10;
            result = result * 10 + digit;
            num/=10;
        }
        return result;
   }
}
