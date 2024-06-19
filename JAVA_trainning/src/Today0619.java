import java.util.ArrayList;
import java.util.HashSet;
import java.util.Stack;

public class Today0619 {


    //문자열 뒤집기
    public String str(String len) {

        String result = "";

        for (int i = len.length() - 1; i >= 0; i--) {

            result += len.charAt(i);
        }

        return result;
    }


    //배열 > 배열 뒤집기
    public int[] arra(int[] nums) {

        int[] reuslt = new int[nums.length];

        for (int i = 0; i < reuslt.length; i++) {

            reuslt[i] = nums[nums.length - 1 - i];
        }

        return reuslt;
    }

    //배열 > 수 뒤집기
    public int nums(int[] arra) {

        String str = "";

        for (int i = arra.length - 1; i >= 0; i--) {

            str += arra[i];
        }
        int result = 0;
        result = Integer.parseInt(str);

        return result;
    }

    //입력한  > 배열
    public int[] arra2(int nums) {

        String str = String.valueOf(nums);
        int[] result = new int[str.length()];

        for (int i = 0; i < str.length(); i++) {

            char c = str.charAt(i);
            result[i] = Integer.parseInt(String.valueOf(c));
        }

        return result;
    }

    //짝지어 삭제하기
    public int test(String str) {
        Stack<Character> ci = new Stack<>();
        char[] carra = str.toCharArray();
        // char 을 배열 형대로 바꾸는 이유는 for 문에서 배열의 길이 만큼 돌리기 위해서 이다.

        for (int i = 0; i < carra.length; i++) {
            char c = carra[i];
            // 배열의 길이 만큼 for 문을 돌렸으니 비교하기위해 char 형태로 초기화 해준다.

            if (ci.empty()) ci.push(c);
            else {

                if (ci.peek() == c) {
                    ci.pop();
                } else {
                    ci.push(c);
                }
            }


        }
        return ci.empty() ? 1 : 0;
    }


    //hash set 이용 한 중복된 수 제거

    public int[]hash (int[] arra){

        HashSet<Integer> nu = new HashSet<>();

        for(int i=0; i<arra.length; i++){
            nu.add(arra[i]);

        }

        int[] result = new int[nu.size()];
        int index = 0 ;

        for(int nums : nu){
            result[index ++] =nums;
        }

        return result;
    }

    public int[]list (int[]nums){

        ArrayList<Integer>si = new ArrayList<>();
        int num = 0 ;
        for(int i=0; i<nums.length; i++){

            if(nums[i] != num){
                si.add(nums[i]);
                num = nums[i];
            }
        }
        int[] result = new int[si.size()];
        int index = 0 ;
        for(int l : si){
            result[index ++] = l;
        }

        return result;
    }

}
