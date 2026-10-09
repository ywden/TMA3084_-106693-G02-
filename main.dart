import 'dart:io';

void main() {
  String orderAgain = "yes";

  while (orderAgain == "yes") {
    print("================================");
    print("Pizza Price:");
    print("Small: 5 USD, Medium: 7 USD, Large: 10 USD");
    
    stdout.write("Enter pizza size (small, medium or large): ");
    String? sizeInput = stdin.readLineSync();
    String pizzaSize = sizeInput != null ? sizeInput.trim().toLowerCase() : "";

    stdout.write("How many pizzas do you want of $pizzaSize? ");
    String? quantityInput = stdin.readLineSync();
    int quantity = int.tryParse(quantityInput ?? "") ?? 0;

    int total = 0;

    switch (pizzaSize) {
      case "small":
        total = quantity * 5;
        break;
      case "medium":
        total = quantity * 7;
        break;
      case "large":
        total = quantity * 10;
        break;
      default:
        print("Invalid pizza size selected.");
        continue; // Restart the while loop for invalid inputs
    }

    print("Your Total Payment is: $total USD");
    print("================================");
    
    stdout.write("Order again? (yes/no): ");
    String? againInput = stdin.readLineSync();
    orderAgain = againInput != null ? againInput.trim().toLowerCase() : "no";
  }

  print("Thank you for ordering!");
}