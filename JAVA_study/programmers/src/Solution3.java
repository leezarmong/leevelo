public class Solution3 {


    public double solution(int[] arr) {
        double answer =0;
        int sum = 0;


        for(int i = 0; i<arr.length; i++){
                        //배열의 길이
            sum += arr[i];
            //배열 을 전부 더함.
        }
        answer = (double) sum/arr.length;
                //형 변환   /합한수 를 길이 만큼 나눠 주면 평균이 나오게 된다.

        return answer;
    }

    public static void main(String[] args) {

    }


}
