import java.util.Scanner;

class Phone{
    private String name;
    private String num;

    //생성자 
    public Phone(String name , String num){
        this.name = name;
        this.num = num;
    }

    public String getName(){
        return name;
    }
    public String getNum(){
        return num;
    }

}
public class 번호찾기 {
    static Scanner scan = new Scanner(System.in);

    String name;
    String num;

    public void serch() {

        System.out.print("몇명 입력하실건가요?");
        int digit = scan.nextInt();


        Phone[] phone = new Phone[digit];

        for (int i = 0; i < digit; i++) {

            System.out.print("이름 ");
            name = scan.next();
            System.out.print("번호 ");
            num = scan.next();

            phone[i] = new Phone(name, num);
        }
        System.out.println("완료하였습니다.");

        while (true){
            System.out.print("검색할 이름");
            String name = scan.next();
            for(int i = 0 ; i<digit; i++){
                // PHONE 객체의 갯수 만큼 입력된 이름을 검색 하기 위한 for

                if(name.equals(phone[i].getName())){
                    // 입력 받은 이름과 phone 의 이름과 같으면 입력된 번호가 출력되도록 설정

                    System.out.print(phone[i].getName()+"의 번호는"+phone[i].getNum()+"입니다.");
                    //i++;
                    break;
                }
            }
            if(name.equals("그만")) break;
            // 입력된 name 이 그만 이면 while 문 종료.
        }

    }

    public static void main(String[] args) {
        번호찾기 번=new 번호찾기();
        번.serch();
    }

}
