import java.util.Arrays;
import java.util.Collections;

public class Solution12 {
/*
* 문자열 s에 나타나는 문자를 큰것부터 작은 순으로 정렬해 새로운 문자열을 리턴하는 함수, solution을 완성해주세요.
s는 영문 대소문자로만 구성되어 있으며, 대문자는 소문자보다 작은 것으로 간주합니다.
* */

    public static String solution(String s) {
        String answer = "";

        char[]c = s.toCharArray();
        Arrays.sort(c);

        StringBuffer sb = new StringBuffer(new String(c));
        answer =sb.reverse().toString();
        return answer;
    }

    public static void main(String[] args) {
        String k = "Zbcdefg";
        System.out.print(solution(k));
    }
}
