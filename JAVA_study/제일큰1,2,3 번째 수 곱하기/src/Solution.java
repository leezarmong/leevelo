import java.util.Arrays;

public class Solution {

    public int nums(int[] array){

        Arrays.sort(array);
        // 매게변수로 들어온 배열을 오름차순으로 설정

        int len = array.length;
        // 배열의 길이 를 len 으로 초기화.

        int max1 = array[len-1]; // 뒤에서 첫번째 값
        int max2 = array[len-2]; // 뒤에서 두번째 값
        int max3 = array[len-3]; // 뒤에서 세번째 값

        for(int i = len-4; i>= 0; i--){
            // 후 나머지 부분 순환.

            int num = array[i];

            if(num > max1){
                max3 = max2;
                max2 = max1;
                max1 = num;
            }

            else if (num > max2){
                max3 = max2;
                max2 = num;
            }
            else if (num > max3){
                max3 = num;
            }
        }

        return max1* max2* max3;
    }

    public static void main(String[] args) {
        Solution so = new Solution();

        int[] b = {1,2,3};

        int array = so.nums(b);

        System.out.print(array);

    }
}
