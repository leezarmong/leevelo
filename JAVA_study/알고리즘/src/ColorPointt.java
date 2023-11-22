// 일반적인 생성자와 get set ex))

class Pointt {
    private int x, y;
    private String color;

    public Pointt(int x, int y, String color) {
        this.x = x;
        this.y = y;
        this.color = color;
    }

    public void setX(int x) {
        this.x = x;
    }
    public void setY(int y) {
        this.y = y;
    }
    public void setColor(String color) {
        this.color = color;
    }

    public int getX(){
        return x;
    }
    public int getY(){
        return y;
    }
    public String getColor(){
        return color;
    }
    public void print(){
        System.out.print(getX()+" "+getY()+" "+getColor());
    }
}


public class ColorPointt {
    public static void main(String[] args) {
        Pointt ptt = new Pointt(5,5,"Yellow");

        ptt.setX(10);
        ptt.setY(10);
        ptt.setColor("red");
        ptt.print();

    }
}
