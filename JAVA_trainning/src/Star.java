import java.util.Scanner;

public class Star {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);



        System.out.print("별 몇개?");
        int n = scan.nextInt();


        for(int i=0; i<n; i++){
            for(int j=0;j<=i; j++){
                System.out.print("*");
            }
            System.out.println();
        }


    }
}
