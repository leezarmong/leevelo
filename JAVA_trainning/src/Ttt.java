public class Ttt {

    public int num (int[] arra){

        String k = String.valueOf(arra);
        for(int i=arra.length-1; i>=0; i--){
            k += arra[i];
        }
        int result = Integer.parseInt(k);
        return result;
    }
}
