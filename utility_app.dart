import 'dart:io';

void main() {
  print("Welcome to the Dart Utility Application");

  // --- STRING MANIPULATION ---
  stdout.write("\nEnter a string: ");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("No input provided. Exiting application.");
    return;
  }

  // String operations
  String concatenated = input + " - processed by Dart Utility";
  String interpolated = "You entered: $input";
  String substring = input.length > 5 ? input.substring(0, 5) : input;
  String upper = input.toUpperCase();
  String lower = input.toLowerCase();
  String reversed = input.split('').reversed.join();
  int length = input.length;

  print("\nString Manipulation:");
  print("Concatenation: $concatenated");
  print("Interpolation: $interpolated");
  print("Substring (first 5 chars): $substring");
  print("Uppercase: $upper");
  print("Lowercase: $lower");
  print("Reversed: $reversed");
  print("Length: $length");

  // --- COLLECTIONS ---
  print("\nCollections Example:");

  // FIX: Split words by spaces (not characters)
  List<String> words = input.trim().split(' ');
  words.add('Dart');
  print("List: $words");
  words.remove('Dart');
  print("List after removal: $words");

  for (var word in words) {
    print("Word in list: $word");
  }

  // Set example
  Set<String> uniqueWords = words.toSet();
  uniqueWords.add('Unique');
  print("\nSet: $uniqueWords");
  uniqueWords.remove('Unique');
  print("Set after removal: $uniqueWords");

  // Map example
  Map<String, int> wordLengths = {
    for (var word in uniqueWords) word: word.length
  };
  print("\nMap (Word → Length): $wordLengths");

  wordLengths.forEach((key, value) {
    print("Word: $key | Length: $value");
  });

  // --- FILE HANDLING ---
  print("\nFile Handling:");

  try {
    File inputFile = File('input.txt');
    File outputFile = File('output.txt');

    // Write user input to input.txt
    inputFile.writeAsStringSync(input);

    // Read content from input.txt
    String readContent = inputFile.readAsStringSync();
    print("Read from input.txt: $readContent");

    // Write processed content to output.txt
    outputFile.writeAsStringSync(
      'Processed String: $concatenated\n'
      'Reversed: $reversed\n'
      'Uppercase: $upper\n'
      'Lowercase: $lower\n'
      'Word Lengths: $wordLengths\n',
      mode: FileMode.write,
    );

    print("Data written successfully to output.txt");
  } catch (e) {
    print(" Error during file handling: $e");
  }

  // --- DATE AND TIME ---
  print("\nDate and Time:");

  DateTime now = DateTime.now();
  String formatted =
      "${now.day}/${now.month}/${now.year} ${now.hour}:${now.minute}";
  print("Current DateTime: $formatted");

  // Manipulate dates
  DateTime nextWeek = now.add(Duration(days: 7));
  DateTime lastWeek = now.subtract(Duration(days: 7));
  Duration diff = nextWeek.difference(lastWeek);

  print("Next Week: $nextWeek");
  print("Last Week: $lastWeek");
  print("Difference between next and last week: ${diff.inDays} days");

  // --- COMBINED APPLICATION ---
  print("\nCombined Application Section:");

  Map<String, dynamic> entry = {
    'input': input,
    'concatenated': concatenated,
    'reversed': reversed,
    'upper': upper,
    'lower': lower,
    'length': length,
    'timestamp': now.toIso8601String(),
  };

  List<Map<String, dynamic>> entries = [];
  entries.add(entry);

  // Save entries to a log file
  try {
    File logFile = File('log.txt');
    for (var e in entries) {
      logFile.writeAsStringSync(
        "Input: ${e['input']}\n"
        "Reversed: ${e['reversed']}\n"
        "Uppercase: ${e['upper']}\n"
        "Length: ${e['length']}\n"
        "Timestamp: ${e['timestamp']}\n\n",
        mode: FileMode.append,
      );
    }
    print("Entry logged successfully in log.txt");
  } catch (e) {
    print(" Error while logging data: $e");
  }

  print("\nProgram completed successfully!");
}
