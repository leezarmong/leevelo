import java.util.Scanner;

public class StarNum {

    public String StarNu(String text) {
        String result = text.replace("-", "");

        int len = result.length();

        if (len >= 9 && len <= 13) {
            if (len == 10) {
                result = result.substring(0, 3) + "***" + result.substring(6);
                // substring(index1,index2)= 뒤에오는 2 번부터 적용.
                // 0 , 1 , (2)부터 변환 한다.

                // substring(index2)= 이전의 인덱스 까지적용
                // * , * , (2)전 이후로
            }
            else if(len ==11){
                result = result.substring(0,3)+"****"+result.substring(7);
            }

        } else {
            System.out.print("Please enter again;");
        }

        return result;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        StarNum sn = new StarNum();

        System.out.print("Please enter a number (including -): ");
        String k = scan.next();

        System.out.print(sn.StarNu(k));
    }
}
