public class Trainning {


    public String Maxmin (String nums){

        String[] result = nums.split(" ");

        int max = 0 ;
        int min = 0 ;
        max = min= Integer.parseInt(result[0]);

        for(int i = 0 ; i< result.length; i++){

            max = (Math.max(max, Integer.parseInt(result[i])));
            min = (Math.min(min, Integer.parseInt(result[i])));
        }


        return min + " " + max;
    }
    public static void main (String[] args){
        String str = "1 2 3 4";
        Trainning minMax = new Trainning();

        System.out.println("최대값과 최소값은?" + minMax.Maxmin(str));
    }
}
