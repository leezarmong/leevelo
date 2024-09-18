package Test;

public class Today0918 {

    public int[] arr(int nums){

        String t = String.valueOf(nums);
        String[] arr = t.split("");

        int max , min ;
//        int num;

        max = min = Integer.parseInt(arr[0]);

        for(int i=0; i<arr.length; i++){
//            num = Integer.parseInt(arr[i]);
//
//            if(min > num){
//                min = num;
//            }
//            if(max < num){
//                max = num;
//            }

            max = Math.max(max,Integer.parseInt(arr[i]));
            min = Math.min(min, Integer.parseInt(arr[i]));
        }

        int[] answer = new int[2];

        answer[0] = min;
        answer[1] = max;

        return answer;
    }



    public int[] arr (int[] nums){

        int[] answer = new int[2];
        int max , min, num ;

        max = min = nums[0];

        for(int i=0; i<nums.length; i++){
            num = nums[i];
            max = Math.max(max,nums[i]);
            min = Math.min(min,nums[i]);

        }

        answer[0] = max;
        answer[1] = min;

        return answer;
    }

    public static void main(String[] args) {
        Today0918 td = new Today0918();
        int k = 123456;
        int[] answer = td.arr(k);

        for( int n : answer){
            System.out.print(n+" ");
        }
    }

}
