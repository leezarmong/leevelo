import java.util.HashSet;

public class Test_Set {

    public int[] array(int[] num) {
        int[] result = {};

        HashSet<Integer> setnum = new HashSet<>();
        //set 은 중복을 허용 안함.

        for (int i = 0; i < num.length; i++) {
            setnum.add(num[i]);
        }

        result = new int[setnum.size()];
        //중복을 제거한 사이즈 만큼 배열 생성.

        int index = 0;

        for (int n : setnum) {
            result[index++] = n;
        }

        return result;
    }

    public static void main(String[] args) {
        int[] b = {2, 1, 1, 7, 3, 4, 5, 5};


        Test_Set ts = new Test_Set();
        int[] result = ts.array(b);


        for (int i : result) {
            System.out.print(i + " ");
        }
    }
}
