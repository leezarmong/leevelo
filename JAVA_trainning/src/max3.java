import java.util.Arrays;

public class max3 {


    public int b(int[] nums){


        Arrays.sort(nums);
        int len =nums.length;

        int max1 , max2, max3;
        int n=0;
        max1 = nums[nums.length-1];
        max2 = nums[nums.length-2];
        max3 = nums[nums.length-3];

        for(int i=len-4; i>=0; i--){
            n=nums[i];

            if(n>max1){
                max3 = max2;
                max2 = max1;
                max1 = n;
            }else if(n> max2){
                max3 = max2;
                max2 = n;

            }else if(n > max3){
                max3 = n ;
            }

        }

        return max1*max2*max3;
    }

    public static void main(String[] args) {
        int b[] = {1,2,3,4,5};

        max3 mx = new max3();


        System.out.print(mx.b(b));
    }
}
