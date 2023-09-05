class ArrayUtil {
    public static int [] concat(int[] a, int[] b) {
       int[] result = new int[a.length+b.length];
        // array1 , 2 를 합친 result 배열

       for(int i = 0 ; i <a.length; i++)
       {
           result[i] = a[i];
       }
       for(int i =0; i<b.length; i++){
           result[a.length+i] = b[i];
           //출력된 a의 길이 를 더한 i 이며 그것을 더한 것은 b의 원소
       }
       return  result;
    }
    public static void print(int[] a) {
        System.out.print("[");

        for(int i = 0 ; i<a.length; i++){
            System.out.print(a[i]+" ");
        }
        System.out.print("]");

    }
}
public class StaticEx {
    public static void main(String[] args) {

        int [] array1 = {1, 5, 7, 9 };
        int [] array2 = {3, 6, -1, 100, 7 };
        int [] array3 = ArrayUtil.concat(array1, array2);
        //array3 은 1 , 2를 합친 배열
        //static 변수 여서 인스턴스 없이 생성 할수있다.

        ArrayUtil.print(array3);
        //합쳐진 배열을 출력하는 메소드 실행.
    }
}