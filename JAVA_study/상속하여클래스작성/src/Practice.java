import java.util.Scanner;

class TV {

    private int size;

    public TV (int size){
        this.size = size;
    }

    protected int getSize(){
        return size;
    }
}

class ColorTV extends TV {
private int color ;

    public ColorTV(int size , int color) {
        super(size);
        this.color = color;
    }

    protected int getColor(){
        return color;
    }

    public void print(){
        System.out.print(getSize()+"인치 "+getSize()+"컬러");
    }
}

public class Practice {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("인치 입력 :");
        int size = scan.nextInt();

        System.out.print("컬러 입력 :");
        int color = scan.nextInt();


        ColorTV ctv = new ColorTV(size , color);
        ctv.print();

    }
}
