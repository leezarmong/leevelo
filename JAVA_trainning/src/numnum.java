import java.util.Arrays;
import java.util.Scanner;

public class numnum {



    public int nums (int[] arr){
        int result = arr.length ;

        int max1 = 0 ;
        int max2 = 0 ;
        int max3 = 0 ;

        Arrays.sort(arr);

        max1 = arr[result-1];
        max2 = arr[result-2];
        max3 = arr[result-3];

        int index = 0 ;

        for(int i= result-4; i>=0; i--){
        index = arr[i];
            if(index > max1){
                max3 = max2;
                max2 = max1;
                max1 = index;

            }
            else if(index > max2){
                max3 = max2;
                max2 = index;
            }
            else if(index > max3){
                max3 = index;

            }
        }
        return max1*max2*max3;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        numnum nm = new numnum();

        int[] k = {1,2,3,4};
        int resul=nm.nums(k);
        System.out.print(resul);

    }
}
