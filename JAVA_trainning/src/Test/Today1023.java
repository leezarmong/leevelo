package Test;

import java.util.Scanner;

public class Today1023 {



    public String upDown(String str){

        StringBuilder sb = new StringBuilder();

        char c ;

        for(int i=0; i<str.length(); i++){

            c = str.charAt(i);
            if(i%2==0){
                sb.append(Character.toUpperCase(c));

            }
            else{
                sb.append(Character.toLowerCase(c));
            }


        }

        String result = sb.toString();
        return result;
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        Today1023 td = new Today1023();

        System.out.println("insert : ");
        String str = scan.next();


        String result =td.upDown(str);
        System.out.print(result);
    }
}
