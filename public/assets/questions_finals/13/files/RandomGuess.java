import java.util.Random;
import java.util.Scanner;

class RandomGuess
{
	static String flag = "flag"; // The class file has the actual flag.

	public static void main(String... args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("What is your name? ");
		String name = sc.next();

		Random rng = new Random(customHashFunction("" + customHashFunction(name)));

		System.out.println("I'll guess a number (between 0 and 50), and how about you guess one too?");
		System.out.println("We'll see if both of us guess the same number");
		System.out.print("Well, what did you guess? ");
		try {
			int number = rng.nextInt(51);
			int guess = sc.nextInt();
			if (guess == number) {
				System.out.println("Wow, you got it!");
				System.out.println(flag);
			}
			else {
				// System.out.printf("Nope, it was %d.\n", number);
			}
		}
		catch (Exception e) {
			System.out.println("That's not a number!");
		}
	}

	private static int customHashFunction(String s) {
    // TODO: Write long and complicated hashing algorithm
    return s.hashCode();
  }
}