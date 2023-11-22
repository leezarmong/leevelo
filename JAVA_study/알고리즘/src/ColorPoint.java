class Point{
    private int x ,y;

    //생성자
    public Point(int x , int y){
        this.x = x;
        this.y = y;
    }

    public int getX(){
        return x;
    }
    public int getY(){
        return y;
    }

    protected void move(int x , int y){
        this.x=x;
        this.y=y;
    }
}


public class ColorPoint extends Point{
    private String color;

    // extends super 생성자
    public ColorPoint(int x, int y , String color) {
        super(x, y);
        this.color = color;
    }

    public void setXY(int x, int y){
        move(x,y);
    }




    public static void main(String[] args) {

    }
}
