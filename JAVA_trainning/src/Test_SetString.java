import java.util.Arrays;
import java.util.HashSet;

public class Test_SetString {


    public String[] teset(String len){
        String[] result = len.split(" ");

        HashSet<String>setlen = new HashSet<>();

          /*for(int i = 0 ; i<result.length; i++){
              setlen.add(result[i]);
          }*/

        //foreach
        for(String str : result){
            setlen.add(str);
        }

        String[] re = new String[setlen.size()];

        int index = 0 ;

        for(String str : setlen){
            re[index++] = str;
        }
        return  re;
    }
    public static void main(String[] args){
        Test_SetString tss = new Test_SetString();

        String k = "a a s d f e f";
        String[] result = tss.teset(k);

        System.out.print(Arrays.toString(result));

        for(String str : result){
            System.out.print(str+" ");
        }
    }
}
