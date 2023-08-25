public class ReversTwo {

    public int test(int num){
        int result = 0 ;

        while (num != 0){
            int digit = num %10;
            result = result * 10 +digit;
            num /= 10;
            // num 을 10으로 나눈 후 다시 num 에 대입.
        }

        return result;
    }

    public static void main(String[] args) {

        int result = 12345;

        ReversTwo rt = new ReversTwo();

        System.out.print(rt.test(result));
    }
}
