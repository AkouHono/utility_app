This project is a Dart console application that demonstrates core programming concepts in Dart, including string manipulation, collections, file handling, and date/time operations.
It combines these features into a small, interactive app that processes user input, stores results, and logs activities with timestamps.

#Features
$ String Manipulation

Concatenates and interpolates strings

Extracts substrings

Converts text to uppercase and lowercase

Reverses strings

Counts string length

# Collections

Demonstrates use of Lists, Sets, and Maps

Performs operations such as adding, removing, and iterating over elements

Shows how to use each collection type effectively

# File Handling

Reads input from a file (input.txt)

Writes processed output to another file (output.txt)

Logs entries and timestamps in a log.txt file

Handles file-related errors gracefully

# Date and Time

Displays the current date and time

Adds and subtracts days using Duration

Calculates differences between dates

# Combined Application
The final section combines all utilities into a single workflow:

Accepts user input

Performs string operations

Stores results in a collection

Saves data to files

Logs the date and time of each entry

# How to Run

Make sure you have the Dart SDK installed.
Then, open a terminal in your project folder and run:

dart utility_app_dart.dart


or, if inside a Dart project with a pubspec.yaml:

dart run

# Files
File	Description
utility_app_dart.dart	Main Dart source file
input.txt	Stores raw user input
output.txt	Stores processed string data
log.txt	Stores log of all entries with timestamps
# Example Output
Enter a string: Dart programming is fun

String Manipulation:
Reversed: nuf si gnimmargorp traD
Uppercase: DART PROGRAMMING IS FUN
Length: 24
...
Entry logged successfully in log.txt
Program completed successfully!

# Concepts Demonstrated

Dart I/O (dart:io)

String manipulation

List, Set, and Map collections

DateTime and Duration operations

Exception handling

# License
This project is open-source and free to use for learning purposes.
