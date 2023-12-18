import java.util.ArrayList;
import java.util.List;

public class PhoneNumber {

    private static class PhoneNumber2{
        public final String phoneNumber;

        public PhoneNumber2(String rawPhoneNumber){
            this.phoneNumber=rawPhoneNumber.replaceAll("[^0-9]","");
        }

      @Override
        public String toString(){
            return "PhoneNumber{"+"phoneNumber='"+phoneNumber+'\''+'}';
        }
    }

    private static class Person {
        public final String name;
        private final List<PhoneNumber2> numbers;

        public Person(String name){
            this.name = name;
            numbers = new ArrayList<>();
        }


        // number 가 전화번호 형식이면 추가하고 true 반환
        // 전화번호 형식이 아니면 추가하지 않고 false 반환

       public void addPhoneNumber(PhoneNumber2 number){
            numbers.add(number);
       }

        public boolean addPhoneNumber(String number){

            for(char c : number.toCharArray()){
                if(!Character.isDigit(c)){
                    return false;
                }
            }
            numbers.add(number);
            return true;
        }

    }

    public static void main(String[] args) {
        System.out.println(new PhoneNumber2("010-1234-5678"));
        System.out.println(new PhoneNumber2("010 1234 5678"));
        System.out.println(new PhoneNumber2("01012345678"));
    }
}
