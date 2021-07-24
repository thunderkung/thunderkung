import 'dart:io';
import 'dart:math';

void main() {
  const MAX_RANDOM = 100;
  Random ran = new Random();
  var answer = ran.nextInt(MAX_RANDOM) + 1;
  var guess;
  int count = 0;
  print("|─────────────────────────────────────────────────────");
  print("|                  DO YOU HAVE A GUESS?");
  print("|─────────────────────────────────────────────────────");
  do {
    stdout.write('| Guess the number between 1 and $MAX_RANDOM: ');
    String? input = stdin.readLineSync();
    guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    } else {
      count++;
      if (answer == guess) {
        print('| ➜ $guess CORRECT! ✔, total guesses: $count ✨ ');
        print("|─────────────────────────────────────────────────────");
      } else if (answer < guess) {
        print('| ➜ $guess TOO HIGH! ▲ KEEP TRY AGAIN!');
        print("|─────────────────────────────────────────────────────");
      } else {
        print('| ➜ $guess TOO LOW! ▼ KEEP TRY AGAIN!');
        print("|─────────────────────────────────────────────────────");
      }
    }
  } while (answer != guess);
  print("|                 ♣️THE END  ♣️");
  print("|─────────────────────────────────────────────────────");
}