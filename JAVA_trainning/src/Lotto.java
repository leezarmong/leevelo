import java.util.Arrays;

public class Lotto {

    public static void main(String[] args) {

        int[] lo = new int[6];



        for(int i = 0 ; i<lo.length; i++){
            lo[i] = (int) ((Math.random()*45)+1);

            for(int j = 0  ;j<i; j++){
                if(lo[i] == lo[j]){
                    i--;
                    break;
                }
            }
        }
        System.out.print("행운의 번호 :");
        Arrays.sort(lo);
        // 오름차순
        for(int i = 0 ; i<lo.length; i++){
            System.out.print(lo[i]+" ");
        }
    }
}
