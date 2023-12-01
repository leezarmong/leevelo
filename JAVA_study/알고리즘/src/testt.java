import java.util.HashMap;

public class testt {
    public static void main(String[] args) {
        HashMap<String, String> a = new HashMap<>();

        a.put("ㄱ","1");
        a.put("ㄴ","2");
        a.put("ㄷ","3");
        a.put("ㄹ","4");

        System.out.println(a.get("ㄴ"));

    }
}
