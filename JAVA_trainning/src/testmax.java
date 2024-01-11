import java.util.Arrays;

public class testmax {


    public int best(int[] arra) {

        int len = arra.length;

        int max1 = 0;
        int max2 = 0;
        int max3 = 0;

        Arrays.sort(arra);

        max1 = arra[arra.length - 1];
        max2 = arra[arra.length - 2];
        max3 = arra[arra.length - 3];

//        int n = 0;
//        for (int i = arra.length - 4; i >= 0; i--) {
//            n = arra[i];
//
//            if (n > max1) {
//                max1 = n;
//                max2 = max1;
//                max3 = max2;
//            } else if (n > max2) {
//                max2 = n;
//                max3 = max2;
//            } else if (n > max3) {
//                max3 = n;
//            }
//        }

        return max1*max2*max3;
    }

    public static void main(String[] args) {
        testmax tm = new testmax();

        int[] b ={1,2,3,4};
        int n = tm.best(b);
        System.out.print(n);
    }
}
