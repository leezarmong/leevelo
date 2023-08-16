public class MinDele {


    public int[] nums (int[] arra){

        int len = arra.length;
//        arra 배열의 길이 를 len 으로 선언 해주며
//        길이가 1 또는 10을 넘을 경우 -1 을 반환해준다.

        if(len == 1){
            int result[] = {-1};
            return result;
        }

        if(len >= 10){
            int result[] = {-1};

            return result;
        }

        int[] result = new int[arra.length-1];
        // 배열의 최솟값을 뺀 나머지를 출력하기 위한 배열

        int min = 0 ;
        int index = 0 ;
        // for 문에 하나씩 증가 시켜줄 index 선언

        min = arra[0];
        // min 을 배열의 첫번째로 초기화.


        for(int i = 0 ; i<arra.length; i++){
            min = Math.min(arra[i] , min);
            //Math 메소드를 사용하여 min을 배열의 최솟값으로 초기화

            if(arra[i] == min){
                continue;
                // 배열의 값이 최솟값과 같으면 continue
            }

            result[index++] = arra[i];
            // 최솟값이 걸러진 상태에서 생성된 배열에 인덱스를 하나씩 추가해준다.
        }
        return result;
    }

    public static void main(String[] args) {
        MinDele md = new MinDele();
        int[] b = {1,2,3,4,5};
        int[] result = md.nums(b);

        for(int n : result){
            System.out.print(n+" ");
        }

    }
}
