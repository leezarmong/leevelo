public class arrays_test {

    public static void main(String[] args){

        int[][] b = new int[4][];

        b[0] = new int[4];
        b[1] = new int[2];
        b[2] = new int[1];
        b[3] = new int[3];


        for(int i= 0; i<b.length; i++){
            for(int j = 0 ; j<b[i].length; j++){

                b[i][j]=(i+1)*10 +j;
//                b[i][j]=50 +j;
            }
        }

        for(int i= 0; i<b.length; i++){
            System.out.println();
            for(int j = 0 ; j<b[i].length; j++){

               System.out.print(b[i][j]+" ");
            }
        }




    }
}
