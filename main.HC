#include <StdLib.h>

void main() {
    int randomNumber, userGuess, maxGuesses, guessCount = 0;
    Bool guessedCorrectly = False;

    srand(GetTicks());

    randomNumber = (rand() % 100) + 1;

    maxGuesses = (rand() % 10) + 1; 
    Print("Guess the number between 1 and 100.\n");
    Print("You have %d guesses.\n", maxGuesses);

    while (guessCount < maxGuesses && !guessedCorrectly) {
        Print("Enter your guess: ");
        Scan("%d", &userGuess);
        guessCount++;

        if (userGuess == randomNumber) {
            guessedCorrectly = True;
            Print("Congratulations! You guessed the number!\n");
        } else if (userGuess < randomNumber) {
            Print("Higher!\n");
        } else {
            Print("Lower!\n");
        }
    }

    if (!guessedCorrectly) {
        Print("Sorry, you've run out of guesses. The number was %d.\n", randomNumber);
    }
}
