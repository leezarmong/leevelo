import java.util.Stack;

public class CharArray {

    public int solution(String s){
        int result =0;

        char[] arr = s.toCharArray();

        Stack<Character> list = new Stack<>();

        for(int i=0; i<arr.length; i++){
            char c = arr[i];

            if(list.isEmpty()){
                list.push(c);
            }
            else{
               if(list.peek()==c){
                   list.pop();
               }
               else{
                   list.push(c);
               }

            }
        }
        return list.isEmpty() ? 1 : 0;
    }

    public static void main(String[] args) {
        String aa = "ab";

        CharArray ca = new CharArray();

                System.out.print(ca.solution(aa));
    }
}
