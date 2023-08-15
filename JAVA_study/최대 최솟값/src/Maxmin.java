public class Maxmin {

    public int[] nums (int[] numb){
        int[] result = new int[2];
        int max = 0 ;
        int min = 0 ;

        max = min = numb[0];

        for(int i = 1 ; i<numb.length; i++){
            max = Math.max(numb[i] , max);
            min = Math.min(numb[i] , min);
        }

        result[0] = max ;
        result[1] = min ;
        return result;
    }

    public static void main(String[] args) {
        int[] b = {1,2,3,4,5};

        Maxmin mx = new Maxmin();
        int[] result = mx.nums(b);

        System.out.print(result[0]);
        System.out.println();
        System.out.print(result[1]);

    }




}
