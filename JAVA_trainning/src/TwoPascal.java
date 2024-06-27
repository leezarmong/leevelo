public class TwoPascal {


    public void trai(){

        int[][] pas = new int[7][7];


        for(int i=0; i<pas.length; i++){
            for(int j=0; j<=i; j++){


                if(j == 0 || j == i){
                    pas[i][j] = 1;
                }
                else{
                    pas[i][j] = pas[i-1][j-1]+pas[i-1][j];
                }
               
            }
        }


        for(int i=0; i<pas.length; i++){
            for(int j = 0 ;j<=i; j++){
                System.out.print(pas[i][j]+" ");
            }
            System.out.println();
        }

    }

    public static void main(String[] args) {
        TwoPascal tw = new TwoPascal();

        tw.trai();
    }
}
