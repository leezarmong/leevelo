package Test;

import java.util.Scanner;

public class Today0916 {



    // String -> reverse String
    public String str (String str){

        String resutl = "";
        for(int i=str.length()-1; i>=0; i--){
            resutl += str.substring(i,i+1);
        }
        return resutl;
    }


    // arra -> reverse arra
    public int[]arra1 (int[] arr){
        int[] result = new int[arr.length];

        for(int i=0; i<result.length; i++){

            result[i]=result[arr.length-1-i];

        }
        return result;
    }


    //arr -> reverse num
    public int num (int[]arra){

        String str = "";
        for(int i=arra.length-1; i>=0; i--){
            str += arra[i];
        }
        int result = Integer.parseInt(str);

        return result ;
    }



    //hol zzac arr
    public int[][]zharr (int[]nums){

        int zzacount = 0 ;
        int holcount = 0 ;

        for(int i=0; i<nums.length; i++){

            if(nums[i] % 2 ==0){
                zzacount++;
            }
            else{
                holcount++;
            }
        }
        int[]zzacarr = new int[zzacount];
        int[]holarr = new int[holcount];

        int zzacindex = 0;
        int holindex = 0;

        for(int i=0; i<nums.length; i++){
            if(nums[i] % 2 ==0){
                zzacarr[zzacindex++] = nums[i];
            }
            else{
                holarr[holindex++] = nums[i];
            }
        }

        int[][]result = new int[2][];

        result[0] = zzacarr;
        result[1] = holarr;
        return result;
    }

    public int[][] hzarr2 (int num){

        String str = String.valueOf(num);
        int[] numsarr = new int[str.length()];


        for(int i=0; i<numsarr.length; i++){


            numsarr[i] = Integer.parseInt(String.valueOf(str.charAt(i)));
        }






        int[][] result = new int[2][];
        return result;
    }


    public String comma (int nums){

        String str = String.valueOf(nums);

        int len = str.length();
        StringBuilder sb = new StringBuilder();

        int count = 0 ;
        for(int i = len-1; i>=0; i--){
            sb.insert(0,str.charAt(i));
            count ++;

            if(count % 3 ==0 && i >0){
                sb.insert(0,",");
            }
        }


        String result = "";

        result = sb.toString();


        return  result;
    }





    public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);

    System.out.print(": ");
    String result = scan.next();
    StringBuilder sb = new StringBuilder();

    for(int i=0; i<result.length(); i++){
        char c = result.charAt(i);

        if(Character.isUpperCase(c)){
            sb.append(Character.toLowerCase(c));
        }
        else{
            sb.append(Character.toUpperCase(c));
        }
    }

    String k = sb.toString();
    System.out.print(k);


    }



}
