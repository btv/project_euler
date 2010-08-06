public class problem2
{
  public static void main( String[] args)
  {
    int total = 0;
    int num1 = 1;
    int num2 = 1;
    boolean flip = true;

    while ( total < 4000000)
    {
      if( flip == true)
      {
        num1 += num2;
        if ( num1 % 2 == 0)
        {
          total += num1;
        }
        flip = false;
      }
      else
      {
        num2 += num1;
        if (num2 % 2 == 0)
        {
          total += num2;
        }
        flip = true;
      }
    }

    System.out.println(total);
  }
}
