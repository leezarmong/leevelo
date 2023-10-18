public class holzzac {

    public void array(int[] nums) {
        int result[] = nums;
        int z = 0;
        int h = 0;

        for(int n : nums){
            if(n% 2 ==0){
                z ++;
            }
            else {
                h++;
            }
        }

        int zzac[] = new int[z];
        int hol[] = new int[h];


        int zindex = 0 ;
        int hindex = 0 ;



        for (int i = 0; i < result.length; i++) {
            if (result[i] % 2 == 0) {
                zzac[zindex++] = i;

            } else {

                hol[hindex++] = i;
            }
        }

        for(int n : zzac){
            System.out.print(n+" ");
        }
        System.out.println();

        for(int n : hol){
            System.out.print(n+" ");
        }


    }

    public static void main(String[] args) {
        int b[] = {1,2,3,4,5,6,7,8,9,10};

        holzzac hz = new holzzac();

        hz.array(b);
    }
}
