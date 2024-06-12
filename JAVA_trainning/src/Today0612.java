public class Today0612 {

    //문자열 뒤집기
    public String str (String len){

        String result = "";

        for(int i= len.length()-1; i>=0; i--){

            result += len.substring(i,i+1);

        }
        return result;
    }

    //입력한 배열 배열 뒤집기
    public int[] ara (int[] nusm){

        int[] result = new int[nusm.length];

        for(int i=0; i<nusm.length; i++){
            result[i] = nusm[nusm.length-1-i];
        }
        return result;
    }

    //입력한 배열 수로 뒤집기
    public int nunj (int[] arr ){

        int result = 0 ;
        String str = "";

        for(int i = arr.length-1 ; i>=0; i--){
            str += arr[i];
        }

        result = Integer.parseInt(str);

        return result ;
    }

    //배열 수
    public int nums4 (int[]aara){
        String str = "";
        int result = 0;

        for (int i=0; i<aara.length; i++){
            str += aara[i];
        }
        result =Integer.parseInt(str);



        return result;
    }


    //입력한 수 배열로 뒤집기
    public int[]arra2 (int nums){
        String str = String.valueOf(nums);
        int[] result = new int[str.length()];

        for(int i=0; i<result.length; i++){

            result[i] = Integer.parseInt(str.substring(result.length-1,result.length-i));
        }
        return  result;
    }

    //입력한 수 배열

    public int[] arra12 (int nums){

        String str = String.valueOf(nums);
        int[] result=new int[str.length()];


        for(int i=0; i<result.length; i++){
            char c = str.charAt(i);

            result[i] = Integer.parseInt(String.valueOf(c));
        }

        return  result;
    }

    //comma
    public String comma (String nums){

        StringBuilder sb = new StringBuilder();
        int count = 0 ;


        for(int i= nums.length()-1 ; i>=0; i--){
            count++;
            sb.insert(0,nums.charAt(i));
            if(count%3==0){
                sb.insert(0,",");
            }
        }
        String result = sb.toString();

        return result;
    }



    public static void main(String[] args) {


        Today0612 td = new Today0612();

       String k = "12345678";

       System.out.println(td.comma(k));
    }
}
