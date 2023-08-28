public class Trainning {

    public String test(String num) {
        String ans = num.replace("-", "");

        for (int i = 0; i < ans.length() - 4; i++) {
            ans = ans.substring(0, i) + "*" + ans.substring(i + 1);
            // Replace character at index i with '*'
        }

        return ans;
    }

    public static void main(String[] args) {
        Trainning tr = new Trainning();
        System.out.println(tr.test("010-1234-1234"));
    }
}
