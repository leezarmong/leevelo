import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class Solution15 {
    /*
    * 배열 arr가 주어집니다. 배열 arr의 각 원소는 숫자 0부터 9까지로 이루어져 있습니다.
    * 이때, 배열 arr에서 연속적으로 나타나는 숫자는 하나만 남기고 전부 제거하려고 합니다.
    * 단, 제거된 후 남은 수들을 반환할 때는 배열 arr의 원소들의 순서를 유지해야 합니다. 예를 들면,

    arr = [1, 1, 3, 3, 0, 1, 1] 이면 [1, 3, 0, 1] 을 return 합니다.
    arr = [4, 4, 4, 3, 3] 이면 [4, 3] 을 return 합니다.
    배열 arr에서 연속적으로 나타나는 숫자는 제거하고 남은 수들을 return 하는 solution 함수를 완성해 주세요.

    */

    public int[] solution(int[] arr) {
        int[] answer = {};

        ArrayList<Integer> list = new ArrayList<>();

        int num =-1;
        //여기에서 -1로 초기화하는 이유는 중복된 숫자를 체크하기 위한 특별한 값이 필요하기 때문입니다.
        // 만약 num을 0으로 초기화한다면,
        // 배열 arr의 첫 번째 원소와 0을 비교할 때 중복으로 간주될 수 있으며,
        // 이로 인해 중복된 숫자가 부정확하게 제거될 수 있습니다.

        for(int i=0; i<arr.length; i++){
            if(arr[i]!=num){
                list.add(arr[i]);
                num = arr[i];
            }
        }

        answer = new int[list.size()];

        for(int i=0; i<list.size(); i++){
            answer[i] = list.get(i);
        }

        return answer;
    }

    public static void main(String[] args) {
        int[] k = {4,4,4,3,3};
        Solution15 so = new Solution15();
        int[] result = so.solution(k);

        System.out.print(Arrays.toString(result));
    }
}
