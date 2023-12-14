import java.util.Arrays;
import java.util.Scanner;

public class ZackHol {

    public int[][] arra (int[] num){
        int zzac=0;
        int hol=0;

        for(int i=0; i<num.length; i++){

            if(num[i]%2==0){
                zzac ++;
            }
            else{
                hol ++;
            }
        }

        int[] zzacArra = new int[zzac];
        int[] holArra = new int[hol];

        int zzacIndex = 0 ;
        int holIndex = 0 ;

        for(int i=0; i<num.length; i++){
            if(num[i]%2 ==0){
                zzacArra[zzacIndex ++] = num[i];
            }
            else
                holArra[holIndex++] = num[i];
        }
        int[][] result = new int[2][];

        result[0] = zzacArra;
        result[1] = holArra;


        return result;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int[] b = new int[4];

        System.out.println("배열에 입력 할 수. 4개 :");
        for(int i=0; i<b.length; i++){
            b[i]=scan.nextInt();
        }

        System.out.println(Arrays.toString(b));


    }
}
