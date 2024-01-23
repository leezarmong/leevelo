public class TodayCom {


    public String coma(String str) {

        StringBuilder sb = new StringBuilder();
        int count = 0;

        for (int i = str.length()-1; i >= 0; i--) {
            sb.insert(0, str.charAt(i));
            count++;

            if (count % 3 == 0 && i > 0) {
                sb.insert(0, ",");
            }
        }


        return "";
    }
}
