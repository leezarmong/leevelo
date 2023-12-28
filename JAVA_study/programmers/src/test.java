import java.util.Scanner;

public class test {

    public static void main(String[] args) {
        String sst = "";
        StringBuffer st = new StringBuffer();

        for (char c = 'a'; c <= 'z'; c++) {
            sst += c;
            if (st.length() != 0) {
                st.append(", "); // 콤마와 공백을 추가합니다. st가 비어있지 않은 경우
            }
            st.append(c); // 문자를 StringBuffer에 추가합니다.

        }
        System.out.println("st: " + st.toString());
    }
}

