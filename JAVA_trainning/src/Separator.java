import java.util.Scanner;

public class Separator {

    // 유효 한 숫자만..
    public static boolean isValidNumber(String str) {

        // toCHarArray() =
        // 'ABCD' 를 배열 로 arr[0]='A' , arr[1]='B' 표현 해준다.
        for (char k : str.toCharArray()) {
            if (k < '0' || k > '9') {

                return false;
            }
        }
        return true;
    }

    //천단위 콤마 찎는 메소드
    private static String addCommas(String str) {
        int length = str.length(); // 입력 문자열의 길이
        int count = 0; // 콤마를 추가하기 위한 카운터
        // 변환 결과를 저장할 StringBuilder 객체 생성
        StringBuilder result = new StringBuilder();

        // 문자열의 끝에서부터 처음으로 거꾸로 이동하며 콤마 추가

        // 오른쪽 끝에서 부터 6-[,]-5-4-3-[,]-2-1-0
        for (int i = length - 1; i >= 0; i--) {

            // 문자를 결과 문자열의 앞에 추가
            //charAt = char 타입으로 변환 시켜주는것.
            result.insert(0, str.charAt(i));
            count++;

            // 3의 배수 위치에 콤마 추가 (맨 앞 제외)
            if (count % 3 == 0 && i > 0) {
                result.insert(0, ",");
            }
        }

        // 최종 결과 문자열 반환
        return result.toString();
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("변환 시킬 숫자 입력 :");
        String input = scan.nextLine();


        if(!isValidNumber(input)){
            System.out.print("유효한 숫자가 아닙니다. ");
            return;
        }

        String result = addCommas(input);
        System.out.print(result);

    }
}
