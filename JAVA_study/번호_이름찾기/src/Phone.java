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

        System.out.print("몇명 까지 만들까요? :");
        int num = scan.nextInt();

        phone = new Phone[num];

        for(int i = 0 ; i<phone.length; i++){
            System.out.print("이름과 번호를 입력해 주세요. :");

            String name = scan.next();
            String tal = scan.next();

            phone[i] = new Phone(name , tal);
        }
        System.out.print("입력 완료 했습니다."+"\n");

        while (true){
            System.out.print("검색할 이름");
            String name = scan.next();
            for(int i = 0 ; i<num; i++){
                if(name.equals(phone[i].getName())){
                    System.out.print(phone[i].getName()+"의 번호는"+phone[i].getTal()+"입니다.");
                    i++;
                    break;
                }
            }
            if(name.equals("그만")) break;
        }
        scan.close();
    }
}
