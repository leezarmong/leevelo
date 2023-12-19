public class 삼각달팽이 {

    public static void main(String[] args) {

        int[][] b= new int[5][];

        b[0]= new int[0];
        b[1]= new int[1];
        b[2]= new int[2];
        b[3]= new int[3];
        b[4]= new int[4];

        int count=1;
        for(int i=0; i<b.length; i++){

           for(int j=0; j<i; j++){

               b[i][j]=  count++;
           }
        }


        for(int i=0; i<b.length; i++){

            for(int j=0; j<b[i].length; j++){

                System.out.print(b[i][j]+" ");
            }
            System.out.println();
        }

    }
}
