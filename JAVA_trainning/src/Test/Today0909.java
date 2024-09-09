package Test;

public class Today0909 {

    //배열 -> 배열 뒤집기
    public int[] arr (int[]arr){
        int[] answer = new int[arr.length];

        for(int i=0; i<arr.length; i++){
            answer[i] = arr[arr.length-1-i];
        }


        return answer;
    }

    //수 -> 배열 뒤집기
    public int[] arra (int num){

        String snum = String.valueOf(num);
        int[] answer = new int[snum.length()];

        for(int i=0; i<answer.length; i++){
            answer[i] = Integer.parseInt(snum.substring(answer.length-1-i,answer.length-i));
        }

        return answer;
    }

    //배열 -> 수 뒤집기
    public int nums(int[]arr){

        String snum = "";
        for(int i=arr.length-1; i>=0; i--){
            snum += arr[i];
        }
        int answer =0;
        answer = Integer.parseInt(snum);


        return 0;
    }

    //배열 -> 수 뒤집기 StringBuilder 사용
    public int numss (int[] arr){

        int[] answer = new int[arr.length];

       for(int i=0; i<arr.length; i++){
           answer[i] = arr[arr.length-1-i];
       }

       StringBuilder sb = new StringBuilder();

       for(int n : answer){
           sb.append(n);
       }
       int result = Integer.parseInt(sb.toString());


        return result;
    }

    // 문자열 뒤집기
    public String ks(String k){
        String answer = "";
        for(int i=k.length()-1; i>=0; i--){
            answer += k.substring(i,i-1);
        }

        return answer;
    }
}
