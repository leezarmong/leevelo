public class Solution10 {
/*

문제 설명
단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요.
단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.

*/


    public String solution(String s) {
        String answer = "";
        int len = s.length();
        if(len %2 ==0){
            int middle = len/2;
            return s.substring(middle-1 , middle+1);
        }
        else{
            int middle = len/2;
            return String.valueOf(s.charAt(middle));
                    // char 에선 valueOf 사용 해보자..
        }
    }
}
