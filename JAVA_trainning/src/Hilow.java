import java.util.Scanner;

public class Hilow {

    public int[] arr(int[] nums){
        int[] resul = {};

        int max = 0 ;
        int min = 0 ;

        max = min = nums[0];

        for(int i = 0 ;i<nums.length; i++){
            max = Math.max(max,nums[i]);
            min = Math.min(min,nums[i]);

        }

        resul= new int[2];

        resul[0]=max;
        resul[1]=min;

        return  resul;
    }

    public static void main(String[] args) {
        Scanner scan= new Scanner(System.in);

        Hilow hi = new Hilow();
        int[] b = {1,2,3,4,5};
        int[] resu = hi.arr(b);

        System.out.print(resu[0]);
        System.out.print(resu[1]);
    }
}
