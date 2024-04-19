public class Today419 {

    public int[] maxmin(int[] array) {

        int[] result = new int[2];

        int max = array[0];
        int min = array[0];

        for (int i = 0; i < array.length; i++) {
            max = Math.max(array[i], max);
            min = Math.min(array[i], min);
        }

        result[0] = max;
        result[1] = min;

        return result;
    }

    public static void main(String[] args) {

        Today419 to4 = new Today419();

        int[] k = {1,2,3,4,5};
        int[] result = to4.maxmin(k);

        System.out.println(result[0]+" "+result[1]);

    }
}
