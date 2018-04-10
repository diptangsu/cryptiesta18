import java.util.Scanner;

class Accumulator
{
	static String flag = "flag";
	static int accumulator = 0;

	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);

		for (; ; )
		{
			System.out.println("Current value of accumulator : " + accumulator);

			System.out.print("\nEnter a positive number : ");
			int n = sc.nextInt();

			System.out.println();

			if (n > 0)
				accumulator += n;
			else
				System.out.println("You can only enter positive numbers!");

			if (accumulator < 0)
			{
				System.out.println(flag);
				break;
			}
		}
	}
}