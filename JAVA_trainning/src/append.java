import java.util.Scanner;

public class append {

    public static void main (String[] args){
        Scanner scan = new Scanner(System.in);

        System.out.print("하고싶은 말 :");
        String k = scan.next();

        StringBuffer sb = new StringBuffer(k);


        System.out.print(sb.append("님"));

    }
}
