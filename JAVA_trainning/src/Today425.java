import java.util.Arrays;

public class Today425 {


    //문자열 뒤집기
    public String leng(String k) {
        String answer = "";

        for (int i = k.length() - 1; i >= 0; i--) {

            answer += k.substring(i, i + 1);
        }
        return answer;
    }

    //문자열 뒤집기 StringBuffer
    public String len(String k) {

        char[] c = k.toCharArray();

        StringBuffer sb = new StringBuffer(new String(c));

        String answer = sb.reverse().toString();

        return answer;
    }

    //입력한 배열 배열 뒤집기
    public int[] len(int[] k) {

        int[] ans = new int[k.length];

        for (int i = 0; i < k.length; i++) {
            ans[i] = k[k.length - 1 - i];
        }

        return ans;
    }

    //입력한 배열 수 뒤집기
    public int len2(int[] k) {

        int ans = 0;
        String le = "";

        for(int i=k.length-1; i>=0; i--){
            le +=k[i];
        }

        ans = Integer.parseInt(le);
        return ans;
    }
    //입력한 배열 수
    public int len3(int[] k) {

        int ans = 0;
        String le = "";

        for(int i=0; i<k.length; i++){
            le += k[i];
        }

        ans = Integer.parseInt(le);
        return ans;
    }

    //입력한 수 배열로 뒤집기
    public int[]k (int n){
        String str = String.valueOf(n);

        int[] ans = new int[str.length()];

        for(int i=0; i<ans.length; i++){
            ans[i] = Integer.parseInt(str.substring(ans.length-1-i , ans.length-i));
        }
        return ans;
    }

    //입력한 수 배열로 뒤집기
    public int[]k2 (String n){


        int[] ans = new int[n.length()];

        for(int i=0; i<ans.length; i++){
            ans[i] = Integer.parseInt(n.substring(ans.length-1-i , ans.length-i));
        }
        return ans;
    }

    public static void main(String[] args) {
        Today425 td = new Today425();

        int[] k = {1,2,3,4};

        System.out.println(Arrays.toString(td.k2("1234")));
    }

}
