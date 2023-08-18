import java.util.Scanner;

public class LastNum {

    public String star (String nums){


        String sn = nums.replace("-","");
        // 010-1234-1234 로 들어올 경우 - 를 공백으로 replace.

        String star ="";
        //star 담을 String 선언

        for(int i = 0 ; i< sn.length()-4; i++){
                            // length 의 -4 는 뒤에서 4번째 를 뜻한다.

            star += "*";
            // 뒤에서 4번째가 될때까지 그전에는 star 에 * 를 추가.
        }

        star+= sn.substring(sn.length()-4);
        // 추가된 * 에 substring으로 나머지 4개의 번호를 붙인다.

        return star ;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("insert (-):");
        String k = scan.next();

        LastNum ln = new LastNum();
        System.out.print(ln.star(k));

    }
}
