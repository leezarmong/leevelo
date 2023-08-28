import java.util.Scanner;

public class Trainning {

    public static void main(String[] args) {
       Scanner scan = new Scanner(System.in);
            int max = 0 ; //최대 공약
        System.out.print("1째 수");
        int num1 = scan.nextInt();


        System.out.print("2째 수");
        int num2 = scan.nextInt();


        for(int i = 1 ; i<=num1 && i<=num2 ; i++){

            if(num1%i == 0 && num2%i== 0){
                max = i;
            }
        }

        int min = (num1 * num2) /max ;  //최소 공배

        System.out.print("최대"+max);
        System.out.println();

        System.out.print("최소"+min);

    }
}
