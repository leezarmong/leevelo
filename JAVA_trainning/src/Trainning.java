import java.util.Arrays;

public class Trainning {

    public int[] solution(String[] shirtSize){
    int[] answer = new int[6];


    for(int i=0;i<shirtSize.length;i++){

        if(shirtSize[i].equals("XS")){
            answer[0]++;
        }
        if(shirtSize[i].equals("S")){
            answer[1]++;
        }
        if(shirtSize[i].equals("M")){
            answer[2]++;
        }
        if(shirtSize[i].equals("L")){
            answer[3]++;
        }
        if(shirtSize[i].equals("XL")){
            answer[4]++;
        }
        if(shirtSize[i].equals("XXL")){
            answer[5]++;
        }
    }
    return answer;
    }

    public static void main(String[] args) {
        Trainning tr = new Trainning();

        String[] arra = {"XS","S","L","L","XL","S"};
        int[] ans = tr.solution(arra);

        System.out.print("반환값은 "+ Arrays.toString(ans)+"입니다.");

    }
}
