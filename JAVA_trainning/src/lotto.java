import java.util.Arrays;

public class lotto {
    public static void main(String[] args) {


        int[] lo = new int[6];


        for(int i=0; i<lo.length; i++){
            lo[i] = (int) (Math.random()*45+1);

            //중복 제거
            for(int j=0; j<i; j++){

                if(lo[i]==lo[j]){
                    i--;

                }
            }

        }

        System.out.print("행운의 번호 :");

        for(int i=0; i<lo.length; i++){

            Arrays.sort(lo);
            System.out.print(lo[i]+" ");
        }


    }
}
