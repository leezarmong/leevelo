import java.text.DecimalFormat;
import java.util.Scanner;

public class decimal_method {

    public void nums (int k){

        DecimalFormat df = new DecimalFormat("###,###");

        String tran = df.format(k);

        System.out.print(tran);


    }

    public static void main(String[] args) {
    Scanner scan = new Scanner (System.in);


    System.out.print("변경할 숫자 :");
    int k = scan.nextInt();



    decimal_method dmdm = new decimal_method();

    dmdm.nums(k);







    }
}
