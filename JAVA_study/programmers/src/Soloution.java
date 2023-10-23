import java.util.Scanner;

public class Soloution {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);


        System.out.print("수 입력:");
        int n = scan.nextInt();

        if(n%2==0){
            System.out.print(n+" is even");
        }
        else{
            System.out.print(n+" is odd");
        }



    }
}
