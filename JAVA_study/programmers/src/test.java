import java.util.Scanner;

public class test {

    public static void main(String[] args) {
      Scanner scan = new Scanner(System.in);

      System.out.print("문자 입력");
      String k = scan.next();

      System.out.print("찾을 단어");
      char ss = scan.next().charAt(0);


        int count =0;
        int ks =0;
      for(int i=0; i<k.length(); i++){

          char c = k.charAt(i);
          count++;

          if(c == ss){
              ks++;
          }


      }
        System.out.println("찾는 단어의 개수>"+ks);
      System.out.print("단어 개수"+count);


    }
}

