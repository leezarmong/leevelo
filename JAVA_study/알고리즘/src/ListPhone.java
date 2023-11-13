import java.util.ArrayList;
import java.util.Scanner;

class BookUser{
    public String name;
    public String phone;

    public BookUser(String name , String phone){
        this.name = name;
        this.phone = phone;
    }

    public String getName(){
        return name;
    }
    public String getPhone(){
        return phone;
    }
}

public class ListPhone {

    static ArrayList<BookUser> list = new ArrayList<BookUser>();
    static Scanner scan = new Scanner(System.in);

    public static void serch(){
        System.out.print("몇명 입력하시겠습니까? :");
        int num = scan.nextInt();

        for(int i=0; i<num; i++){
            System.out.print("이름 입력 :");
            String name = scan.next();

            System.out.print("번호 입력 :");
            String phone = scan.next();

            BookUser bookuser = new BookUser(name, phone);
            list.add(bookuser);

        }

        while(true){

            System.out.print("찾으시는 번호의 이름은? / 종료>>그만");
            String name = scan.next();

            if(name.equals("그만")){
                System.out.print("종료");
                break;
            }

            boolean found = false;
            for(int i=0; i<list.size(); i++){

                //list 의 원소i 를 user 로 바운딩
                //객체 에 접근 시킴.
                BookUser user = list.get(i);

                if(name.equals(user.getName())){
                    System.out.print("찾으시는"+user.getName()+"님의 번호는 "+user.getPhone()+"입니다.");
                found =true;
                }

            }

            if(!found){
                System.out.print("찾으시는 분의 이름이 없습니다.");
            }
        }
    }

    public static void main(String[] args) {
        serch();
    }
}
