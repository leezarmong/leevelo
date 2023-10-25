public class Solution11 {
    public static long solution(int a, int b) {
        long answer = 0;
        int c = 0 ;
        if(a > b){
            c = a;
            a = b;
            b= c;
        }
        for(int i =a; i<= b; i++){
            answer += i;

        }
        return answer;
    }

    public static void main(String[] args) {
        System.out.print(solution(5,3));
    }
}
