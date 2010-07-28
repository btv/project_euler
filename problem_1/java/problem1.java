import java.util.LinkedList;

public class problem1
{
    public static void main( String[] args)
    {
            for( int i = 1; i < 1000; i++)
            {
                if( i % 3 == 0 || i % 5 == 0)
                {
                    System.out.println(i);
                }
            }
    }
}
