import java.util.HashSet;

public class Letter {

    public String[] letter(String len) {
        String[] text =len.split(",");

        HashSet<String> fil = new HashSet<>();

        for(String str : text){
            fil.add(str);
        }

        String[] tt = new String[fil.size()];
        int index = 0;


        for(String str : fil){
            tt[index++] = str;
        }
        return tt;
    }

    public static void main(String[] args) {

        Letter lt = new Letter();
        String test = "q,q,q,w,er,r";

        String[] tt = lt.letter(test);

        for(String str : tt){
            System.out.print(str);
        }

    }
}
