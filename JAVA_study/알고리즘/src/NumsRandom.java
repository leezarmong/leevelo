import java.util.Scanner;

public class NumsRandom {

    public void random(){
        Scanner scan = new Scanner(System.in);
        int result = (int)(Math.random()*99); // 0~99


        System.out.println("수를 결정 했습니다.");
        while(true){

            int k = scan.nextInt();
            if(k >result){
                System.out.println("더 낮게");
            }
            else if (k < result){
                System.out.println("더 높게");
            }
            else if(k == result){
                System.out.println("맞았습니다.");
                break;
            }
        }
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        NumsRandom rn = new NumsRandom();

        while(true){
            rn.random();

            System.out.println("다시하시겠습니까? (y/n)");
            String k = scan.next();

            if(k.equals("n")){
                break;
            }
        }
    }
}
