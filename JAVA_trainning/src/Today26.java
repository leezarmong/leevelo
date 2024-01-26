import java.util.Scanner;

public class Today26 {
    static Scanner scan = new Scanner(System.in);

    public void text(String k) {
        String[] insertStr = k.split(" ");
        String[] arraStr = new String[insertStr.length];

        int count = 0;

        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < insertStr.length; i++) {
            arraStr[i] = insertStr[i];
            count++;
            if (arraStr[i].length() == 3) {
                sb.append(" insert ");
            }
            sb.append(arraStr[i]).append(" ");
        }
        System.out.println(count + "= 문장의 개수");
        System.out.print(sb.toString());


    }

    public void text2(String[] arra) {
        StringBuilder sb = new StringBuilder();

        int count3 = 0;
        String[] insertStr = new String[arra.length];

        for (int i = 0; i < arra.length; i++) {
            insertStr[i] = arra[i];
            count3++;

            if (arra[i].length() == 3) {
                sb.append("insert ");
            }
            sb.append(arra[i]).append(" ");
        }

        String k = "";
        for (String insertk : arra) {
            k += insertk;
        }

        int count = 0;
        int count1 = 0;
        System.out.println("찾는 알파뱃의 갯수");
        char c = scan.next().charAt(0);

        for (int i = k.length() - 1; i >= 0; i--) {
            if (count > 0) {
                sb.insert(0, ",");
            }
            sb.insert(0, k.charAt(i));

            if (count % 1 == 0 && i > 0) {
                sb.insert(0, "insert ");
            }

            count++;

            if (k.charAt(i) == c) {
                count1++;
            }
        }
        System.out.println("알파벳의 갯수 " + count);
        System.out.println(sb.toString());

        System.out.println("찾는 알파뱃의 개수 " + count1);
    }

    public int[] arra (int[]b){

        int min = b[0];
        int max = b[0];

        for(int i=0; i<b.length;i++){
            max = Math.max(max , b[i]);
            min = Math.min(min , b[i]);
        }
        return new int[0];
    }

    public int[] arra2(String k){
        String[] insert = k.split(" ");

        int max =0;
        int min = 0 ;
        max = min = Integer.parseInt(insert[0]);

        for(int i=0; i<insert.length; i++){

            max = Math.max(max, Integer.parseInt(insert[i]));
        }


        return new int[0];
    }

    public static void main(String[] args) {


        String[] k = {"aple", "arount", "ate", "asd"};

        Today26 td = new Today26();
        td.text2(k);

    }
}
