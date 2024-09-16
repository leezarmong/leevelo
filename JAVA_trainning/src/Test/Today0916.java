package Test;

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


    public static void main(String[] args) {
        Today0916 td = new Today0916();

        int[] arrnums = {1,2,3,4,5,6};

        int[][] arr = td.zharr(arrnums);

        System.out.print("짝수 :");
        for(int n : arr[0]){
            System.out.print(" "+n);
        }

        System.out.println();
        System.out.print("홀수 :");
        for(int n : arr[1]){
            System.out.print(" "+n);
        }
    }
}
