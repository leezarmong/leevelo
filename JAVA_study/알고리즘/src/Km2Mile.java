import java.util.*;

abstract class Converter {
    abstract public double conver(double src); // 추상 메소드
    abstract public String getSrcString();  //추상 메소드
    abstract public String getDestString(); //추상 메소드
    public double ratio; //비율

    public void run() {
        Scanner scan = new Scanner(System.in);
        System.out.print(getSrcString() + "을" + getDestString() + "로 바꿉니다. ");
        System.out.print(getSrcString() + "을 입력하세요 >>");
        double val = scan.nextDouble();
        double res = conver(val);

        System.out.print("변환 결과:" + res + getDestString() + "입니다.");
        scan.close();
    }
}

class KmM extends Converter{

    public KmM (double ratio){
        this.ratio = ratio;
    }
     public double conver(double src){

        return src/ratio;
    }

    public String getSrcString() {
        return "Km";
    }
     public String getDestString() {
        return "mile";
    }

}

public class Km2Mile {
    public static void main(String[] args) {

        KmM mm = new KmM(1.6);
        mm.run();

    }
}
