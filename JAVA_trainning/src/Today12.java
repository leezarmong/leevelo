public class Today12 {


    public String comma (String str){

        StringBuilder result = new StringBuilder();

        int count = 0 ;
        for(int i = str.length()-1; i>=0; i--){
            result.insert(0,str.charAt(i));
            count++;

            if(count%3==0 && i>0){
                result.insert(0,",");
            }
        }

        String answer = result.toString();

        return answer;
    }

    public static void main(String[] args) {
    Today12 td = new Today12();

    String str = "1234567";

    String insert = td.comma(str);
    System.out.print(insert);
    }
}
