import java.util.ArrayList;

public class arList {

    public int[] arra(int[] num) {



        ArrayList<Integer> uniqueNums = new ArrayList<>();
        int testNum = 0;
        // 비교 대상

        for (int i = 0; i < num.length; i++) {
            if (num[i] != testNum) {
                uniqueNums.add(num[i]);
                testNum = num[i];
            }
        }

        int[] ans = new int[uniqueNums.size()];

        for (int i = 0; i < ans.length; i++) {
            ans[i] = uniqueNums.get(i);
        }

        return ans;
    }

    public static void main(String[] args){
        arList al = new arList();

        int[] b = {3,3,4,2,1,2,3,1,1,1,7};
        int[] result = al.arra(b);

        for(int n : result){
            System.out.print(n+ "");
        }
    }
}
