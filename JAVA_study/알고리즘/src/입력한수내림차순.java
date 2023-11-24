import java.util.Arrays;
import java.util.Collections;

public class 입력한수내림차순 {

    public int num (int k){
        int result =0;

        String[] strarr = Integer.toString(k).split("");
        Arrays.sort(strarr, Collections.reverseOrder());

        String str = "";
        for(String index : strarr){
            str += index;
        }
        result = Integer.parseInt(str);

        return result;
    }

    public static void main(String[] args) {
        입력한수내림차순 수 = new 입력한수내림차순();

        int k = 582398;
        int result = 수.num(k);
        System.out.print(result);
    }
}
