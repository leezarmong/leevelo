import java.util.Arrays;

public class Number2 {

    public int[] arra (int[] num){
        // 굳이 len 을 초기화 하지 말고 바로 해도 좋을듯..?
        int[] answer= new int[num.length];
        // 새로운 조건의 배열을 만드려면 항상 또다른 배열을 추가 해줘야 한다.
        //생성은 인자 값 만큼 생성..

        for(int i=0; i<num.length; i++) {

            answer[i] = num[num.length - 1 - i];
            //배열의 원소는 인자값 길이의 마지막 -1 의 원소
        }
        return answer;
    }

    public static void main(String[] args) {
        int[] b = {1,2,5,2};

        Number2 n2 = new Number2();

        System.out.print(Arrays.toString(n2.arra(b)));
    }

}
