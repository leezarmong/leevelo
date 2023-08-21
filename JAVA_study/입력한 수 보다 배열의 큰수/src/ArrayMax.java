import java.util.Scanner;

public class ArrayMax {

    public int nextMax(int[] Array , int hig){
        int result =0;

        for( int i : Array){
            if(i > hig){
                result ++;
            }
            else{
                System.out.print("지정한 수 내에서 정해주세요.!");
            }
        }
        return result;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("배열의 크기를 정해주세요 :");
        int size = scan.nextInt();

        int[] b = new int[size];


        for(int i = 0 ; i<b.length; i++){
            System.out.print("들어갈"+(i+1)+"번째 수 :");
            b[i]= scan.nextInt();
        }

        System.out.print("지정할 수 :");
        int hig = scan.nextInt();

        ArrayMax rm = new ArrayMax();

       int result = rm.nextMax(b ,hig);
        System.out.print(result);


    }
}
