package Test;

import java.util.ArrayList;
import java.util.HashSet;

public class Today1015 {


    //list 의 중복 제거
    public int[] arra (int[] num){

      ArrayList<Integer>list = new ArrayList<>();

      for(int i=0; i<num.length; i++){

          if(!list.contains(num[i])){
              list.add(num[i]);
          }
      }

      int[] resutl = new int[list.size()];

      for(int i=0; i<resutl.length; i++){
          resutl[i] = list.get(i);
      }

      return resutl;
    }


    //hashSet 중복 제거
    public int[] hash (int[] nums){

        HashSet<Integer>list = new HashSet<>();

        for(int i=0; i<nums.length; i++){
            list.add(nums[i]);
        }

        int[] result = new int[list.size()];
        int index = 0 ;

        for(int i : list){
            result[index ++] = i;
        }

        return result;
    }

    // 문자열 제거
    public String[] hasSt (String str){

        String[] strk = str.split(" ");
        HashSet<String> list = new HashSet<>();

        for(String k : strk){
            list.add(k);
        }

        String[] result = new String[list.size()];
        int index = 0;
        for(String k : list){
            result[index++] = k;
        }


        return result;
    }

}
