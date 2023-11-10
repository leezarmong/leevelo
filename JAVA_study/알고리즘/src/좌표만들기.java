import java.util.InputMismatchException;
import java.util.Scanner;

public class 좌표만들기 {

    public void arrays(){
        Scanner scan = new Scanner(System.in);

        String[][] arr = new String[6][6];
        int rowNum ;
        int colNum ;

        while(true){
            try{
                System.out.print("rowNum :");
                rowNum = scan.nextInt();
                System.out.print("colNum");
                colNum = scan.nextInt();

                if(rowNum <0 || rowNum >4 ||colNum <0 || colNum >4){
                    System.out.print("잘못된 입력입니다.");
                }
                else{
                    break;
                }
            }
            catch (InputMismatchException e){
                System.out.print("범위 안으로 입력 바랍니다.");
                scan.nextInt();
            }
        }

        arr[rowNum][colNum]= "X";


        System.out.println("  0 1 2 3 4");

        for(int i=0; i<arr.length-1; i++){
            /*
            * arr.length-1 를 사용 하는 이유는 인덱스가 0부터 시작하기 때문에
            * 유효 인덱스 까지 반복하기 위함.
            * */
            System.out.print(i+" ");

            for(int j=0; j<arr[j].length-1; j++){
                if(arr[rowNum][colNum]==arr[i][j]){
                    arr[i][j] = "X";
                }
                else {
                    arr[i][j] = " ";
                    // 아닐 경우의 공백
                }
                System.out.print(arr[i][j]+" ");
                // 틈사이를 벌려 줄 공백 .
            }
          System.out.println();
        }
    }

    public static void main(String[] args) {
        좌표만들기 좌 = new 좌표만들기();
        좌.arrays();
    }
}
