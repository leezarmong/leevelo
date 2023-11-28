public class 입력한배열수로뒤집기 {

   // StringBuffer 사용
   public int nums (int[] arra){
       int[] b = new int[arra.length];

       for(int i=0; i<arra.length; i++){
           b[i] = arra[arra.length-1-i];
       }

       StringBuffer sb = new StringBuffer();

       for(int result : b){
           sb.append(result);
       }
       int answer = Integer.parseInt(sb.toString());
       return answer;
   }

    //String 형 변환
    public int nums2 (int[] arra2 ){
       int result =0;

       String str = "";

       for(int i=arra2.length; i>=0; i--){
           str += arra2[i];
       }

       result = Integer.parseInt(str);

       return result;
    }

    //배열에서 수 로 변환
    public int nums3 (int[] arra3){
       int result =0;
       String str = "";

        for(int i=0; i<arra3.length; i++){
            str += arra3[i];
        }

        result = Integer.parseInt(str);

       return result;
    }
}
