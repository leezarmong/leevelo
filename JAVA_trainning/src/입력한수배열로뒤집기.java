import java.util.Arrays;

public class 입력한수배열로뒤집기 {

    public int[]arra(int nums){
        String str = Integer.toString(nums);
        int[] result =new int[str.length()];

        for(int i=0; i<result.length; i++){
            result[i]= Integer.parseInt(str.substring(result.length-1-i,result.length-i));
        }
        return result;
    }

    public int[]arra2 (String nums){
        int[] result =new int[nums.length()];

        for(int i=0; i<result.length; i++){
          result[i] = Integer.parseInt(nums.substring(nums.length()-1-i , nums.length()-i));
        }
        return result;
    }

    //안뒤집기.
   public int[] arra3 (int nums){
        String str = Integer.toString(nums);
        int[] result =new int[str.length()];

        for(int i=0; i<result.length; i++){
            result[i] = Character.getNumericValue(str.charAt(i));
        }

        return  result;
   }

    public int[] arra4 (String nums){
       int[] result = new int[nums.length()];

       for(int i=0; i<result.length; i++){
           char c = nums.charAt(i);

           result[i] = Integer.parseInt(String.valueOf(c));
       }

       return result;
    }

    public static void main(String[] args) {
        입력한수배열로뒤집기 ss = new 입력한수배열로뒤집기();

        int k=12345;
        String kk = "12345";

        int[] result = ss.arra4(kk);

        System.out.print(Arrays.toString(result));
    }
}
