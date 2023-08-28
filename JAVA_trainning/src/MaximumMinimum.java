import java.util.Scanner;

public class MaximumMinimum {

    public static void main (String[] args){
        Scanner scan = new Scanner(System.in);
        int max = 0 ; //최대공배수

        System.out.print("1번째 수 ");
        int num1 = scan.nextInt();

        System.out.print("2번째 수 ");
        int num2 = scan.nextInt();


        for(int i =1 ; i<=num1 && i<=num2; i++){
            if(num1%i==0 && num2%i==0){
                max = i;
;           }
        }

        int min = (num1 * num2) /max ;

        System.out.print("최대공약수 : " + max+"\n");
        System.out.print("최소공배수 : " + min);


    }
}
