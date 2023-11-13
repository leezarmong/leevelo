import java.util.HashSet;
import java.util.InputMismatchException;
import java.util.Scanner;

class Player{
    String name; // 참가자 이름
    String word; // 참가지 단어

    public void userName() {
        Scanner scan = new Scanner(System.in);
        System.out.print("참가자 이름 :");

        name = scan.next();
        this.name= name;
    }
    public String getName(){
        return name;
    }

    public void getWordFromUser(){ // 참가자로 부터 단어를 입력 받는다.
        Scanner scan = new Scanner(System.in);
        System.out.print(name+" >>");

        word = scan.next();
        this.word = word;
    }

    public boolean checkSuccess(String lastWord){ // 끝말잇기의 성공여부 판별
        int lastIndex = lastWord.length()-1; // 마지막 문자
        char lastChar = lastWord.charAt(lastIndex);// 마지막 문자 하나 를 char 로변경
        char firstChar = word.charAt(0); // 첫번째 문자

        if(lastChar == firstChar){
            return true;
        }
        else return  false;
    }
}
public class 끝말잇기 {
    static Scanner scan = new Scanner(System.in);
    static HashSet<String> miss = new HashSet<>();

    public static void run(){

        System.out.print("참가하는 인원 의 수");
        int num = scan.nextInt();

        Player player[] = new Player[num];

        for(int i=0; i<num; i++){
            player[i] = new Player();
            player[i].userName();
        }

        System.out.print("시작하는 단어는 아버지 입니다.");
        String lastWord = "아버지";

        int i=0;

        while (true){
            player[i].getWordFromUser();

            if(miss.contains(player[i].word)){
                System.out.print("중복된 단어를 사용 하여 "+player[i].getName()+" 가 졌습니다.");
                break;
            }

            if(!player[i].checkSuccess(lastWord)){
                    System.out.print(player[i].getName()+"가 졌습니다.");
                    break;
            }

            miss.add(player[i].word);
            lastWord = player[i].word;
            //마지막 글과 같으면 입력한 글자로 변경.

            i++;
            if(i == num) { // 참가 수 이후 첫번째 참가자로 돌아감.
                i = 0;
            }
        }
    }

    public static void main(String[] args) {
        System.out.println("끝말잇기 게임을 시작합니다...");

        while(true) {
            try {
                run(); // 게임 진행

                while(true) { // 게임을 계속하는 지 판별
                    System.out.print("게임을 다시 하시겠습니까(네/아니오)>>");
                    String restart = scan.next();

                    if(restart.equals("네")) {
                        System.out.println("끝말잇기 게임을 시작합니다...");
                        break; // 안쪽 while문을 빠져나가 바깥쪽 while문 진행
                    }
                    else if(restart.equals("아니오")) {
                        System.out.println("끝말잇기 게임을 종료합니다...");
                        System.exit(0); // 시스템 종료
                    }
                    else {
                        System.out.println("잘못된 입력입니다.");
                        continue; // 안쪽 while문 진행
                    }
                }
            }
            catch(InputMismatchException e) { // 참가 인원 입력값이 숫자가 아닐 경우
                System.out.println("잘못된 입력입니다.");
                scan.nextLine(); // 입력값 clear
                continue; // 바깥쪽 while문 진행
            }
        }
    }
}


