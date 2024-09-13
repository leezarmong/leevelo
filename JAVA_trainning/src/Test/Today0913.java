package Test;

public class Today0913 {


    //배열 -> 배열 역순
    protected int[] arra1 (int[] arr){

        int[] answer = new int[arr.length];

        for(int i=0; i<answer.length; i++){
            answer[i] = answer[arr.length-1-i];
        }

        return answer;
    }

    //배열 -> 수 역수
    protected int num1 (int[] arr){
        String knum = "";

        for(int i = arr.length-1; i>=0; i--){
            knum += arr[i];
        }

        int result = Integer.parseInt(knum);


        return result;
    }
    protected int num2 (int[]arr){
        int[] answer = new int[arr.length];
        for(int i=0; i<arr.length; i++){
            answer[i] = answer[arr.length-1-i];
        }

        StringBuilder sb = new StringBuilder();

        for( int n : answer){
            sb.append(n);
        }

        int result = Integer.parseInt(String.valueOf(sb));

        return result ;
    }



    //수 -> 배열 역순
    protected int[]arr2 (int nums){
        String knum = String.valueOf(nums);
        int[] answer = new int[knum.length()];

        for(int i=0; i<answer.length; i++){

            answer[i] = Integer.parseInt(knum.substring(knum.length()-1,knum.length()-i));
        }

        return answer;
    }

    // 수 -> 배열
    protected int[]arr3 (int nums){
        String kn = String.valueOf(nums);
        int[] answer = new int[kn.length()];
        char c ;

        for (int i=0; i<answer.length; i++){
            c = kn.charAt(i);
            answer[i] = Integer.parseInt(String.valueOf(c));
        }

        return answer;
    }
}
