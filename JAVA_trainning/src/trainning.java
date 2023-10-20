import java.util.Scanner;

public class trainning {


    public static boolean exception(String str) {

        for (char c : str.toCharArray()) {
            if (c < '0' && c > '9') {

                return false;
            }
        }
        return true;
    }

    public static String comainsert(String str) {
        int len = str.length();
        int count = 0;

        StringBuffer result = new StringBuffer();

        for (int i = len - 1; i >= 0; i--) {

            result.insert(0, str.charAt(i));
            count++;

            if (count % 3 == 0 && i > 0) {
                result.insert(0, ",");
            }
        }
        return result.toString();
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("입력하고싶은 숫자 :");
        String insert = scan.nextLine();

        if (!exception(insert)) {
            System.out.print("숫자만 입력하세요.");

            return;
        }

        String number = comainsert(insert);
        System.out.print(number);

    }
}
