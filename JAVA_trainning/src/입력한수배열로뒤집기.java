import java.util.Arrays;

public class 입력한수배열로뒤집기 {

    public int[]arra (int nums){

        String str = Integer.toString(nums);
        // substring 을 사용하여 마지막 원소부터 그다음 원소까지 담을 예정.

        int[] reuslt = new int[str.length()];

        for(int i=0; i<reuslt.length; i++){
            reuslt[i]= Integer.parseInt(str.substring(reuslt.length-1-i,reuslt.length-i));
            //result의 원소 가 되어야 하니 result[i]
        }

        return reuslt;
    }

    //안뒤집기.
    public int[] arra2 (int nums2){
        String str = Integer.toString(nums2);
        int[] result =new int[str.length()];


        for(int i=0; i< result.length; i++){
            char c = str.charAt(i);
            //result[i] = Character.getNumericValue(str.charAt(i));
            result[i] = Integer.parseInt(String.valueOf(c));
        }

        return result;
    }

    public static void main(String[] args) {
        입력한수배열로뒤집기 ss = new 입력한수배열로뒤집기();

        int k=12345;

        int[] result = ss.arra2(k);

        System.out.print(Arrays.toString(result));
    }
}
