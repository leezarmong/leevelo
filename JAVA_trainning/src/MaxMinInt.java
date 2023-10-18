public class MaxMinInt {

    public int[] b(int[] nums){
        int[] result=nums;

        int max = 0;
        int min = 0;
        max = min = result[0];

        for(int i = 0 ; i<result.length; i++){
            max = Math.max(max , result[i]);
            min = Math.min(min , result[i]);

        }
        int[] k = new int[2];

        k[0]=max;
        k[1]=min;

        return k;
    }

    public static void main(String[] args) {
        int[] k = {1,2,3,4,5,6};

        MaxMinInt mxi = new MaxMinInt();
        int[] result = mxi.b(k);


            System.out.print("최대"+ result[0]);
            System.out.println();
        System.out.print("최소"+ result[1]);

    }
}
