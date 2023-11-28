public class Commada {

   public String comma (String str){
       int len = str.length();
       //String 의 길이
       int count =0;
       // 3칸 을 나눌 카운트

       StringBuffer sb = new StringBuffer();

       for(int i=len-1; i>=0; i--){

           sb.insert(0,str.charAt(i));
           count++;

           if(count%3==0 && i >0){
               sb.insert(0,",");
           }
       }

       return sb.toString();
   }

   public String coco (int num){
       String str = Integer.toString(num);
       int count =0;

       StringBuffer sb = new StringBuffer();
       for(int i=str.length()-1 ; i>=0; i--){
           sb.insert(0,str.charAt(i));
           count++;
           if(count%3==0 && i>0){
               sb.insert(0,",");
           }
       }
       return sb.toString();
   }

    public static void main(String[] args) {
        Commada cd = new Commada();

        String nums ="123456";
        int num = 12345;
        System.out.print(cd.coco(num));
    }
}
