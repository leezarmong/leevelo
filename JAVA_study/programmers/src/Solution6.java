public class Solution6 {

/*
* 자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요. 예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.
* */

    public int[] solution(long n) {
        String s = String.valueOf(n);
        // long(자연수)를 String 으로 valueOf 를 사용 하여 바꾸준다.

    int[] answer= new int[s.length()];
    // 배열을 k 의 길이 만큼 생성후

    for(int i = 0 ;i<answer.length; i++){

        answer[i] = Integer.parseInt(s.substring(answer.length-1-i, answer.length-i));
        //배열 의 원소는 Integer.parseInt(String ->Integer) 배열 길이 의 마지막 첫번째 원소와 마지막 것 까지 substring
    }

        return answer;
    }
}
