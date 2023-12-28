public class 행렬의곱셈 {

    public int[][] solution(int[][] arr1, int[][] arr2) {

        int row = arr1.length;      //가로
        int col = arr2[0].length;   //세로

        int[][] answer = new int[row][col];

        for(int i=0; i<answer.length; i++){
            for(int j=0; j<answer[i].length; j++){
                answer[i][j]= 0;

                for(int k=0; k<arr1[i].length; k++){
                    answer[i][j] += arr1[i][k] * arr2[k][j];
                }
            }
        }
        return answer;
    }

    public static void main(String[] args) {
        int[][] arr1 = {{1, 4}, {3, 2}, {4, 1}};
        int[][] arr2 = {{3, 3}, {3, 3}};

        행렬의곱셈 matrixMultiplication = new 행렬의곱셈();
        int[][] result = matrixMultiplication.solution(arr1, arr2);

        // Printing the result
        System.out.println("Result:");
        for (int[] row : result) {
            for (int col : row) {
                System.out.print(col + " ");
            }
            System.out.println();
        }

    }
}
