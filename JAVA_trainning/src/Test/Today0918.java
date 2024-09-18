package Test;

import java.util.Arrays;

public class Today0918 {

    public int[] arr(int nums) {

        String t = String.valueOf(nums);
        String[] arr = t.split("");
        int max, min;
//        int num;

        max = min = Integer.parseInt(arr[0]);

        for (int i = 0; i < arr.length; i++) {
//            num = Integer.parseInt(arr[i]);
//
//            if(min > num){
//                min = num;
//            }
//            if(max < num){
//                max = num;
//            }
            max = Math.max(max, Integer.parseInt(arr[i]));
            min = Math.min(min, Integer.parseInt(arr[i]));
        }

        int[] answer = new int[2];

        answer[0] = min;
        answer[1] = max;

        return answer;
    }

    public int[] arr(int[] nums) {

        int[] answer = new int[2];
        int max, min, num;

        max = min = nums[0];

        for (int i = 0; i < nums.length; i++) {

            max = Math.max(max, nums[i]);
            min = Math.min(min, nums[i]);

        }
        answer[0] = max;
        answer[1] = min;

        return answer;
    }

    //최대가 되는 수 3개 곱하기
    public int test(int nums) {
        String knums = String.valueOf(nums);
        String[] arr = knums.split("");

        int length = arr.length;
        int max1, max2, max3;

        max1 = max2 = max3 = Integer.parseInt(arr[0]);
        int num;

        Arrays.sort(arr);

        max1 = Integer.parseInt(arr[length - 1]);
        max2 = Integer.parseInt(arr[length - 2]);
        max3 = Integer.parseInt(arr[length - 3]);

        for (int i = arr.length - 4; i >= 0; i--) {
            num = Integer.parseInt(arr[i]);

            if (max1 < num) {
                max3 = max2;
                max2 = max1;
                max1 = num;
            } else if (max2 < num) {
                max3 = max2;
                max2 = num;
            } else if (max3 < num) {
                max3 = num;
            }
        }
        int answer = max1 * max2 * max3;

        return answer;
    }

    public int[] test2 (int[] arr){

        int length = arr.length;

        // 길이가 5 를 넘어갈 경우 -1 를 반환 .
        if(length >=6){

            int[] answer = {-1};
            return answer;
        }

        // arr 의 원소가 10 을 넘어갈 경우 -1 를 반환
        for(int i=0; i<arr.length; i++) {
            if (arr[i] >= 10) {
                int[] answer = {-1};
                return answer;
            }
        }

        int[] answer = new int[arr.length-1];
        int min;
        int index = 0 ;

        min = arr[0];
        for(int i=0; i<arr.length; i++){
            min = Math.min(min, arr[i]);
        }

        for(int i=0; i<arr.length; i++){

            if(arr[i] == min){
                continue;
            }
            answer[index++] = arr[i];
        }
        return answer;
    }



    public void lotto() {
        int[][] lo = new int[5][6];

        for (int h = 0; h < lo.length; h++) {
            for (int i = 0; i < lo[h].length; i++) {
                lo[h][i] = (int) (Math.random() * 45) + 1;

                // Check for duplicates in the current row
                for (int j = 0; j < i; j++) {
                    if (lo[h][i] == lo[h][j]) {
                        i--; // 중복이 있으면 다시 번호 생성
                        break;
                    }
                }
            }
            // Sort each row of numbers
            Arrays.sort(lo[h]);
        }
        // Print the numbers
        System.out.println("즐거운 추석 ㅋㅅㅋ");
        for (int h = 0; h < lo.length; h++) {
            System.out.print((h + 1) + "번째 행운의 번호: ");
            for (int i = 0; i < lo[h].length; i++) {
                System.out.print(lo[h][i] + " ");
            }
            System.out.println();
        }
    }



    public static void main(String[] args) {

//        String[][] test = new String[5][5];
//
//        for(int i=0; i<test.length; i++){
//
//            if(i%2==0) {
//                for (int j = 0; j < test[i].length; j++) {
//                    if(j%2==0) {
//                        test[i][j] = "X";
//                    }
//                    else{
//                        test[i][j] = "O";
//                    }
//                }
//            }else{
//                for (int j = 0; j < test[i].length; j++) {
//                    if(j%2==0) {
//                        test[i][j] = "O";
//                    }
//                    else{
//                        test[i][j] = "X";
//                    }
//
//                }
//            }
//        }
//
//        for(int i=0; i<test.length; i++){
//            for(int j=0; j<test[i].length; j++){
//                System.out.print(test[i][j]+" ");
//            }
//            System.out.println();
//        }


        Today0918 td = new Today0918();
        td.lotto();

    }
}

