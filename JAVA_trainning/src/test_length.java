import java.util.Scanner;

public class test_length {

    public String len (String k){
        String result = k.replace("-","");


            int length = result.length();

            if (length == 10) {
                result = result.substring(0, 3) + "***" + result.substring(6);
            } else if (length == 11) {
                result = result.substring(0, 3) + "****" + result.substring(7);
            }


        return result;
    }

    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);
        test_length tl = new test_length();
        //인스턴스

        System.out.print("번호 입력해주세요 :");
        String k = scan.next();

        System.out.print(tl.len(k));
    }
}
