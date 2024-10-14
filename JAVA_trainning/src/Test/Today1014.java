package Test;

import com.sun.tools.jdeprscan.scan.Scan;

import java.util.Arrays;
import java.util.Scanner;
import java.util.Stack;

public class Today1014 {

    public int[] maxmin(String k) {

        String[] str = k.split(" ");

        int max, min;

        max = min = Integer.parseInt(str[0]);

        for (int i = 0; i < str.length; i++) {
            max = Math.max(Integer.parseInt(str[i]), max);
            min = Math.min(Integer.parseInt(str[i]), min);
        }

        int[] result = new int[2];

        result[0] = max;
        result[1] = min;
        return result;
    }


    public int[] nummaxmin(int k) {

        String kstr = String.valueOf(k);
        int[] arr = new int[kstr.length()];

        char c;

        for (int i = 0; i < kstr.length(); i++) {
            c = kstr.charAt(i);
            arr[i] = Integer.parseInt(String.valueOf(c));
        }

        int max, min;
        max = min = arr[0];

        for (int i = 0; i < arr.length; i++) {
            max = Math.max(arr[i], max);
            min = Math.min(arr[i], min);
        }

        int[] result = new int[2];
        result[0] = max;
        result[1] = min;

        return result;
    }


    public String holzzac(int[] num) {

        StringBuilder hol = new StringBuilder();
        StringBuilder zzac = new StringBuilder();


        for (int i = 0; i < num.length; i++) {

            if (num[i] % 2 == 0) {
                zzac.append(num[i]).append(" ");
            }
            hol.append(num[i]).append(" ");
        }

        String holl = hol.toString();
        String zzacc = zzac.toString();


        return "hol" + holl + "zzac" + zzacc;
    }


    public int nums(int[] arr) {
        int max1, max2, max3;
        int index = 0;
        int length = arr.length;

        max1 = arr[length - 1];
        max2 = arr[length - 2];
        max3 = arr[length - 3];

        for (int i = arr.length - 4; i >= 0; i--) {
            index = arr[i]; // 비교대상

            if (index > max1) {
                max3 = max2;
                max2 = max1;
                max1 = index;

            } else if (index > max2) {
                max3 = max2;
                max2 = index;
            } else if (index > max3) {
                max3 = index;

            }
        }

        return max1 * max2 * max3;
    }


    //번호의 중간 값 * 로 변환
    public String test(int num) {
        String kstr = String.valueOf(num);
        String numstar = kstr.replace("-", "");

        int len = numstar.length();

        //000 000 0000 10
        if (len == 10) {
            numstar = numstar.substring(0, 3) + "***" + numstar.substring(6);
        }

        return numstar;
    }

    //최솟 값을 제외한 나머지 그리고 길이 6개 면 -1 10 이상 이면 -1

    public int[] nums3(int[] nums) {

        int len = nums.length;

        if (len >= 5) {
            int[] result = {-1};
            return result;
        }

        for (int i = 0; i < nums.length; i++) {
            if (nums[i] >= 10) {
                int[] result = {-1};

                return result;
            }
        }

        int[] result = new int[nums.length - 1];
        int min;
        int index = 0;
        min = nums[0];

        for (int i = 0; i < nums.length; i++) {
            min = Math.min(nums[i], min);


        }

        for(int i=0; i<nums.length; i++){

            if (nums[i] == min) {
                continue;
            }
            result[index++] = nums[i];
        }


        return result;
    }


    public int[][] holzzac2 (int[] num){

        int zzacount = 0;
        int holcount = 0;

        for(int i=0; i<num.length; i++){
            if(num[i] % 2 == 0){
                zzacount++;
            }
            else{
                holcount++;
            }
        }

        int[] zzacarr = new int[zzacount];
        int[] holarr = new int[holcount];
        int zzacindex =0;
        int holindex = 0 ;

        for(int i=0; i<num.length; i++){
            if(num[i] %2 ==0){
                zzacarr[zzacindex++]=num[i];
            }
            else{
                holarr[holindex++]=num[i];
            }
        }



        int[][] result = new int[2][];

        result[0]= zzacarr;
        result[1]=holarr;
        return result;
    }


    public String comma (int num){
            String k = String.valueOf(num);
            int len = k.length();
            int count = 0;

            StringBuilder sb = new StringBuilder();
            for(int i= len-1; i>=0; i--){

                sb.insert(0,k.charAt(i));
                count++;

                if(count % 3 ==0 && i>0){
                    sb.insert(0,",");
                }
            }

            String result = sb.toString();

        return result;
    }



    public String email (String user){
        String[] parts = user.split("@");

        if (parts.length == 2) {
            String id = parts[0];        // Before '@' (ID part)
            String domain = parts[1];    // After '@' (domain part)

            // Store ID and domain in an array
            String[] emailParts = new String[2];
            emailParts[0] = id;
            emailParts[1] = domain;

            // Print the result
            System.out.println("ID: " + emailParts[0]);
            System.out.println("Domain: " + emailParts[1]);
        }

        return "";
    }

    public String[][] email2(String user){
        Scanner scan = new Scanner(System.in);
     int countUser = 5 ;
     String[][] userEmail = new String[countUser][2];

     for(int i=0; i<countUser; i++){

         System.out.print("이메일 입력"+(i+1));
         String insert = scan.next();

         String[] parts = insert.split("@");
         if(parts.length ==2){

             userEmail[i][0]= parts[0];
             userEmail[i][1]= parts[1];
         }
         else{
             System.out.print("잘못된 입력입니다. ");
             i--;
         }
     }

     return userEmail;
    }


   public int dolution (String str){
        char[] chaa = str.toCharArray();
        Stack<Character> stack = new Stack<>();


        for(int i=0; i<chaa.length; i++){
            char c = chaa[i];

            if(stack.isEmpty()){
                stack.push(c);
            }
            else{
                if(stack.peek()==c){
                    stack.pop();
                }
                else{
                    stack.push(c);
                }
            }
        }
        return stack.isEmpty() ? 1 :0 ;
   }







}



class Phone{
    private String phone;
    private String name;

    public Phone(String phone, String name){
        this.phone = phone;
        this.name = name;
    }

    public String getPhone(){
        return phone;
    }

    public String getName(){
        return name;
    }
}

class PhoneManager{
    private Phone[] phone;
    static Scanner scan = new Scanner(System.in);

    public void createPhone(){

        System.out.print("몇명 만들까요.? ");
        int num = scan.nextInt();

        phone = new Phone[num];

        for(int i=0; i<phone.length; i++){
            System.out.print("이름과 번호 입력 :");
            String name = scan.next();
            String p = scan.next();
            phone[i] = new Phone(name,p);
        }
        System.out.print("입력 완료 :!");
    }

    public void searchPhone(){

        while(true){
            System.out.print("검색할 이름 :");
            String n = scan.next();

            if(n.equals("그만")){
                System.out.print("종료 합니다.");
                break;
            }

            boolean found = false;

            for(Phone p :phone){

                if(n.equals(p.getName())){
                    System.out.print("찾으시는 번호 :"+p.getPhone()+"입니다.");
                    found = true;
                    break;
                }
            }

            if(!found){
                System.out.print(n +"를 찾을수 없습니다.");
            }
        }

    }
}

