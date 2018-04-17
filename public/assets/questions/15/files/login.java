import java.util.Scanner;

class Login
{
	static String flag = "flag"; // The class file has the actual flag

	static int k[] = {210, 204, 238, 224, 265, 252, 269, 291, 293, 301, 317, 322, 351, 359, 356, 377, 385, 384};

	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);

		System.out.print("Enter username : ");
		String u = sc.next();

		System.out.print("Enter password : ");
		String p = sc.next();

		if (u.equals("iamanadministrator")) {
			for (int i = 0; i < k.length; i++) {
				if (u.charAt(i) + p.charAt(i) + 10 * i != k[i])
				{
					System.out.println("Sorry! Wrong Password!");
					System.exit(0);
				}
			}
			System.out.println("Well done!");
			System.out.println(flag);
		}		
	}
}