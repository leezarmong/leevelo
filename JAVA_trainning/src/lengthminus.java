public class lengthminus {

    public int[]array (int[] nums){


        // 길이가 1 이면 -1 반환
        if(nums.length == 1) {
            int[] result = {-1};

            return result;
        }
        int[]result= new int[nums.length-1];
       int min = nums[0] ;
       //최솟값

        int index = 0 ;
        // 나머지 인덱스

        for(int i = 0 ;i<nums.length; i++){
            min = Math.min(min,nums[i]);
        }
        //최솟값 구하기

        for(int i = 0 ;i<nums.length; i++){
           if(nums[i] == min){
               continue;
               // 최솟값 이랑 같으면 넘기기
           }
           result[index++]= nums[i];
        }


        return result;
    }

    public static void main(String[] args) {
        int[] b = {1,2,3,4,5};

        lengthminus le = new lengthminus();

        int[] result = le.array(b);


        for(int i : result){
            System.out.print(i+" ");
        }

    }
}
