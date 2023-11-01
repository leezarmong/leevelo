import java.util.Arrays;
import java.util.Collections;

public class Numberreve {


    public static long numb(long n){
        long result = 0 ;

        String[] rev = Long.toString(n).split("");

        Arrays.sort(rev, Collections.reverseOrder());
        //내림차순

        String index = "";
        for(String list : rev){
            index += list;
        }

        result = Long.parseLong(index);
        return  result ;
    }

    public static void main(String[] args) {
        long te = 123245;

        System.out.print(numb(te));
    }
}
