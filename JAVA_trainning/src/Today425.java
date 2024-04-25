import java.util.Arrays;

public class Today425 {


    //문자열 뒤집기
    public String leng (String k){
        String answer = "" ;

        for(int i=k.length()-1; i>=0; i--){

            answer += k.substring(i , i+1);
        }
        return answer;
    }

    //문자열 뒤집기 StringBuffer
    public String len (String k){

        char[] c = k.toCharArray();

        StringBuffer sb = new StringBuffer(new String(c));

        String answer = sb.reverse().toString();

        return answer;
    }

    //입력한 배열 배열 뒤집기
    public int[] len (int[] k){

        int[] ans = new int[k.length];

        for(int i=0; i<k.length; i++){
            ans[i] = k[k.length-1-i];
        }

        return ans ;
    }

    public static void main(String[] args) {
        Today425 td = new Today425();

        //String k = "asdfwef";
        int[] k = {1,2,3,4,5};
        System.out.println(Arrays.toString(td.len(k)));
    }

}
