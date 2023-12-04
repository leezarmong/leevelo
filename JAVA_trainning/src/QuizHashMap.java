import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;

public class QuizHashMap {
    Scanner scan = new Scanner(System.in); // scanner instance
    HashMap<String , String> v = new HashMap<>();   //hashmap instance

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
        System.out.println(v.size()+" 개 가 등록 되어있습니다.");
        Set<String> keys = v.keySet();
        System.out.println(keys);

        while(true){
            System.out.println("나라 수도 입력해주세요 ex)) 대한민국 서울");
            String country = scan.next();

            if(country.equals("그만")){
                break;
            }
            String capital = scan.next();

            if(v.containsKey(country)){
                System.out.println("등록 된 나라 입니다.");
            }
            v.put(country,capital);
        }
    }

    public void delete(){

        while(true) {
            Set<String> keys = v.keySet();

            System.out.println(keys);
            System.out.print("삭제 하고싶은 나라 이름 입력해 주세요.");
            String deletecountry = scan.next();

            if(deletecountry.equals("그만")){
                break;
            }

            boolean result = false;

            for(int i=0; i<v.size();i++){
                if(v.get(i).equals(deletecountry)){
                    v.remove(i);
                    result = true;
                }
            }

            if(!result){
                System.out.println("그런 나라 없습니다. ");
            }

        }
    }

    public static void main(String[] args) {
        QuizHashMap q = new QuizHashMap();

        q.insert();
    }

}
