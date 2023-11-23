public class Rere {

    public int num (int[] arra){

        int[] result = new int[arra.length];

        for(int i=0; i<arra.length; i++){
            result[i] = arra[arra.length-1 -i];
        }

        StringBuffer sb = new StringBuffer();
        for(int n : result){
            sb.append(n);
        }

        return Integer.parseInt(sb.toString());
    }
}
