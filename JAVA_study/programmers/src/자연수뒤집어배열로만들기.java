public class 자연수뒤집어배열로만들기 {

    public int[] solution (long n){

        String str = Long.toString(n);
        int[] answer =new int[str.length()];

        for(int i=0; i<answer.length; i++){
            answer[i] = Integer.parseInt(str.substring(answer.length-1-i, answer.length-i));
        }

        return answer;
    }
}
