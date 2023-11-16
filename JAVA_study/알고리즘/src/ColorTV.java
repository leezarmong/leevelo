import java.util.Scanner;

//상속 연습
class TV{
    private int size;

    public TV(int size){
        this.size = size;
    }

    protected int getSize(){
        return size;
    }
}

public class ColorTV extends TV{
    private String color;

   public ColorTV (int size , String color){
       super(size);
   }

   public String getColor(){
       return  color;
   }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.println();
        int size = scan.nextInt();

        System.out.println();
        String color = scan.next();

        ColorTV col = new ColorTV(size, color);

        System.out.println(size+"인치"+color+"컬러");

    }
}


