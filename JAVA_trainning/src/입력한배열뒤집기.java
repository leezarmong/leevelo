public class 입력한배열뒤집기 {

    public int[] revers (int[] arra){
        int[] result =new int[arra.length];
        // 왜? arra 를 뒤집고 다시 담아야 하니까 arra 의 길이만큼 생성

        for(int i=0; i<arra.length; i++){
            result[i] = arra[arra.length-1-i];
        }

        return result;
    }

    //re

    public int[] revers2 (int[] arra){
        int[] result =new int[arra.length];

        for(int i=0; i<arra.length; i++){
            result[i]=arra[arra.length-1-i];
        }

        return result;
    }
}
