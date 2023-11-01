import java.util.Scanner;

class Phone {
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
public class PhoneBook {
    Scanner scan = new Scanner(System.in);

    int len;
    Phone phone[];
    String name;
    String num;

    public void insert(){


        System.out.print("몇명 저장 시킬 건가요?");
        len = scan.nextInt();

        phone = new Phone[len];
    }

    public void user(){
        for(int i=0; i<len; i++) {
            System.out.print("이름 과 전화번호 등록 해주세요.");
            name = scan.next();
            num = scan.next();

            phone[i] = new Phone(name ,num);
            System.out.print("입력이 완료 되었습니다.");
        }
    }
    public void getUser(){
        boolean stat = false;

        while(true){
            System.out.print("찾으실 번호의 이름을 입력:");
            name = scan.next();

            if(name.equals("그만")){
                break;
            }

            for(int i=0; i<len; i++){
                if(name.equals(phone[i].getName())){
                    System.out.print("찾으시는 번호는 "+phone[i].getNum()+"입니다.");
                    stat = true;
                }
            }
            if(stat == false)
                System.out.print("찾으시는 번호가 없습ㄴ다.");
        }
    }
    public static void main(String[] args) {

        PhoneBook pb = new PhoneBook();
        pb.insert();
        pb.user();
        pb.getUser();
    }
}