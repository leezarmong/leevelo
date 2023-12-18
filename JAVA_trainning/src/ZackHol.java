import java.util.Arrays;
import java.util.Scanner;

public class ZackHol {

    public int[][] arra(int[] num) {
        int zzac = 0;
        int hol = 0;

        for (int i = 0; i < num.length; i++) {

            if (num[i] % 2 == 0) {
                zzac++;
            } else {
                hol++;
            }
        }

        int[] zzacArra = new int[zzac];
        int[] holArra = new int[hol];

        int zzacIndex = 0;
        int holIndex = 0;

        for (int i = 0; i < num.length; i++) {
            if (num[i] % 2 == 0) {
                zzacArra[zzacIndex++] = num[i];
            } else
                holArra[holIndex++] = num[i];
        }
        int[][] result = new int[2][];

        result[0] = zzacArra;
        result[1] = holArra;

        return result;
    }

    public int[][] arrs(int num) {
        String len = Integer.toString(num);
        int[] arrra = new int[len.length()];

        int zza = 0;
        int hol = 0;

        for (int i = 0; i < arrra.length; i++) {
            arrra[i] = num;
            if (arrra[i] % 2 == 0) {
                zza++;
            } else
                hol++;
        }

        int[] za = new int[zza];
        int[] ha = new int[hol];
        int zi = 0;
        int hi = 0;

        for (int i = 0; i < arrra.length; i++) {
            if (arrra[i] % 2 == 0) {
                za[zi++] = arrra[i];
            } else
                ha[hi++] = arrra[i];
        }

        int[][] result = new int[2][];
        result[0] = za;
        result[1] = ha;

        return result;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int[] b = new int[4];

        System.out.println("배열에 입력 할 수. 4개 :");
        for (int i = 0; i < b.length; i++) {
            b[i] = scan.nextInt();
        }

        System.out.println(Arrays.toString(b));
         
    }
}
