public class LastStar {


    public String star(String nums) {
        String result = nums.replace("-", "");

        String star = "";

        for (int i = 0; i < result.length() - 4; i++) {
            star += "*";
        }

        star += result.substring(result.length() - 4);


        return star;

    }

    public static void main(String[] args) {

        String k = "010-1234-1234";

        LastStar ls = new LastStar();
        System.out.print(ls.star(k));
    }
}
