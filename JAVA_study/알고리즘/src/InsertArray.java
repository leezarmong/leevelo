import java.util.Arrays;

public class InsertArray {

    //String 일 경우
    public int[] arr(String nums) {
        int[] re = new int[nums.length()];

        for (int i = 0; i < nums.length(); i++) {
            re[i] = Character.getNumericValue(nums.charAt(i));
                            // 숫자 형태의 char 형을 int 형으로 변환 할때 사용.
        }

        return re;
    }

    //int 일 경우
    public int[] arr(int nums) {

        String[] result = Integer.toString(nums).split("");
        int[] re = new int[result.length];

        for (int i = 0; i < result.length; i++) {
            re[i] = Integer.parseInt(result[i]);
        }
        return re;
    }

    public static void main(String[] args) {
        int k = 1254367;

        InsertArray in = new InsertArray();
        int[] resultArray = in.arr(k);


        for (int i = 0; i < resultArray.length; i++) {
            System.out.print(resultArray[i] + " ");
        }
        System.out.print(Arrays.toString(resultArray));
    }
}
