import java.text.DecimalFormat;
import java.util.Scanner;

public class decimalformat {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        DecimalFormat df = new DecimalFormat("###,###");

        System.out.print("번호 입력");
       int k = scan.nextInt();

       String newnum = df.format(k);

       System.out.print(newnum);



    }


}
