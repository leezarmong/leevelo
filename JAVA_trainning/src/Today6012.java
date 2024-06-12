import jdk.vm.ci.meta.Value;

public class Today6012 {



    //배열 뒤집기
    public int[] arra (int[] nums){
        int[] result = new int[nums.length];

        for(int i=0; i< nums.length; i++){

            result[i] = nums[nums.length-1-i];
        }

        return result;
    }

    //배열 수로 뒤집기
    public int nums (int[] arra){

        String num = "";
        for(int i=arra.length-1; i>=0; i--){

            num += arra[i];
        }

        int result = 0;
        result = Integer.parseInt(num);

        return result;
    }

    //입력한 수 배열로 뒤집기
    public int[]arra (int nums){

        String num = String.valueOf(nums);
        int[] result = new int[num.length()];

        for(int i=0; i<result.length; i++){
            result[i] = Integer.parseInt(num.substring(result.length-1, result.length-i));
        }

        return  result;
    }


    //입력한 수 배열
    public int[]arra3 (int nums){
        String num = String.valueOf(nums);
        int[] result= new int[num.length()];

        for(int i=0; i<result.length; i++){

            char c = num.charAt(i);
            result[i]= Integer.parseInt(String.valueOf(c));

        }

        return result;
    }

    //문자열 뒤집기
    public String len (String index){

        String insert = "";

        for(int i= index.length()-1; i>=0; i--){
            insert += index.substring(i,i+1);
        }

        return insert;
    }





}
