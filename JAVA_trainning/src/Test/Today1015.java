package Test;

import java.util.ArrayList;

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
}
