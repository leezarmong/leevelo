import java.util.Scanner;

public class TestTwo {

    public String test(String num) {
        String result = num.replace("-", "");

        int len = result.length();
        //length 에서는 int 형 만 가능.

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

        }
        else{
            System.out.print("다시 입력해주세요 !");
        }
        return result;
    }

    public static void main(String[] args) {
        Scanner sn = new Scanner(System.in);
        System.out.print("insert :");
        String k = sn.next();

        TestTwo st = new TestTwo();

        System.out.print(st.test(k));
    }
}
