import java.util.*;
class Solution16 {
    public int[] solution(int n, String[] words) {
        int[] answer = new int[2];

        int gameCount = 1;
        int peopleCount = 0;
        String index = "";
        Map<String, Integer> map = new HashMap<>();

        for(int i = 0; i < words.length; i++){
            String now = words[i];
            peopleCount++;

            if(i > 0){
                //끝말 확인, 이미 존재하는 단어인지 확인
                char first = index.charAt(index.length()-1);
                char last = now.charAt(0);
                if(first != last || map.containsKey(now)){
                                    //지정된 키가 존재하면 true를 반환하고, 그렇지 않으면 false를 반환
                                    //HashMap을 사용하여 이미 나온단어인지 확인
                    answer[0] = peopleCount;
                    answer[1] = gameCount;
                    break;
                }

            }

            map.put(now, 0);
            index = now;
            // 뒷사람이 이어 적은 것을 기준으로 바꿈

            if(peopleCount == n){
                peopleCount = 0;
                gameCount ++;
            }
        }

        return answer;
    }
}