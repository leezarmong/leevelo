package Test;

public class Today1011 {

    //문자 거꾸로
    public String re (String str){

        String resutl="";
        for(int i= str.length(); i>=0; i--){
            resutl += str.substring(i,i+1);
        }

        return "";
    }


    //배열 거꾸로
    public int[] arr(int[] nums){

        int[] answer = new int[nums.length];

        for(int i=0; i<nums.length; i++){
            answer[i]= answer[answer.length-1-i];
        }

        return answer;
    }

    //배열 수 뒤집기
    public int nums (int[] arr){

        String k = "";
        for(int i= arr.length-1 ; i>=0; i--){
            k += arr[i];
        }

        int[] arr2 = new int[arr.length];
        for(int i=0; i<arr.length; i++){
            arr2[i] = arr[arr.length-1-i];
        }

        StringBuilder sb = new StringBuilder();
        int index = 0 ;

        for(int i : arr2){
            sb.append(i);
        }

        int resutl = Integer.parseInt(sb.toString());

        return 0 ;
    }

    // 수 를 배열로 뒤집기
    public int[] arr2 ( int k){

        String kstr = String.valueOf(k);
        int[] result = new int[kstr.length()];

        for(int i=0; i<result.length; i++){
            result[i] = Integer.parseInt(kstr.substring(result.length-1-i,result.length-i));

        }


        return result;
    }

    //수 를 배열 로 재정의
    public int[]arr3(int nums){
        String kstr = String.valueOf(nums);
        int[] answer = new int[kstr.length()];

        char c;

        for(int i=0; i<answer.length; i++){
            c =  kstr.charAt(i);
            answer[i] = Integer.parseInt(String.valueOf(c));
        }

return answer;
    }


    public static void main(String[] args) {
        // 파스칼 삼각형 만들어 볼까?

        int[][] pas = new int[7][7];

        for(int i=0; i<pas.length; i++){
            for(int j=0; j<=i; j++){


                if(j == 0 || j==i){

                    pas[i][j] = 1 ;
                }
                else{
                    pas[i][j] = pas[i-1][j-1] + pas[i-1][j];
                }

            }
        }

        for(int i=0; i<pas.length; i++){

            for(int k=pas.length; k>=i; k--){
                System.out.print(" ");
            }

            for(int j=0; j<=i; j++){
                System.out.print(pas[i][j]+" ");
            }
            System.out.println();
        }


    }
}
