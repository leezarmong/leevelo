import javax.swing.*;
import java.util.Scanner;

public class Phone {
    private String name ;
    private String tal ;

    public Phone(String name , String tal){
        this.name = name;
        this.tal = tal ;
    }

    public String getName(){
        return name;
    }

    public String getTal(){
        return tal;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        Phone phone[] ;

        System.out.print("인원수 :");
        int num = scan.nextInt();

        phone = new Phone[num];

        for(int i = 0 ; i<phone.length; i++){
            System.out.print("이름과 번호 입력 :");

            String name = scan.next();
            String tal = scan.next();
            phone[i] = new Phone(name,tal);

        }
        System.out.print("저장되었습니다..");
        while (true){
            System.out.print("검색할 이름 :");
            String name = scan.next();
            for(int i = 0 ; i<num; i++){
                if(name.equals(phone[i].getName())){
                    System.out.print(name+"번호는"+phone[i].getTal()+"입니다.");
                    i--;
                    break;
                }
            }
            if(name.equals("그만"))
                break;

        }
        scan.close();



    }
}
