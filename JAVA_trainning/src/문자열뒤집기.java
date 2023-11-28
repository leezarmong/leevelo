public class 문자열뒤집기 {
    public String reverse (String str){
        String result ="";

        for(int i=str.length()-1 ; i>=0; i--){
            result += str.substring(i,i+1);
        }

        return result;
    }
}
