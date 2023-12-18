public class TwoArray {

    public static void main(String[] args) {

        int[] k = {1,2,3,4,5,6,7,8,9};

        for(int a : k){
            for(int b : k){
                System.out.println(a+"x"+b+"="+(a*b));
            }
            System.out.println();
        }



        for(int i=0; i<k.length; i++){
            for(int j=0; j<k.length; j++){
                int a = k[i];
                int b = k[j];
                System.out.println(a+"x"+b+"="+(a*b));
            }
            System.out.println();
        }
    }
}
