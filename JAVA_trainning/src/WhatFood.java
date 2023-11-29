import java.util.HashSet;
import java.util.Random;
import java.util.Scanner;

public class WhatFood {
    static Scanner scan = new Scanner(System.in);

    public void food() {
        int count =0;
        String insertFood = "";
        HashSet<String> food = new HashSet<>();

        while (true) {

                count++;
                System.out.print("음식 입력 해주세요." + count + "번째 음식 / 종료 '그만' :");
                insertFood = scan.next();


            if (insertFood.equals("그만")) {
                break;
            }else if (!insertFood.matches("[a-zA-Z\\p{IsHangul}]+")) {
                System.out.println("String 만 입력 해 주세요.");
                count--;
                continue;
            }  else if (food.contains(insertFood)) {
                System.out.println("중복된 단어 를 입력했습니다. 다시 입력해주세요.");
                count--;
                continue;
            } else {
                food.add(insertFood);
            }
        }
        if(!food.isEmpty()) {
            System.out.println();
            System.out.println("입력된 음식 " + food);

            String[] arrayFood = food.toArray(new String[0]);
            /* String[] arrahFood = new String [food.size()] 가 아닌 이유는
            * new String [food.size()] 라고 할경우 food 만큼 크기만 제작 될 뿐이지 원소 는 없다
            * 하지만 food.toArray(new String[0]); 라고 선언 하게 된다면 food 안에 들어간 원소들이
            * 액세스 되어 랜덤 된 인덱스 값에 해당다는 값이 나오게 된다.
            * */

            Random rn = new Random();
            int randomIndex = rn.nextInt(food.size());

            System.out.println("선정된 음식은 >> " + arrayFood[randomIndex]);
        }
        else{
            System.out.println("음식을 입력해주세요..");

        }
   }

    public static void main(String[] args) {
        WhatFood whatFood = new WhatFood();
        whatFood.food();
    }
}
