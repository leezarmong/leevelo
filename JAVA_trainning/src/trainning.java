import java.util.HashSet;
import java.util.Scanner;

public class trainning {


    public int[] arra(int[] num){
        int[] result= num;

        HashSet<Integer> insertnum = new HashSet<>();

        for(int n : result){
            insertnum.add(n);
        }

        int index = 0 ;

        int[]ans = new int[insertnum.size()];


      for(int n : insertnum){
          ans[index++]= n;
      }


        return ans;
    }

    public static void main(String[] args) {
        trainning tr = new trainning();

        int[] b={1,2,2,2,3,4,5,5,6};
        int[] resul = tr.arra(b);

        for(int n : resul){
            System.out.print(n+" ");
        }
    }
}
