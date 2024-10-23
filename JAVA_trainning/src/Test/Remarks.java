package Test;


import java.util.HashSet;
import java.util.Scanner;

//플레이어 class
class Player{

    //player class Scanner
    static Scanner scan = new Scanner(System.in);

    //전역변수
    String name; //참가자
    String word; //단어

    //SetName
    public void setUserNmae(){

        System.out.print("user name :");
        name = scan.next();

        this.name = name;
    }

    //GetName
    public String getName(){
        return name;
    }

    //SetWord
    public void setWord(){
        System.out.print(name+">>");
        word = scan.next();

        this.word = word;
    }

    //첫글자 마지막 글자 유효성
   public boolean checkSuccess (String lastWord){

        int lastIndex = lastWord.length()-1; // 마지막 인덱스
        char lastChar = lastWord.charAt(lastIndex); // 마지막 글자
        char firstChar = word.charAt(0); // 첫번째 글자

        if(lastChar == firstChar){
            return true;
        }
       else return false;
    }

}

//끝말잇기 class
public class Remarks {

    static Scanner scan = new Scanner(System.in); //Remarks class Scanner
    static HashSet<String> miss = new HashSet<>(); //중복검사

    //실행
    public static void run(){

        System.out.print("참가 인원 :");
        int num = scan.nextInt();

        Player[] player = new Player[num]; // 참가자 인스턴스

        //참가자 인원만큼 setUserName();
        for(int i=0; i<num; i++){
            player[i] = new Player();
            player[i].setUserNmae();
        }

        System.out.print("시작 단어는 '아버지' 입니다.");
        String lastWord = "아버지";


        int i = 0 ;//참가자 인원

        //시작 -> 중복과 틀린단어 말했을 시 탈락.
        while(true){
            player[i].setWord();

            if(miss.contains(player[i].word)){
                System.out.print("중복된 단어를 사용 하여 "+player[i].getName()+" 가 졌습니다.");
                break;
            }
            else if(!player[i].checkSuccess(lastWord)){
                System.out.print(player[i].getName()+"가 졌습니다.");
                break;
            }
        }

        miss.add(player[i].word); //단어 입력
        lastWord = player[i].word; //마지막 글자와 같으면 변경 아버지 -> 지렁이 = 지렁

        i++; //다음턴
        if(i == num){
            i=0; //턴 이 참가수 와같으면 다시 마이턴 !
        }
    }
}
