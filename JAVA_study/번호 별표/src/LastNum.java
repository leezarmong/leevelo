import java.util.Scanner;

public class LastNum {

    public String star (String nums){


        String sn = nums.replace("-","");
        String star ="";
        for(int i = 0 ; i< sn.length()-4; i++){
            star += "*";
        }

        star+= sn.substring(sn.length()-4);

        return star ;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("insert (-):");
        String k = scan.next();

        LastNum ln = new LastNum();
        System.out.print(ln.star(k));

    }
}
