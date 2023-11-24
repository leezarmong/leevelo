public class 입력한수배열로뒤집기 {

    public int[] arrt (int numt){
        int[] result ={};
        String str = Integer.toString(numt);
        result = new int[str.length()];

        for(int i=0; i<result.length; i++){
            result[i] = Integer.parseInt(str.substring(result.length-1-i,result.length-i));
        }

        return result;
    }

    //수 를 배열로 뒤집지 않고.
    public int[] arra (int nums){

        int result[] ={};
        String str = Integer.toString(nums);

        result = new int[str.length()];

        for(int i=0; i<result.length; i++){
            result[i] = Character.getNumericValue(str.charAt(i));
        }

        return result;
    }

    public int[] arraa (int nums){
        int result[] ={};
        String[] str =Integer.toString(nums).split("");

        result = new int[str.length];

        for(int i=0; i<result.length; i++){
            result[i] = Integer.parseInt(str[i]);
        }

        return result;
    }


}
