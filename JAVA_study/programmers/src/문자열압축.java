import java.util.ArrayList;
import java.util.List;

public class 문자열압축 {

    public int solution(String s) {
        int min = Integer.MAX_VALUE;
        /*다른 가능한 값보다 높은 값으로 설정되는데
         *목록의 모든 값이 Integer.MAX_VALUE 보다 작기 떄문에 항상 min 이 업데이트 됨.
         */
        for (int length = 1; length <= s.length(); length++) {
            // 문자열은 최소 1부터 시작.
            // 문자열 압축 후 가장 짧은 길이 선택 .
            int compressed = compress(s, length);
            if (compressed < min) {
                min = compressed;
            }
        }
        return min;
    }

    //압축한 문자열의 길이 변환
    private int compress(String source, int length) {
        StringBuilder builder = new StringBuilder();

        String last = "";
        int count = 0;
        for (String token : split(source, length)) {
            //문자열 구성

            if (token.equals(last)) {
                count++;
            } else {
                if (count > 1) builder.append(count);
                builder.append(last);
                last = token;
                count = 1;
            }
        }
        if (count > 1) builder.append(count);
        builder.append(last);

        return builder.length();
    }

    // length 길이씩 잘라 리스트에 담아줌
    private List<String> split(String source, int length) {
        List<String> tokens = new ArrayList<>();

        for (int startIndex = 0; startIndex < source.length(); startIndex += length) {
            // 문자열을 startIndex부터 잘라 token 리스트에 추가.

            int endIndex = startIndex + length;
            // Index 의 끝 지점은 시작점에서 의 길이

            if (endIndex > source.length())
                endIndex = source.length();
                // 문자열 위 밖이라면 문자열 끝 까지 정상적으로 잘릴 수 있도록 초기
            tokens.add(source.substring(startIndex,endIndex));
            // list추가
        }

        return tokens;
    }

    public static void main(String[] args) {
        문자열압축 sb = new 문자열압축();

        String tt = "aabbaccc";
        System.out.print(sb.solution(tt));
    }
}
