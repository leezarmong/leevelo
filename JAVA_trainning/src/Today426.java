import java.util.Arrays;
import java.util.Collections;

public class Today426 {

    //문자열 뒤집기
    public String str (String k){
        String answer = "";


        for(int i=k.length()-1; i >=0; i--){
         answer += k.substring(i,i+1);
        }

        return answer;
    }

    //배열 뒤집기
    public int[]arra (int[] b){
        int[]k = new int[b.length];

        for(int i=0; i<b.length; i++){
            k[i] = b[b.length-1-i];
        }
        return k;
    }

    //배열 수 로 뒤집기
    public int num (int[] arra){
        String str = "";
        int result = 0 ;
        for(int i=arra.length-1 ; i>=0; i--){
            str += arra[i];
        }

        result = Integer.parseInt(str);
        return result;
    }

    //수 배열로 뒤집기
    public int[] arra2 (int num){
        String str = String.valueOf(num);

        int[] ar = new int[str.length()];


        for(int i=0; i<ar.length; i++){
        ar[i] = Integer.parseInt(str.substring(ar.length-1-i,ar.length-i));
        }

        return ar;
    }

    //입력한 수 오름차순 으로 바꾸기
    public int num (int k){

        String[] str = Integer.toString(k).split("");

        Arrays.sort(str , Collections.reverseOrder());
        String indexstr = "";
        for(String list : str){
            indexstr += list;
        }

        int numindex = Integer.parseInt(indexstr);

        return numindex;
    }

    public String pNum(String k) {
        String ans = k.replaceAll("[^0-9]", ""); // 숫자가 아닌 문자 제거

        for (int i = 0; i < ans.length() - 4; i++) {
            ans = ans.substring(0, i) + "*" + ans.substring(i + 1);
        }

        return ans;
    }

    public String pNum2(String k){
        String str = k.replaceAll("[^0-9]","");
        int len = str.length();
        String index = "";
        if(len == 11){
            index = str.substring(0,3)+"****"+str.substring(7);
        }


//test
        return index;
    }


    public static void main(String[] args) {
        Today426 td = new Today426();

        String k = "123-4567-6333";

        String result = td.pNum2(k);
        System.out.print(result);
    }
}
