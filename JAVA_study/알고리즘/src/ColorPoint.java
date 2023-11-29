class Point {
    private int x, y; // class Point 의 전역변수.

    public Point(int x, int y) { // 인자값을 받는 생성자.
        this.x = x;
        this.y = y;
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }

    protected void move(int x, int y) { // x 와 y 를 같이 받을수 있는 set 메소드.
        this.x = x;
        this.y = y;
    }
}

public class ColorPoint extends Point { // Point class 상속.
    private String color;   // 원하는 색상을 받을 color String 선언.

    public ColorPoint() {
        super(0, 0);    // 상속 받은 x y 값을 인자값 없이 기본 인스턴스 할경우 0 으로 초기화
        this.color = "BLACK";   // 인자가 없이 인스턴스 할경우 기본 BLACK
    }

    public ColorPoint(int x, int y) {   //인자값 (파라미터) 을 받을경우.
        super(x, y);
        this.color = "BLACK";
    }

    public void setColor(String color) {    // 기본 color 은 BLACK 이지만 set 할경우 초기화 메소드
        this.color = color;
    }

    public void setXY(int x, int y) {   //상속받은 move 메소드.
        //move(x, y);

    }

    public String toString() {
        return color + "색의 (" + getX() +","+ getY() + ") 의 점입니다.";
    }
}

class Point3D extends Point{
    private int z;

    public Point3D(int x ,int y , int z){
        super(x,y);
        this.z = z;
    }
    public void move(int x ,int y ,int z){
        move(x,y);
        this.z=z;
    }

    public void moveUp(){
        this.z +=1;
    }
    public void moveDown(){
        this.z -=1;

    }

    public int getZ(){
        return  z;
    }

    public String toString(){
        return "("+getX()+","+getY()+","+getZ()+")의 점";
    }

}

class main{
    public static void main(String[] args) {
//        ColorPoint zerpPoint = new ColorPoint();
//        System.out.println(zerpPoint.toString());
//
//        ColorPoint cp = new ColorPoint(5,5);
//        cp.setColor("YELLOW");
//        System.out.print(cp.toString());

        Point3D p = new Point3D(1,2,3);
        System.out.println(p.toString()+"입니다.");

        p.moveUp();
        System.out.println(p.toString()+"입니다.");

        p.moveDown();// 이전값이 moveUp 메소드로 인해 이미 4 로 되어있기 때문에 Down 메소드를 사용하여 3이 완성된것..
        p.move(10,10);
        System.out.println(p.toString()+"입니다.");

        p.move(100,200,300);
        System.out.println(p.toString()+"입니다.");
    }
}
