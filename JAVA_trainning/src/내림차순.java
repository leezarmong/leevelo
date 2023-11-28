import java.beans.PropertyEditorSupport;
import java.util.Arrays;
import java.util.Collections;

public class 내림차순 {

    public int arra (int nums){
        String result="";

        int answer =0;
        String[] arras = Integer.toString(nums).split("");

        Arrays.sort(arras , Collections.reverseOrder());

        for(String k : arras){
            result += k;
        }

        answer = Integer.parseInt(result);
        return answer;
    }

    public int arra2 (int nums){


        int answer =0;
        String[] arras = Integer.toString(nums).split("");

        Arrays.sort(arras);

        String result ="";
        for(String k : arras){
            result += k;
        }
        StringBuffer sb = new StringBuffer(result.toString());
        sb.reverse();


        answer = Integer.parseInt(sb.toString());
        return answer;
    }

    public static void main(String[] args) {
        int k = 16367;

        내림차순 sk = new 내림차순();
        System.out.print(sk.arra2(k));
    }
}
