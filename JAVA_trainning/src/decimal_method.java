import java.text.DecimalFormat;
import java.util.Scanner;

public class decimal_method {

    public void nums (int k){
        Scanner scan = new Scanner(System.in);

        while (true) {
            DecimalFormat df = new DecimalFormat("###,###");
            String tran = df.format(k);
            System.out.print(tran);

            // 사용자에게 "그만"을 입력하도록 요청
            System.out.print("\n계속하려면 '그만'을 입력하십시오: ");
            Scanner scanner = new Scanner(System.in);
            String input = scanner.nextLine();

            if (input.equals("그만")) {
                break; // 루프를 종료합니다.
            }
            else {
                try {
                    k = Integer.parseInt(input); // 새로운 숫자 초기화
                    // input 은 그만 을 받기 위한 String 이지만 위에 받은 k의 입력받은 한가지 수만 나오게된다.
                    // 그렇게 때문에 Integer.parseInt 로 형 변환을 해준뒤 수를 받을수 있게 설정 .
                }catch (NumberFormatException e){
                    System.out.print("올바른 수를 입력해 주세요 . ");
                    // 동작이 멈추지 않게 exception 설정 .
                }
            }
        }

    }

    public static void main(String[] args) {
    Scanner scan = new Scanner (System.in);


    System.out.print("변경할 숫자 :");
    int k = scan.nextInt();



    decimal_method dmdm = new decimal_method();

    dmdm.nums(k);







    }
}
