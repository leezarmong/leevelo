import java.util.Scanner;

class Seatt {
    private String[] Seatt;

    public Seatt() {
        Seatt = new String[10];

        for (int i = 0; i < Seatt.length; i++) {
            Seatt[i] = "---";
        }
    }

    public void Showw() {
        for (int i = 0; i < Seatt.length; i++) {
            System.out.print(Seatt[i] + " ");
        }
        System.out.println();
    }

    public void Sett(String name, int num) {
        Seatt[num - 1] = name;
    }

    public boolean reSett(String name) {
        for (int i = 0; i < Seatt.length; i++) {
            if (name.equals(Seatt[i])) {
                Seatt[i] = "---";
            }
            return true;
        }
        return false;
    }
}

class Reser{
    Scanner scan = new Scanner(System.in);
    private Seatt[] sea;
    private String[] ggg = {"A","B","C"};

    public Reser(){
        sea = new Seatt[3];
        for(int i=0; i<sea.length; i++){
            sea[i] = new Seatt();
        }
    }

    public void Res(){
        System.out.print("좌석 S 1, A 2, B 3");
        int gra = scan.nextInt();
        System.out.print(ggg[gra-1]+">>");
        sea[gra-1].Showw();

        System.out.print("name ::");
        String name = scan.next();
        System.out.print("좌석 ::");
        int num = scan.nextInt();

        sea[gra-1].Sett(name , num);
    }

    public void checc(){
        for(int i=0; i<sea.length; i++){
            System.out.print(ggg[i]+" ");
            sea[i].Showw();
        }
        System.out.println("조회 완료.. ");
    }

}

public class 예약 {
}
