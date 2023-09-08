import java.util.Scanner;

class TTV {
    private int size;

    public TTV(int size){
        this.size = size;
    }

    public int getSize(){
        return size;
    }
}
class TVColor extends TTV{
    private int color;

    public TVColor(int size , int color) {
        super(size);
        this.color =  color;

    }

    public int getColor(){
        return color;
    }

    public void print(){
        System.out.print(getSize()+"size "+getColor()+"color");
    }
}

public class RePractice {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("인치 :");
        int k = scan.nextInt();

        System.out.print("컬러 :");
        int c = scan.nextInt();


        TVColor tvc = new TVColor(k , c);
        tvc.print();
    }
}


