package Test;

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
}
