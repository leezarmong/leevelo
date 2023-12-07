import java.util.HashMap;
import java.util.Scanner;
import java.util.Set;

public class QuizHashMap {
    Scanner sc = new Scanner(System.in);
    HashMap<String , String> v = new HashMap<>();

    public QuizHashMap(){
        v.put("멕시코", "멕시코시티");
        v.put("스페인", "리스본");
        v.put("프랑스", "파리");
        v.put("영국", "런던");
        v.put("그리스", "아테네");
        v.put("독일", "베를린");
        v.put("일본", "도쿄");
        v.put("중국", "베이징");
        v.put("러시아", "모스크바");
    }

    public void insert(){
        System.out.println("현재"+v.size()+"개의 나라와 수도가 입력되어있습니다.");

        while(true){
            System.out.println("나라 와 수도 ex) 한국 서울");
            String country = sc.next();

            if(country.equals("그만")){
                break;
            }
            String capital = sc.next();
            if(v.containsKey(country)){
                System.out.println(country+"이미 존재 합니다.");
                continue;
            }
            v.put(country,capital);
        }
    }

    public void delete(){

        while(true) {
            Set<String> keys = v.keySet();

            System.out.println(keys);
            System.out.print("삭제 하고싶은 나라 이름 입력해 주세요.");
            String deletecountry = sc.next();

            if(deletecountry.equals("그만")){
                break;
            }



            if(v.containsKey(deletecountry)){
             v.remove(deletecountry);
                System.out.println("삭제했습니다.");
            }
            else{
                System.out.println("그런 나라 없습니다. ");
            }
        }
    }



    public void play() {
        while(true) {
            Set<String> keys = v.keySet();  // set 에 hashmap 의 key 의 집단을 입력 시켜준다.
            Object [] array = (keys.toArray());     // 만들어준 set 의 keys 를 하나의 배열인 객체로 선언.
            int index = (int)(Math.random()*array.length); // 랜덤한 위치 결정

            // 문제(나라)와 정답(수도)을 결정한다.
            String question = (String)array[index];     // 랜덤값의 배열
            String answer = v.get(question);    // 그리고 비교할 답을 아까 질문한 해당 index의 값으로 설정.


            // 문제를 출력한다.
            System.out.print(question + "의 수도는? ");

            String capitalFromUser = sc.next(); // 사용자의 입력
            if(capitalFromUser.equals("그만")) {
                break;
            }
            if(capitalFromUser.equals(answer))      //hashmap은 키를 입력하면 값이 나오며 값을 비교할때 key , value 중 value 와 비교하게된다.
                System.out.println("정답!!");
            else
                System.out.println("아닙니다!!");
        }
    }

    public void run() {
        System.out.println("***수도 맞추기 게임을 시작합니다. ***");
        while(true) {
            System.out.print("입력:1, 퀴즈:2, 삭제:3, 종료:4>>");
            int select = sc.nextInt();
            switch(select) {
                case 1:
                    insert(); break;
                case 2:
                    play(); break;
                case 3:
                    delete(); break;
                case 4:
                    sc.close();
                    System.out.println("게임을 종료합니다.");
                    return;
            }
        }
    }

    public static void main(String[] args) {
        QuizHashMap q = new QuizHashMap();
        q.run();
    }
}


