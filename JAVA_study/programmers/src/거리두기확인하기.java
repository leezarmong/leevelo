public class 거리두기확인하기 {

    public int[] solution (String [][] places){
        int[] answer = new int[places.length];

        for(int i=0; i<answer.length; i++){
            String [] place = places[i];
            char[][] room = new char[place.length][];

            for(int j=0; j<room.length; j++){
                room[j] = place[j].toCharArray();
            }
            if(isDistanced(room)){
                answer[i]=1;
            }
            else{
                answer[i]=0;
            }

        }
        return new int[1];
    }

    private boolean isDistanced (char[][] room){

        return false;
    }
}