class Pointz {
    private int x, y;

    public Pointz(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public int getX() {

        return x;
    }

    public int getY() {

        return y;
    }

    public void move(int x, int y) {
        this.x = x;
        this.y = y;
    }

}


public class ColorPointz extends Pointz {
    private String color;

    public ColorPointz() {
        super(0, 0);
        this.color = "BLACK";
    }

    public ColorPointz(int x, int y) {
        super(x, y);
        this.color = "BLACK";
    }

    public void setXY(int x, int y) {
        move(x, y);
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void print() {
        System.out.print(color + "색의 (" + getX() + getY() + ") 의 점 입니다.");
    }


    public static void main(String[] args) {
        ColorPointz cz = new ColorPointz();
        cz.print();

        ColorPointz czz = new ColorPointz(1,1);
        czz.setXY(5,5);
        czz.setColor("red");
        czz.print();
    }

}
