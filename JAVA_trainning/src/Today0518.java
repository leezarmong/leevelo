import java.util.Arrays;

public class Today0518 {



    // 1. 배열 -> 배열 뒤집기
    public int[]arra (int[]insert){

        int[] result = new int[insert.length];

        for(int i=0; i<insert.length; i++){
            result[i] = insert[insert.length-1-i];
        }

        return result;
    }


    // 2. 배열 -> 수로 뒤집기
    public int nums (int[] arra){

        int result;

        String str = "";

        for(int i=arra.length-1; i>=0; i--){
            str += arra[i];
        }
        result = Integer.parseInt(str);

        return result ;
    }

    // 3. 수 -> 배열로 뒤집기
    public int[] arra2 (int nums){


        String str = String.valueOf(nums);
        int[] result = new int[str.length()];

        for(int i=0; i<result.length; i++){
            result[i] = Integer.parseInt(str.substring(result.length-1-i,result.length-i));
        }

        return  result;
    }

    public static void main(String[] args) {

        Today0518 td = new Today0518();
//        int[] arra = {1,2,3,4};
        int k = 12345;

       System.out.print(Arrays.toString(td.arra2(k)));




    }
}
