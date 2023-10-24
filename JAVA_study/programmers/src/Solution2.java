public class Solution2 {

public String Solution2(String num) {
        String ans = "";

        for(int i=0; i<num.length()-4; i++){
            // 뒤에서 4번 까지 반복

        ans+="*";
        //뒤에서 4번 까지 반복한 횟수 만큼 * 생성

        }
        ans+=num.substring(num.length()-4);
        //생성된 ans에 substring으로 뒤에서 4번째 까지

        return ans;
        }

    public static void main(String[] args) {

    }
}
