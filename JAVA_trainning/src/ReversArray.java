public class ReversArray {


    public int[] revers(int[] num){
        int[] result = new int[num.length];

        for(int i = 0 ;  i<=num.length-1; i++){

            result[i] = num[num.length-1-i];
        }

        return result;

    }

    public static void main(String[] args) {

        ReversArray rv = new ReversArray();

        int[] te = {1,2,3,4,5};

        int[] result= rv.revers(te);

        for(int i : result){
            System.out.print(i+" ");
        }
    }
}
