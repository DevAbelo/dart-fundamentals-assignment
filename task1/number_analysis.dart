// Task 1: Number Analysis App
// Name: Abel Debalke

// ===============================
// BASIC REQUIRED FUNCTIONS
// ===============================

// Find maximum value using loop
int findMax(List<int> numbers) {

  // BONUS: Empty list guard
  if (numbers.isEmpty) {
    print("Error: List is empty.");
    return 0;
  }

  int max = numbers[0];

  for (int num in numbers) {
    if (num > max) {
      max = num;
    }
  }

  return max;
}


// Find minimum value using loop
int findMin(List<int> numbers) {

  if (numbers.isEmpty) {
    print("Error: List is empty.");
    return 0;
  }

  int min = numbers[0];

  for (int num in numbers) {
    if (num < min) {
      min = num;
    }
  }

  return min;
}


// Calculate sum using accumulator pattern
int calculateSum(List<int> numbers) {

  if (numbers.isEmpty) {
    print("Error: List is empty.");
    return 0;
  }

  int sum = 0;

  for (int num in numbers) {
    sum += num;
  }

  return sum;
}


// Calculate average (calls calculateSum)
double calculateAverage(List<int> numbers) {

  if (numbers.isEmpty) {
    print("Error: List is empty.");
    return 0;
  }

  int sum = calculateSum(numbers);

  return sum / numbers.length;
}


// ===============================
// BONUS FUNCTION 1
// Count negative numbers
// ===============================

int countNegatives(List<int> numbers) {

  int count = 0;

  for (int num in numbers) {
    if (num < 0) {
      count++;
    }
  }

  return count;
}


// ===============================
// BONUS FUNCTION 2
// Sort list without .sort()
// Bubble Sort
// ===============================

List<int> sortNumbers(List<int> numbers) {

  List<int> sorted = List.from(numbers);

  for (int i = 0; i < sorted.length - 1; i++) {

    for (int j = 0; j < sorted.length - i - 1; j++) {

      if (sorted[j] > sorted[j + 1]) {

        int temp = sorted[j];

        sorted[j] = sorted[j + 1];

        sorted[j + 1] = temp;

      }

    }

  }

  return sorted;
}


// ===============================
// BONUS FUNCTION 3
// Using Dart collection methods
// ===============================

// Max using reduce
int findMaxUsingReduce(List<int> numbers) {

  if (numbers.isEmpty) return 0;

  return numbers.reduce((a, b) => a > b ? a : b);
}


// Min using reduce
int findMinUsingReduce(List<int> numbers) {

  if (numbers.isEmpty) return 0;

  return numbers.reduce((a, b) => a < b ? a : b);
}


// Sum using fold
int calculateSumUsingFold(List<int> numbers) {

  return numbers.fold(0, (sum, num) => sum + num);
}


// Average using fold
double calculateAverageUsingFold(List<int> numbers) {

  if (numbers.isEmpty) return 0;

  return numbers.fold(0, (sum, num) => sum + num) / numbers.length;
}



// ===============================
// MAIN PROGRAM
// ===============================

void main() {

  final numbers = <int>[34, -7, 89, 12, -45, 67, 3, 100, -2, 55];

  print("Number Analysis Results");
  print("=======================");

  print("Numbers: $numbers");

  print("Maximum value : ${findMax(numbers)}");

  print("Minimum value : ${findMin(numbers)}");

  print("Sum           : ${calculateSum(numbers)}");

  print("Average       : ${calculateAverage(numbers)}");


  // BONUS OUTPUT

  print("\nBonus Analysis");
  print("----------------");

  print("Negative numbers : ${countNegatives(numbers)}");

  print("Sorted numbers   : ${sortNumbers(numbers)}");


  print("\nUsing Collection Methods");

  print("Max (reduce) : ${findMaxUsingReduce(numbers)}");

  print("Min (reduce) : ${findMinUsingReduce(numbers)}");

  print("Sum (fold)   : ${calculateSumUsingFold(numbers)}");

  print("Average (fold): ${calculateAverageUsingFold(numbers)}");

}