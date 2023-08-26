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
        // System.arraycopy = (src , sercPos , dest , destPos , length)

        /*
        *  Object src : 복사하고자 하는 소스
        *
        *  int srcPos : 위의 원본 소스에서 어느 부분부터 읽어올지 위치를 정해준다.
        *
        * Object dest : 복사할 소스 , 복사하려는 대상
        *
        * int destPos : 위의 복사본에서 자료를 받을때 , 어느 부분부터 쓸 것인지 시작 위치를 정해준다.
        *
        * int length : 원본에서 복사본으로 데이터를 읽어서 쓸 데이터의 길이.
        *
        *
        *
        * // 일반적인 for 문을 통한 출력
        * // Manual copying of elements from evenIndices to zb
        for (int i = 0; i < z; i++) {
            zb[i] = evenIndices[i];
        }

        // Manual copying of elements from oddIndices to hb
        for (int i = 0; i < h; i++) {
            hb[i] = oddIndices[i];
        }
        *
        * */


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
