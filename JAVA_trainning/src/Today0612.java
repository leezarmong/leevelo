import java.util.Arrays;
import java.util.Collections;
import java.util.InputMismatchException;
import java.util.Scanner;

public class Today0612 {

    //문자열 뒤집기
    public String str (String len){

        String result = "";

        for(int i= len.length()-1; i>=0; i--){

            result += len.substring(i,i+1);

        }
        return result;
    }

    //입력한 배열 배열 뒤집기
    public int[] ara (int[] nusm){

        int[] result = new int[nusm.length];

        for(int i=0; i<nusm.length; i++){
            result[i] = nusm[nusm.length-1-i];
        }
        return result;
    }

    //입력한 배열 수로 뒤집기
    public int nunj (int[] arr ){

        int result = 0 ;
        String str = "";

        for(int i = arr.length-1 ; i>=0; i--){
            str += arr[i];
        }

        result = Integer.parseInt(str);

        return result ;
    }

    //배열 수
    public int nums4 (int[]aara){
        String str = "";
        int result = 0;

        for (int i=0; i<aara.length; i++){
            str += aara[i];
        }
        result =Integer.parseInt(str);



        return result;
    }

    //오름 내림 차순
    public int sol (int nums){
        String[] k = Integer.toString(nums).split("");
        Arrays.sort(k);
        //오름차순

        Arrays.sort(k,Collections.reverseOrder());
        //내림차순
        int result = 0;
        String index = "";

        for(String str : k){
            index += str;
        }

        result = Integer.parseInt(index);

        return result;
    }


    //입력한 수 배열로 뒤집기
    public int[]arra2 (int nums){
        String str = String.valueOf(nums);
        int[] result = new int[str.length()];

        for(int i=0; i<result.length; i++){

            result[i] = Integer.parseInt(str.substring(result.length-1,result.length-i));
        }
        return  result;
    }

    //입력한 수 배열

    public int[] arra12 (int nums){

        String str = String.valueOf(nums);
        int[] result=new int[str.length()];


        for(int i=0; i<result.length; i++){
            char c = str.charAt(i);

            result[i] = Integer.parseInt(String.valueOf(c));
        }

        return  result;
    }

    //comma
    public String comma (String nums){

        StringBuilder sb = new StringBuilder();
        int count = 0 ;


        for(int i= nums.length()-1 ; i>=0; i--){
            count++;
            sb.insert(0,nums.charAt(i));
            if(count%3==0){
                sb.insert(0,",");
            }
        }
        String result = sb.toString();

        return result;
    }


    //홀짝 나누기
    public int[][] zzachol (int[] nums){


        int zzaccount = 0 ;
        int holcount = 0 ;

        for(int i=0; i<nums.length; i++){
            if(nums[i] %2 ==0){
                zzaccount++;
            }
            else{
                holcount++;
            }
        }

        int[]zzacarra = new int[zzaccount];
        int[]holarra = new int[holcount];

        int zzacindex = 0 ;
        int holindex = 0 ;

        for(int i=0; i<nums.length; i++){

            if(nums[i]%2 ==0){
                zzacarra[zzacindex++]= nums[i];
            }
            else
                holarra[holindex++]=nums[i];
        }

        int[][] result = new int[2][];

        result[0]= zzacarra;
        result[1]=holarra;

        return result;
    }

    public void arra(){

        Scanner scan = new Scanner(System.in);

        String[][] arr = new String[6][6];

        int rowNum;
        int colNum;
        while (true) {
            try {
                System.out.print("row 좌표 1~4 : ");  //행
                rowNum = scan.nextInt();

                System.out.print("col 좌표 1~4 : ");  //
                colNum = scan.nextInt();

                if (rowNum < 0 || rowNum > 4 || colNum < 0 || colNum > 4) {
                    System.out.println("잘못된 범위 입니다.");
                } else {
                    break;
                }
            } catch (InputMismatchException e) {
                System.out.println("잘못된 입력입니다.");
                scan.next(); // Use scan.next() to consume the invalid input
            }
        }

        arr[rowNum][colNum] = "";
        System.out.println("  0 1 2 3 4");

        for (int row = 0; row < arr.length; row++) {
            System.out.print(row + " ");

            for (int col = 0; col < arr[row].length; col++) {
                if (arr[rowNum][colNum].equals(arr[row][col])) {
                    arr[row][col] = "X";
                } else {
                    arr[row][col] = " ";
                }
                System.out.print(arr[row][col] + " ");
            }
            System.out.println();
        }
    }


    public int[]miara (int[]arra){

        for(int i=0; i<arra.length; i++){

            if(arra[i] >=10){
                int[] result = {-1};

                return result;
            }
        }


        int[] result = new int[arra.length-1];
        int min = arra[0];
        int index = 0 ;

        for(int i=0; i<arra.length; i++){

            min = Math.min(arra[i],min);
        }

        for(int i=0; i<arra.length; i++){
            if(arra[i] == min){
                continue;
            }
            result[index++]= arra[i];
        }

        return  result;
    }



    public static void main(String[] args) {


        Today0612 td = new Today0612();

        int[] k = {1,2,3,4,5};

        int[] result =td.miara(k);

        for (int i = 0; i < result.length; i++) {
            System.out.print(result[i] + " ");
        }



    }
}
