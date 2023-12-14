public class Samyuckku {

    public static void run() {

        for (int i = 1; i <= 99; i++) {
            int a = i / 10; // 몫
            int b = i % 10; // 나머지

            int count = 0;



            if (a == 3 || a == 6 || a == 9) {
                count++;
            }
            if (b == 3 || b == 6 || b == 9) {
                count++;
            }

            if(count == 2){
                System.out.println(" 짝짝");
            }
            else if (count == 1){
                System.out.println(" 짝");
            }
            else{
                System.out.println(i+" ");
            }
        }
    }

    public static void main(String[] args) {
        run();
    }
}
