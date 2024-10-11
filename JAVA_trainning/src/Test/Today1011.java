package Test;

public class Today1011 {

    //문자 거꾸로
    public String re (String str){

        String resutl="";
        for(int i= str.length(); i>=0; i--){
            resutl += str.substring(i,i+1);
        }

        return "";
    }


    public static void main(String[] args) {
        // 파스칼 삼각형 만들어 볼까?

        int[][] pas = new int[7][7];

        for(int i=0; i<pas.length; i++){
            for(int j=0; j<=i; j++){


                if(j == 0 || j==i){

                    pas[i][j] = 1 ;
                }
                else{
                    pas[i][j] = pas[i-1][j-1] + pas[i-1][j];
                }

            }
        }

        for(int i=0; i<pas.length; i++){

            for(int k=pas.length; k>=i; k--){
                System.out.print(" ");
            }

            for(int j=0; j<=i; j++){
                System.out.print(pas[i][j]+" ");
            }
            System.out.println();
        }


    }
}
