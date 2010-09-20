
public class problem7
{
  
  public static void main( String[] args)
  {
    int count = 1;
    int last = 0;

    for ( int i = 3; count < 10001; i += 2)
    {
      if (prime(i))
      {
        count += 1;
        last = i;
      }
    }

    System.out.println(last);
  }

  private static boolean prime( int divided)
  {
    int divisor = 3;
    long divided_sqrt = Math.round(Math.sqrt(divided));

    while( divided_sqrt >= divisor)
    {
      if( divided % divisor == 0)
      {
        return false;
      }

      divisor += 2;
    }

    return true;
  }
}
