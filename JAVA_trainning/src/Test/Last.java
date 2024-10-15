package Test;

import java.util.Stack;

public class Last {


    //문자열 뒤집기
    public String re(String k){
        String resutl = "";

        for(int i=k.length()-1; i>=0; i--){

            resutl += k.substring(i,i+1);
        }

        return resutl;
    }

    //배열 뒤집기
    public int[] arra (int[] nums){
        int[] result = new int[nums.length];


        for(int i=0; i<nums.length; i++){

            result[i] = nums[nums.length-1-i];
        }

        return result;
    }

    //배열 수 뒤집기
    public int nusm (int[] arr){
        String result = String.valueOf(arr);


        for(int i=arr.length-1; i>=0; i--){
            result+= arr[i];
        }

        int answer = Integer.parseInt(result);
        return answer;
    }

    public int nums2(int[] arr){
        int[] result = new int[arr.length];

        for(int i=0; i<arr.length; i++){
            result[i] = arr[arr.length-1-i];
        }
        StringBuilder sb = new StringBuilder();
        for (int n : result){
            sb.append(n);
        }

        return Integer.parseInt(sb.toString());
    }

    //수 배열 뒤집기
    public int[]arr2(int num){
        String k = String.valueOf(num);
        int[] result = new int[k.length()];

        for(int i=0; i<k.length(); i++){
            result[i] = Integer.parseInt(k.substring(result.length-1-i,result.length-i));
        }

        return result;
    }

    //수 배열
    public int[]nums3(int num){

        String k = String.valueOf(num);
        int[] result = new int[k.length()];
        char c ;

        for(int i=0; i<result.length; i++){
            c =k.charAt(i);
            result[i] = Integer.parseInt(String.valueOf(c));
        }


        return result;
    }


    public int[] arr ( int num){
        String k = String.valueOf(num);
        int[] answer = new int[k.length()];
        char c ;

        for(int i=0; i< k.length(); i++){
            c = k.charAt(i);
            answer[i] = Integer.parseInt(String.valueOf(c));

        }
        int max , min ;

        max = min = answer[0];

        for(int i=0; i<answer.length; i++){
            max = Math.max(answer[i],max);
            min = Math.min(answer[i],min);
        }


        int[] result = new int[2];
        result[0] = max;
        result[1] = min;

        return result;
    }

    public String[] email (String k){

        String[] str = k.split("@");

        String id = "";
        String email = "";
        if(str.length== 2){
            id = str[0];
            email = str[1];
        }

        String[] answer = new String[2];

        answer[0] = id;
        answer[1] = email;


        return answer;
    }


   public int stac( String k ) {
        Stack<Character>list = new Stack<>();
        char[] c = k.toCharArray();

        for(int i=0; i<c.length; i++){
            char carr = c[i];
            if(list.isEmpty()){
                list.push(carr);
            }
            else{
                if(list.peek() == carr){
                    list.pop();
                }
                else{
                    list.push(carr);
                }
            }
        }

        return list.isEmpty() ? 1 :0;
   }

  public int num ( int nums){
        int result = 0 ;

        while (nums != 0){
            int digit = result % 10;

            result = result * 10 + digit;
            nums /= 10;

        }
        return result;
  }

}
