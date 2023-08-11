import java.util.HashSet;

public class Redundancy_int {


    public int[] re (int[] nums){

        int[] result= {};

        HashSet<Integer>testnum = new HashSet<>();
        //HashSet  = Set 인터페이스를 구현한 객체 이고 순서가 없고 데이터의 집합 이며 데이터의 중복을 허용하지 않는다.
        for(int n : nums){
            testnum.add(n);
        }

        result = new int[testnum.size()];
        //중복을 허용해주지 않은 크기 만큼 배열을 선언한다.

        int index = 0;

        for(int n : testnum){
            result[index++] = n;
        }
        // 인덱스 에다가 전에 크기의 사이즈 만큼 정수를 넣어준다.

        return  result;
    }

    public static void main(String[] args) {
        Redundancy_int red = new Redundancy_int();
        int[] b = {1,1,1,1,2,3,4,5,5};
        int result[] = red.re(b);

        for(int i : result){
            System.out.print(i+" ");
        }
    }

}
