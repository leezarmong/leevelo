import java.util.Scanner;

// 상속에 대한 기초 이해
// 상위 클래스
class TV {

    private int size;

    public TV (int size){
        this.size = size;
    }

    protected int getSize(){
        return size;
    }
}

//하위 클래스
class ColorTV extends TV {
private int color ;

    public ColorTV(int size , int color) {
        super(size);
        //생성자에서 부모 클래스인 TV 클래스의 생성자를 호출하는 코드
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
