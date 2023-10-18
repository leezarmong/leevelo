public class holzzac2 {

    public int[][] array(int[] nums) {

        int z = 0;
        int h = 0;

        for (int n : nums) {
            if (n % 2 == 0) {
                z++;
            } else {
                h++;
            }
        }

        int zzac[] = new int[z];
        int hol[] = new int[h];


        int zindex = 0;
        int hindex = 0;


        for (int i = 0; i < nums.length; i++) {
            if (nums[i] % 2 == 0) {
                zzac[zindex++] = i;

            } else {

                hol[hindex++] = i;
            }
        }


        int[][] result = new int[2][];

        result[0] = zzac;
        result[1] = hol;

        return result;

    }

    public static void main(String[] args) {
        int b[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

        holzzac2 hz = new holzzac2();

        int array[][] = hz.array(b);

        for (int n : array[0]) {
            System.out.print(n + " ");
        }
        System.out.println();
        for (int n : array[1]) {
            System.out.print(n + " ");
        }


    }
}
