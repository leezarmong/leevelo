public class MaxMin {

    public String b (String nums){
        String[] result=nums.split(" ");

        int min = 0 ;
        int max = 0 ;

        min = max = Integer.parseInt(result[0]);

        for(int i = 0 ; i<result.length; i++){
            min = Math.min(min , Integer.parseInt(result[i]));
            max = Math.max(max , Integer.parseInt(result[i]));
        }

        return max+" "+min;
    }

    public static void main(String[] args) {

        String k = "1 2 3 4";

        MaxMin mx = new MaxMin();

        System.out.println(mx.b(k));
    }
}
