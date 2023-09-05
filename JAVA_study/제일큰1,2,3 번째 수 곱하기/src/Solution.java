import java.util.Arrays;

public class Solution {

    public int nums(int[] array){

        Arrays.sort(array);

        int len = array.length;


        int max1 = array[len-1];
        int max2 = array[len-2];
        int max3 = array[len-3];

        for(int i = len-4; i>= 0; i--){
            int num = array[i];

            if(num > max1){
                max3 = max2;
                max2 = max1;
                max1 = num;
            }

            else if (num > max2){
                max3 = max2;
                max2 = num;
            }
            else if (num > max3){
                max3 = num;
            }
        }

        return max1* max2* max3;
    }

    public static void main(String[] args) {
        Solution so = new Solution();

        int[] b = {1,2,3};

        int array = so.nums(b);

        System.out.print(array);

    }
}
