public class Mindelete {

    public int[] min(int[] arra) {

        if (arra.length == 1) {
            int[] result = {-1};

            return result;
        }

        for (int i = 0; i < arra.length; i++) {
            if (arra[i] >= 10) {
                int[] result = {-1};
                return result;
            }
        }

        int[] result = new int[arra.length - 1];
        int min = arra[0];

        for (int i = 0; i < arra.length; i++) {
            min = Math.min(min, arra[i]);
        }

        int index = 0;
        for (int i = 0; i < arra.length; i++) {
            if (arra[i] == min) {
                continue;
            }
            result[index++] = arra[i];
        }

        return result;
    }

    public static void main(String[] args) {
        int[] b = {1,2,3,4,5,6};

        Mindelete mi = new Mindelete();
        int[] result = mi.min(b);

        for(int i=0; i<result.length; i++){
            System.out.print(result[i]+" ");
        }
    }
}
