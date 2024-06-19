public class Today0619 {



    //문자열 뒤집기
    public String str (String len){

        String result = "";

        for(int i = len.length()-1; i>=0;i--){

            result += len.charAt(i);
        }

        return result;
    }


    //배열 > 배열 뒤집기
    public int[] arra (int[] nums ){

        int[] reuslt = new int[nums.length];

        for(int i=0; i<reuslt.length; i++){

            reuslt[i] = nums[nums.length-1-i];
        }

        return reuslt;
    }

    //배열 > 수 뒤집기
    public int nums (int[] arra){

        String str = "";

        for(int i= arra.length-1 ; i>=0; i--){

            str += arra[i];
        }
        int result = 0 ;
        result = Integer.parseInt(str);

        return result;
    }

    //입력한  > 배열
    public int[] arra2 (int nums){

        String str = String.valueOf(nums);
        int[] result = new int[str.length()];

        for(int i=0; i<str.length(); i++){

            char c = str.charAt(i);
            result[i] = Integer.parseInt(String.valueOf(c));
        }

        return result;
    }


}
