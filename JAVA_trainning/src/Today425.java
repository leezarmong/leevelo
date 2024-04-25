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

        for (int i = k.length - 1; i >= 0; i--) {
            le += k[i];
        }

        ans = Integer.parseInt(le);
        return ans;
    }

    //입력한 배열 수
    public int len3(int[] k) {

        int ans = 0;
        String le = "";

        for (int i = 0; i < k.length; i++) {
            le += k[i];
        }

        ans = Integer.parseInt(le);
        return ans;
    }

    //입력한 수 배열로 뒤집기
    public int[] k(int n) {
        String str = String.valueOf(n);

        int[] ans = new int[str.length()];

        for (int i = 0; i < ans.length; i++) {
            ans[i] = Integer.parseInt(str.substring(ans.length - 1 - i, ans.length - i));
        }
        return ans;
    }

    //입력한 수 배열로 뒤집기
    public int[] k2(String n) {


        int[] ans = new int[n.length()];

        for (int i = 0; i < ans.length; i++) {
            ans[i] = Integer.parseInt(n.substring(ans.length - 1 - i, ans.length - i));
        }
        return ans;
    }

    //입력한 수 배열
    public int[] kkk(int kk) {
        String str = String.valueOf(kk);
        int[] ans = new int[str.length()];
        char c;

        for (int i = 0; i < ans.length; i++) {
            c = str.charAt(i);

            ans[i] = Integer.parseInt(String.valueOf(c));

        }
        return ans;
    }

    public int[][] zzachol(int[] k) {

        int zzacount = 0 ;
        int holcount = 0 ;

        for(int i=0; i<k.length; i++){
            if(k[i]%2==0){
                zzacount++;
            }
            else{
                holcount++;
            }
        }
        int[] zzac = new int[zzacount];
        int[] hol = new int[holcount];
        int zzacindex = 0 ;
        int holindex = 0 ;

        for(int i=0; i<k.length; i++){
            if(k[i]%2 ==0){
                zzac[zzacindex++] = k[i];
            }
            else {
                hol[holindex++] = k[i];
            }
        }

        int[][] ans = new int[2][];
        ans[0] = zzac;
        ans[1] = hol;
        return ans;
    }


    public int[][] zzachol2(int n) {

        String str = String.valueOf(n);
        int[] k = new int[str.length()];
        char c;
        for(int i=0; i<k.length; i++){
            c = str.charAt(i);
           k[i] = Integer.parseInt(String.valueOf(c));
        }


        int zzacount = 0 ;
        int holcount = 0 ;

        for(int i=0; i<k.length; i++){
            if(k[i]%2==0){
                zzacount++;
            }
            else{
                holcount++;
            }
        }
        int[] zzac = new int[zzacount];
        int[] hol = new int[holcount];
        int zzacindex = 0 ;
        int holindex = 0 ;

        for(int i=0; i<k.length; i++){
            if(k[i]%2 ==0){
                zzac[zzacindex++] = k[i];
            }
            else {
                hol[holindex++] = k[i];
            }
        }

        int[][] ans = new int[2][];
        ans[0] = zzac;
        ans[1] = hol;
        return ans;
    }


    public static void main(String[] args) {
        Today425 td = new Today425();

        int b = 123456;

        int [][] result = td.zzachol2(b);

        System.out.print("짝수 :");
        for(int n : result[0]){
            System.out.print(n+" ");
        }
        System.out.println();

        System.out.print("홀수 :");
        for(int n : result[1]){
            System.out.print(n+" ");
        }

    }

}
