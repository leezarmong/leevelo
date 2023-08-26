public class ReversArray {


    public int[] revers(int[] num){
        int[] result = new int[num.length];

        for(int i = 0 ;  i<=num.length-1; i++){

            result[i] = num[num.length-1-i];
            // num.length - 1 - i 루프가 반복될 때마다 i는 0에서 num.length - 2로 증가

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
