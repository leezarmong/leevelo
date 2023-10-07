import java.util.ArrayList;
import java.util.Scanner;

public class ArrayList_Test {


    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        ArrayList<String> list = new ArrayList<>();


        for(int i = 0 ; i<4; i++){
           System.out.print("insert nums :");
           list.add(scan.nextLine());
        }


        System.out.print(list+":");





    }
}
