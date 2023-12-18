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

    public static void main(String[] args) {
        System.out.println(new PhoneNumber2("010-1234-5678"));
        System.out.println(new PhoneNumber2("010 1234 5678"));
        System.out.println(new PhoneNumber2("01012345678"));
    }
}
