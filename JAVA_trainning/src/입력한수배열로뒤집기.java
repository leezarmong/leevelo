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

    public int[]arra4 (String nums){
        int[] result =new int[nums.length()];

        for(int i=0; i<nums.length(); i++){
          result[i] = Integer.parseInt(nums.substring(nums.length()-1-i , nums.length()-i));
        }
        return result;
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

    public int[] arra3 (String nums){
        int[] reulst=new int [nums.length()];

        for(int i=0; i<nums.length(); i++){
            char c = nums.charAt(i);
            reulst[i] = Integer.parseInt(String.valueOf(c));
        }

        return reulst;
    }

    public static void main(String[] args) {
        입력한수배열로뒤집기 ss = new 입력한수배열로뒤집기();

        int k=12345;
        String kk = "12345";

        int[] result = ss.arra4(kk);

        System.out.print(Arrays.toString(result));
    }
}
