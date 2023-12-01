import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class HashMapclass {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        HashMap<String,Integer> nations = new HashMap<>();
        System.out.println("음식과 가격 을 적어주세요 ex)스윙칩 1000");
        while(true) {
            System.out.println("음식과 가격 :");
            String temp1 = scan.next();

            if(temp1.equals("그만")){
                break;
            }
            int temp2 = scan.nextInt();
            nations.put(temp1,temp2);
        }

        while(true){
            System.out.println("찾으실 음식은 ?");
            String temp3 = scan.next();

            if(temp3.equals("그만")){
                break;
            }

            if(nations.get(temp3)== null){
                System.out.println(temp3+"는 저장 되어있지 않습니다.");
            }
            else{
                System.out.println(temp3+"의 가격은"+nations.get(temp3));
            }

            if (temp3.equals("list")) {
                for (Map.Entry<String, Integer> entry : nations.entrySet()) {
                    System.out.println(entry.getKey() + "'s price is " + entry.getValue());
                }
            }


        }


    }
}
