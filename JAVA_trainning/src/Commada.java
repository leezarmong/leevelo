public class Commada {

    public String arra(String nums) {
        int len = nums.length();
        int count = 0;

        StringBuilder sb = new StringBuilder(nums); // Using the input string directly

        for (int i = len - 1; i >= 0; i--) { // Fixing the loop boundaries

            count++;
            if (count % 3 == 0 && i > 0) {
                sb.insert(i, ",");
            }
        }

        return sb.toString();
    }

    public static void main(String[] args) {
       Commada sb = new Commada();
       String k = "12345678";
       System.out.print(sb.arra(k));
    }
}
