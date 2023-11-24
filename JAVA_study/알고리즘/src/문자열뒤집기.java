import java.util.Arrays;

public class 문자열뒤집기 {

    public String len (String k){
        String result = "";


        for(int i=k.length()-1; i>=0; i--){
            result += k.substring(i, i+1);
        }

        return result;
    }

}
