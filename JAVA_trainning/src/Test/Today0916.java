package Test;

public class Today0916 {



    // String -> reverse String
    public String str (String str){

        String resutl = "";
        for(int i=str.length()-1; i>=0; i--){
            resutl += str.substring(i,i+1);
        }
        return resutl;
    }


    // arra -> reverse arra
    public int[]arra1 (int[] arr){
        int[] result = new int[arr.length];

        for(int i=0; i<result.length; i++){

            result[i]=result[arr.length-1-i];

        }
        return result;
    }


    //arr -> reverse num
    public int num (int[]arra){

        String str = "";
        for(int i=arra.length-1; i>=0; i--){
            str += arra[i];
        }
        int result = Integer.parseInt(str);

        return result ;
    }
}
