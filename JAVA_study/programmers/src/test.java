public class test {
    public static void main(String[] args) {
        int[][] arr = new int[9][9];

        for (int i = 0; i < arr.length; i++) {
            for (int j = 0; j < arr[i].length; j++) {
                arr[i][j] = (i + 2) * (j + 1);
            }
        }

        for (int i = 0; i < arr.length; i++) {
            for (int j = 0; j < arr[i].length; j++) {
                System.out.print((i + 2) + "x" + (j + 1) + " = " + arr[i][j] + "  ");
            }
            System.out.println();
        }
    }
}
