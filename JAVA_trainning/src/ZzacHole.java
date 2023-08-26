public class ZzacHole {


    public int[][] zzacHol(int[] nums){
        int[] evenIndices = new int[nums.length];
        int[] oddIndices = new int[nums.length];
        int z=0;
        int h=0;

        for(int i=0; i<nums.length; i++) {
            if (nums[i] % 2 == 0) {
                evenIndices[z++] = i;
            } else {
                oddIndices[h++] = i;
            }
        }

        int[] zb =new int[z];
        int[] hb =new int[h];

        System.arraycopy(evenIndices, 0, zb, 0, z);
        System.arraycopy(oddIndices, 0, hb, 0, h);

        int[][] result = new int[2][];
        result[0] = zb;
        result[1] = hb;

        return result;
    }

    public static void main(String[] args){
        int[] array = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

        ZzacHole lg = new ZzacHole();

        int[][] result = lg.zzacHol(array);

        System.out.print("Even Indices: ");
        for (int i : result[0]) {
            System.out.print(i + " ");
        }

        System.out.println();

        System.out.print("Odd Indices: ");
        for (int i : result[1]) {
            System.out.print(i + " ");
        }
    }

}
