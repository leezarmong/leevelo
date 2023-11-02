import java.util.InputMismatchException;
import java.util.Scanner;

class Member{
    String name;
    String word;


     //입력 받은 이름
     // 입력 받은 생성자
     public void userName(){
         Scanner scan = new Scanner(System.in);

         System.out.print("이름을 입력해 주세요.");
         name = scan.next();
         this.name = name;
     }

    // 입력 받은 생성자
    public void userWord(){
        Scanner scan = new Scanner(System.in);

        System.out.print(name+" ");
        word = scan.next();
        this.word = word;
    }

    public boolean checkSuccess(String lastWord){
       int lastIndex = lastWord.length()-1;
       char lastChar = lastWord.charAt(lastIndex);
       char firstChar = word.charAt(0);

       if(lastChar == firstChar){
           return  true;
       }
       else return  false;

    }
}

public class 끝말잇기 {
    static Scanner scan = new Scanner(System.in);

    public static void run(){
//        System.out.print("참가자는 몇명입니까?");
//        int num = scan.nextInt();
        int num = 0;
        while(true){
            System.out.print("몇명 참가 하시나요? (2~5명 까지 가능합니다.)");
            try{
                num =scan.nextInt();
                if(num >1 && num < 6){
                    break;

                }else{
                    System.out.println("2~5명 까지 가능합니다. 다시 입력해 주세요.");
                }
            }
            catch (InputMismatchException e){
                System.out.println("수를 입력해 주세요");
               scan.nextLine();
            }
        }



        Member[] mem = new Member[num];

        for(int i=0; i<num; i++){
            mem[i]=new Member();
           mem[i].userName();
        }

        System.out.print("시작단어는 아버지 입니다. :");
        String lastWord = "아버지";

        int i=0;
        while (true){
            mem[i].userWord();

            if(!mem[i].checkSuccess(lastWord)){
                System.out.print(mem[i].name+"이 졌습니다.");
                break;
            }
            lastWord = mem[i].word;
            // 새로 입력한 단어를 초기 화..
            i++;

            if(num ==i){
                // 입력한 인원수와 while 이 같은 횟수가 되면 0 으로 초기화 해준다.
                i=0;
            }
        }
    }

    public static void main(String[] args) {
        System.out.print("게임을 진행합니다.");

        while (true){
            try{
                run();

                while(true){
                    System.out.print("게임을 다시 진행하시겠습니까?  네/아니오");
                    String restart = scan.next();

                    if(restart.equals("네")){
                        System.out.println("끝말잇기 게임을 시작합니다...");
                        break; // 안쪽 while문을 빠져나가 바깥쪽 while문 진행
                    }
                    else if(restart.equals("아니오")){
                        System.out.print("게임을 종료합니다.");
                        System.exit(0);
                    }
                    else{
                        System.out.print("잘못된 입려입니다.");
                    }
                }

            }
            catch (InputMismatchException e){
                System.out.print("잘못된 입력입니다.");
                scan.nextLine();

            }
        }

    }
}
