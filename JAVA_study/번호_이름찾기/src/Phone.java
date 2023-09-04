import java.util.Scanner;

public class Phone {
    private String name;
    private String tal;

    public Phone(String name , String tal){
        this.name = name;
        this.tal = tal;
    }

    public String getName(){
        return name ;
    }
    public String getTal(){
        return tal;
    }

    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);

        Phone phone[];
        // 클래스를 객체 자체 인스턴 스 와 배열로 선언 가능.


        System.out.print("몇명 까지 만들까요? :");
        int num = scan.nextInt();
        // 클래스의 객체를 몇개 만들 지.

        phone = new Phone[num];

        for(int i = 0 ; i<phone.length; i++){
            System.out.print("이름과 번호를 입력해 주세요. :");

            String name = scan.next();
            String tal = scan.next();

            phone[i] = new Phone(name , tal);
            //
        }
        System.out.print("입력 완료 했습니다."+"\n");

        while (true){
            System.out.print("검색할 이름");
            String name = scan.next();
            for(int i = 0 ; i<num; i++){
                // PHONE 객체의 갯수 만큼 입력된 이름을 검색 하기 위한 for

                if(name.equals(phone[i].getName())){
                    // 입력 받은 이름과 phone 의 이름과 같으면 입력된 번호가 출력되도록 설정

                    System.out.print(phone[i].getName()+"의 번호는"+phone[i].getTal()+"입니다.");
                    i++;
                    break;
                }
            }
            if(name.equals("그만")) break;
            // 입력된 name 이 그만 이면 while 문 종료.
        }
        scan.close();
    }
}
