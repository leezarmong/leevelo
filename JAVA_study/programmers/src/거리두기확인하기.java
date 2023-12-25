public class 거리두기확인하기 {

    private static final int[] dx ={0,0,-1,1};  //좌 ,우
    private static final int[] dy ={-1,1,0,0};  //상 ,하

    public int[] solution (String[][] places){
        int[] answer = new int[places.length];

        for(int i=0; i<answer.length; i++){
            String[] place = places[i];
            char[][] room = new char[place.length][];

            for(int j =0; j<room.length; j++){
                room[j] =place[j].toCharArray();
            }
        }

        return  answer;
    }

    //거리 두기 검사.
    private boolean isDistances (char[][]room){

        for(int i=0; i<room.length; i++){
            for(int j=0; j<room[i].length; j++){

                if(room[i][j] != 'P') continue;
                // P (응시자)가 아니면 건너뛰기딩
                if(!isDistances(room,i,j))return false;
            }
        }
        return true;
    }

    //오버로
    //room[y][x]가 거리두기를 지키는지 검사.
    private boolean isDistances (char[][]room , int x ,int y){
        return true;
    }
}