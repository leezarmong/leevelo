public class ArrayNums {

    public static void array (){
        int[][] arr = new int[4][4];


        for(int i=0; i<arr.length; i++){

            for(int j=0; j<arr[i].length; j++){
             arr[i][j] = (int)(Math.random()*10);
            }
        }

        for(int i=0; i<arr.length; i++){

            for(int j=0; j<arr[i].length; j++){

                System.out.print(arr[i][j]+" ");
            }
            System.out.println();
        }



    }

    public static void main(String[] args) {
        array();
    }
}
