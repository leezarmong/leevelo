public class 배열에서수로뒤집기 {

    //String 형 변환.
    public int nums(int[] arra) {
        int result = 0;

        String str = "";

        for (int i = arra.length - 1; i >= 0; i--) {
            str += arra[i];
        }

        return result;

    }

    //stringbuffer 사용.
    public int numss(int[] arra) {

        int[] ar = new int[arra.length];

        for (int i = 0; i < arra.length; i++) {
            ar[i] = arra[arra.length - 1 - i];
        }
        StringBuffer sb = new StringBuffer();

        for (int result : ar) {
            sb.append(result);
        }

        int answer = Integer.parseInt(sb.toString());

        return answer;

    }

}
