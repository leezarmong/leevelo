package Test;

public class Today0906 {


    public void arra (){


        int[][] numArray = new int[7][7];

        for(int i=0; i<numArray.length; i++){
            for(int j=0; j<=i; j++){


                if(j ==0 || j==i){
                    numArray[i][j] = 1;
                }
                else{

                    numArray[i][j] = numArray[i-1][j-1]+ numArray[i-1][j];
                }
            }
        }

        for(int i=0; i<numArray.length; i++){
            for(int k=numArray.length; k>i; k--){
                System.out.print(" ");
            }


            for(int j=0; j<=i; j++){
                System.out.print(numArray[i][j]+" ");
            }
            System.out.println();
        }

    }

    public static void main(String[] args) {

        Today0906 td = new Today0906();
        td.arra();
    }
}
