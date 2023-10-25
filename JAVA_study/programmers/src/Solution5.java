public class Solution5 {
// 약수 의 합 을 구하자.

    public int solution(int n) {
        int sum = 0;


        for (int i = 1; i <= n; i++) {
            if (n % i == 0) {

                sum += i;
            }

        }
            return sum;
        }
    }
