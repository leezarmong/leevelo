import java.util.Scanner;

public class Hiloww {

    public String arr(String nums){
        String[] resul = nums.split(" ");

        int max = 0 ;
        int min = 0 ;

        max = min = Integer.parseInt(resul[0]);

        for(int i = 0 ;i<resul.length; i++){
            max = Math.max(max,Integer.parseInt(resul[i]));
            min = Math.min(min,Integer.parseInt(resul[i]));

        }


        return  max+" "+min;
    }

    public static void main(String[] args) {
        Scanner scan= new Scanner(System.in);

        Hiloww hi = new Hiloww();
        String b ="1 2 3 4 5";

       System.out.print(hi.arr(b));
    }
}
