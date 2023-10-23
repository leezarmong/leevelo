import java.util.Scanner;

public class Solution {

    public String solution(String my_string) {
        String answer = my_string;
        String index = "";

        for(int i = 0 ;i< answer.length(); i++){
            char c = answer.charAt(i);

            if(Character.isUpperCase(c)){
                index += Character.toLowerCase(c);
            }
            else
                index += Character.toUpperCase(c);
        }


        return index;
    }

    public static void main(String[] args) {
        String k = "feffFFfFfF";

        Solution so = new Solution();
        System.out.print(so.solution(k));
    }


}
