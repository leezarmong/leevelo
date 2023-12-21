public class 삼각달팽이 {

    public int[] solution(int n) {
        int[][] tri = new int[n][n];
        int x = 0;
        int y = 0;
        int count = 1;


        //삼각형에 원소 집어 넣는 while 문
        while (true) {

            // 아래로 내리는 while
            while (true) {
                tri[y][x] = count++; // 증가값 대입
                if (y + 1 == n || tri[y + 1][x] != 0) break;
                y += 1;
            }
            if (x + 1 == n || tri[y][x + 1] != 0) break;
            x += 1;

            //오른쪽 while
            while (true) {
                tri[y][x] = count++;

                if (x + 1 == n || tri[y][x + 1] != 0) break;
                x += 1;
            }
            if (tri[y - 1][x - 1] != 0) break;
            x -= 1;
            y -= 1;

            //위쪽 while
            while(true){
                tri[y][x]= count++;

                if(tri[y-1][x-1]!= 0) break;
                x-=1;
                y-=1;
            }
            if(y+1 == n || tri[y+1][x]!= 0) break;
            y+=1;

        }

        int result[] = new int[count-1];
        int index =0 ;
        for(int i=0; i<n; i++){
            for(int j=0; j<=i; j++){
                result[index++] = tri[i][j];
            }
        }


        return result;
    }

    public static void main(String[] args) {
        삼각달팽이 snowflake = new 삼각달팽이();
        int n = 5;
        int[] result = snowflake.solution(n);

        int rowCount = 1;
        int index = 0;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < rowCount; j++) {
                System.out.print(result[index] + " ");
                index++;
            }
            rowCount++;
            System.out.println();
        }
    }
}
