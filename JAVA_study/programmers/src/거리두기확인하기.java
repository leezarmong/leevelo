public class 거리두기확인하기 {

    private static final int[] dx = {0, -1, 1, 0};  //좌 ,우
    private static final int[] dy = {-1, 0, 0, 1};  //상 ,하

    public int[] solution(String[][] places) {
        int[] answer = new int[places.length];

        for (int i = 0; i < answer.length; i++) {
            String[] place = places[i];
            char[][] room = new char[place.length][];

            for (int j = 0; j < room.length; j++) {
                room[j] = place[j].toCharArray();
            }
            if (!isDistances(room)) {
                answer[i] = 1;
            } else {
                answer[i] = 0;
            }
        }

        return answer;
    }

    //거리 두기 검사.
    private boolean isDistances(char[][] room) {

        for (int y = 0; y < room.length; y++) {
            for (int x = 0; x < room[y].length; x++) {

                if (room[y][x] != 'P') continue;
                // P (응시자)가 아니면 건너뛰기딩
                if (!isDistances(room, x, y)) return false;
            }
        }
        return true;
    }

    //오버로
    //room[y][x]가 거리두기를 지키는지 검사.
    private boolean isDistances(char[][] room, int x, int y) {
        for (int d = 0; d < 4; d++) {
            int nx = x + dx[d];
            int ny = y + dy[d];

            if (ny < 0 || ny >= room.length || nx < 0 || nx >= room[ny].length)
                continue;

            switch (room[ny][nx]) {
                case 'P':
                    return false;
                case 'O':
                    if (isNextToVolunteer(room, nx, ny, 3 - d)) return false;
                    break;
            }
        }
        return true;
    }

    private boolean isNextToVolunteer(char[][] room, int x, int y, int exclude) {
        for (int d = 0; d < 4; d++) {
            if (d == exclude) continue;

            int nx = x + dx[d];
            int ny = y + dy[d];

            if (ny < 0 || ny >= room.length || nx < 0 || nx >= room[ny].length)
                continue;

            if (room[ny][nx] == 'P') return true;
        }

        return false;
    }
}