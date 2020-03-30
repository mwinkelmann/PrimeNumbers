
public class PrimeNumbers {

	// Determine if any number N is prime or not
	// Prime means only divisible by 1 and itself

	public static void main(String[] args) {

		checkPrime(109);
	}

	public static void checkPrime(int N) {
		int x = 1;

		int even = 2 * x;
		int odd = (2 * x) + 1;

		while (odd <= N) {
			if (N % even == 0) {
				// Takes care of all even numbers
				// Not Prime
				System.out.println("Not Prime");
				break;
			} else if (N % odd == 0) {
				// Not Prime
				System.out.println("Not Prime");
				break;
			}

			else if (N % odd != 0) {
				// Possibly prime
				odd = odd + 2;
				if (odd == N) {
					// have gone through all possible options
					// Prime
					System.out.println("Prime");
					break;
				}
			}
		}
	}
}