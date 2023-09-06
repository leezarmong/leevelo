import java.util.Scanner;

class Dictionary {
    private static String[] kor = {"사랑","아기","돈","미래","희망"};
    private static String[] eng = {"love","baby","money","future","hope"};



    private static String kor2eng(String word){

        for(int i = 0 ; i<kor.length; i++){
            if(word.equals(kor[i])){
                return eng[i];
            }
        }

        return null;
    }
    public static class DicApp{

        Scanner scan = new Scanner(System.in);
        String word;

        public void run(){

            while (true){

                System.out.print("\"사랑\",\"아기\",\"돈\",\"미래\",\"희망\" 중 하나 입력 :");
                word = scan.next();

                if(word == null){
                    break;
                }

                String result = Dictionary.kor2eng(word);
                if(result == null){
                    System.out.print("그러한 단어는 없다. 다시 입력하세요."+"\n");
                }
                else{
                    System.out.print(word+"는(은) "+result+" 입니다."+"\n");
                }
            }
        }
    }

    public static void main(String[] args) {
       DicApp dicapp = new DicApp();

        System.out.print("한글 번역기 입니다."+"\n");
        dicapp.run();
    }
}


