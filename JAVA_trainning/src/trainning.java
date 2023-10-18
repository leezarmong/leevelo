import java.text.DecimalFormat;
import java.util.Scanner;

public class trainning {

    public int[][] array (int[]nums){


        int zcount = 0 ;
        int hcount = 0 ;

        for(int i = 0 ;i<nums.length; i++){
            if(nums[i]%2==0){
                zcount++;
            }
            else{
                hcount++;
            }
        }

        int zzac[] = new int[zcount];
        int hol[] = new int[hcount];
        int zindex = 0 ;
        int hindex = 0 ;

        for(int i = 0 ;i<nums.length; i++){

            if(nums[i]%2==0){
                zzac[zindex++]= nums[i];
            }
            else{
                hol[hindex++]=nums[i];
            }
        }

        int[][] result = new int[2][];

        result[0]=zzac;
        result[1]=hol;

        return result;
    }

    public static void main(String[] args) {

        int[] b = {1,2,3,4,5,6};

        trainning tr = new trainning();

        int[][] result = tr.array(b);

        System.out.print("짝수 :");
        for(int n : result[0]){
            System.out.print(n+" ");
        }
        System.out.println();

        System.out.print("홀수 :");
        for(int n : result[1]){
            System.out.print(n+" ");
        }

    }
}
