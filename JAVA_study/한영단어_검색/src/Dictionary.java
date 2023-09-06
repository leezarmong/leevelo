import java.util.Scanner;

class Dictionary {
    private static String[] kor = {"사랑","아기","돈","미래","희망"};
    private static String[] eng = {"love","baby","money","future","hope"};
    //한영 번역 할 배열.


    private static String kor2eng(String word){

        for(int i = 0 ; i<kor.length; i++){
            //kor 배열의 길이 중에서
            if(word.equals(kor[i])){
                //입력한 값과 kor 이 같다면
                return eng[i];
                //해당 길이와 같은 eng return.
            }
        }

        return null;
    }
    public static class DicApp{
        // 실행 어플.
        Scanner scan = new Scanner(System.in);
        String word;

        public void run(){
        //실행 메소드.

            while (true){

                System.out.print("\"사랑\",\"아기\",\"돈\",\"미래\",\"희망\" 중 하나 입력 :");
                word = scan.next();
                // String 입력.

                if(word == null){
                    //word 가 해당하지 않을 경우 while 중지.
                    break;
                }

                String result = Dictionary.kor2eng(word);
                //word 를 번역하기위해 result 로 초기화.

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


