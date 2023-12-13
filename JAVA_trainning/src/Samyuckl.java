public class Samyuckl {

    public static void run() {

        for (int i = 1; i <= 50; i++) {
            int a = i / 10; // 10의자리
            int b = i % 10; // 1의 자리
            int count = 0;

            if (a == 3 || a == 6 || a == 9) { // 10의 자리가 3,6,9일 때 카운트.
                count ++;
            }
            if (b == 3 || b == 6 || b == 9) {   // 나머지가 3,6,9 일때 카운트.
                count ++;
            }

            /*
            *
            * 33일 때 나누면 ( / ) a가 3, b는 10으로 나눌때 나머지 ( % ) 가 3 이된다
            * 이런 조건일때 카운트를 하게 되면.8
            *
            */


            if (count == 2) { // 10의 자리 1의자리 둘다 카운트 되었을 때, 짝짝.
                System.out.println("짝짝 ");
            } else if (count == 1) {
                System.out.println("짝 ");
            } else {
                System.out.println(i + " ");
            }

        }
    }

    public static void main(String[] args) {
        run();
    }
}
