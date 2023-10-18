import java.text.DecimalFormat;
import java.util.Scanner;

public class Decimal {

        public void number(int nums) {
            DecimalFormat df = new DecimalFormat("###,###");
            Scanner scan = new Scanner(System.in);
            while (true) {

                String format = df.format(nums);

                System.out.print(format);

                System.out.println();
                System.out.print("exit >> stop  :");
                String k = scan.next();

                if (k.equals("stop")) {
                    break;
                } else {
                    try {
                        nums = Integer.parseInt(k);
                    } catch (NumberFormatException e) {
                        System.out.print("번호 입력해주세요.");
                    }
                }
            }

        }

        public static void main(String[] args) {
            Scanner scan = new Scanner(System.in);

            System.out.print("번호를 입력해 주세요.");
            int k = scan.nextInt();

            Decimal dc = new Decimal();
            dc.number(k);


        }
    }


