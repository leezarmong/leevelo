public class Today15 {

    public int[][] arra(int[] nums) {

        int len = nums.length;

        int zcount = 0;
        int hcount = 0;

        for (int i = 0; i < len; i++) {
            if (i % 2 == 0) {
                zcount++;
            } else {
                hcount++;
            }
        }

        int[] zarra = new int[zcount];
        int[] harra = new int[hcount];
        int zindex = 0;
        int hindex = 0;

        for (int i = 0; i < nums.length; i++) {
            if (nums[i] % 2 == 0) {
                zarra[zindex++] = nums[i];
            } else {
                harra[hindex++] = nums[i];
            }
        }

        int[][] result = new int[2][];

        result[0] = zarra;
        result[1] = harra;

        return result;
    }

    public static void main(String[] args) {
        int[] b = {1, 2, 3, 4, 5, 6};

        Today15 tr = new Today15();

        int[][] result = tr.arra(b);

        System.out.print("짝수 :");
        for (int n : result[0]) {
            System.out.print(n + " ");
        }
        System.out.println();

        System.out.print("홀수 :");
        for (int n : result[1]) {
            System.out.print(n + " ");
        }
    }

}
