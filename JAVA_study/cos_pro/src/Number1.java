
    // You may use import as below.
import java.util.*;

   public class Number1 {
        public int solution(int price, String grade) {
            int answer = 0;

          if(grade.equals("S")){
              answer = (int)(price*0.95);
          }
          else if(grade.equals("G")){
              answer = (int)(price*0.90);
          }
          else if(grade.equals("V")){
              answer = (int)(price*0.85);
          }

            return answer;
        }

        // The following is main method to output testcase.
        public static void main(String[] args) {
            Number1 sol = new Number1();
            int price1 = 2500;
            String grade1 = "V";
            int ret1 = sol.solution(price1, grade1);

            // Press Run button to receive output.
            System.out.println("Solution: return value of the method is " + ret1 + " .");

            int price2 = 96900;
            String grade2 ="S";
            int ret2 = sol.solution(price2, grade2);

            // Press Run button to receive output.
            System.out.println("Solution: return value of the method is " + ret2 + " .");
        }

}
