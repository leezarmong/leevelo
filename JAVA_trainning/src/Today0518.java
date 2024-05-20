import java.util.Arrays;

public class Today0518 {


    // 1. 배열 -> 배열 뒤집기
    public int[] arra(int[] insert) {

        int[] result = new int[insert.length];

        for (int i = 0; i < insert.length; i++) {
            result[i] = insert[insert.length - 1 - i];
        }

        return result;
    }


    // 2. 배열 -> 수로 뒤집기
    public int nums(int[] arra) {

        int result;

        String str = "";

        for (int i = arra.length - 1; i >= 0; i--) {
            str += arra[i];
        }
        result = Integer.parseInt(str);

        return result;
    }

    // 3. 수 -> 배열로 뒤집기
    public int[] arra2(int nums) {


        String str = String.valueOf(nums);
        int[] result = new int[str.length()];

        for (int i = 0; i < result.length; i++) {
            result[i] = Integer.parseInt(str.substring(result.length - 1 - i, result.length - i));
        }

        return result;
    }


    // 4. 수 에서 배열
    public int[] arra3(int nums) {

        String str = String.valueOf(nums);
        int[] result = new int[str.length()];
        char c;

        for (int i = 0; i < str.length(); i++) {
            c = str.charAt(i);
            result[i] = Integer.parseInt(String.valueOf(c));
        }

        return result;
    }

    // 5-1. 배열 에서 수
    public int nums2(int[] arra) {

        String str = "";

        for (int num : arra) {
            str += num;
        }

        int result = 0;

        result = Integer.parseInt(str);

        return result;
    }

    // 5-2 배열 에서 수를 StringBuilder
    public int nu3(int[] arra) {

        StringBuilder sb = new StringBuilder();
        for (int num : arra) {
            sb.append(num);
        }

        int result = Integer.parseInt(String.valueOf(sb));

        return result;
    }

    // 6. 입력한 수 오츰 차순으로 바꿔라.
    public int num4(int nums) {

        String[] str = Integer.toString(nums).split("");

        String index = "";

        Arrays.sort(str);
        for (String k : str) {
            index += k;
        }

        StringBuilder sb = new StringBuilder(index.toString());
        sb.reverse();

        int num;
        num = Integer.parseInt(String.valueOf(sb));


        return num;
    }

    // 7. 콤마 찍기

    public boolean exception(String num) {

        for (char c : num.toCharArray()) {
            if (c < '0' || c > '9') {

                return false;
            }
        }
        return true;
    }

    public String comma(String nums) {
        int len = nums.length();
        StringBuilder sb = new StringBuilder();

        int count = 0;

        for (int i = len - 1; i >= 0; i--) {
            sb.insert(0,nums.charAt(i));
            count++;

            if (count % 3 == 0 && i > 0) {
                sb.insert(0,",");
            }
        }

        String reuslt = sb.toString();
        // 문자열을 뒤집어 원래 순서로 돌려놓기
        return  reuslt;
    }

    public static void main(String[] args) {

        Today0518 td = new Today0518();
//        int[] arra = {1, 2, 3, 4};
//        int k = 642324;

        String result = "123456";
        if (!td.exception(result)) {
            System.out.print("유효한 숫자가 아닙니다.");
            return;
        }

        System.out.print(td.comma(result));




    }
}
