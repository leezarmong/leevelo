public class Trainning {


    public String Maxmin (String nums){

        String[] result = nums.split(" ");

        int max = 0 ;
        int min = 0 ;
        max = min= Integer.parseInt(result[0]);
        // 들어오는 매개변수가 String 이어서 int 로 형 변환을 해준다.


        for(int i = 0 ; i< result.length; i++){

            max = (Math.max(max, Integer.parseInt(result[i])));
            min = (Math.min(min, Integer.parseInt(result[i])));

            /*
            *  int n 을 result[i] 로 초기화 해줘도 좋지만
            * Math 함수를 써서 형변환후 바로 바꿔주도록 했다.
            *
            * */

        }


        return min + " " + max;
    }
    public static void main (String[] args){
        String str = "1 2 3 4";
        Trainning minMax = new Trainning();

        System.out.println("최대값과 최소값은?" + minMax.Maxmin(str));
    }
}
