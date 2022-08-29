import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstNumber = '0'.obs;
  var secondNumber = '0'.obs;
  var operator = '+'.obs;
  var result = '0'.obs;

  negative() {
    if (result.value.startsWith('-')) {
      result.value = result.value.substring(1);
    } else {
      result.value = '-${result.value}';
    }
  }

  clearAll() {
    firstNumber.value = '0';
    secondNumber.value = '0';
    operator.value = '+';
    result.value = '0';
  }

  clear() {
    result.value = '0';
  }

  delete() {
    if (result.value.length > 1) {
      result.value = result.value.substring(0, result.value.length - 1);
    } else {
      result.value = '0';
    }
  }

  addNumber(String num) {
    if (result.value == '0' && firstNumber.value == '0') {
      result.value = num;
      return;
    }

    if (firstNumber.value != '0' &&
        secondNumber.value != '0' &&
        result.value != '0') {
      firstNumber.value = result.value;
      result.value = '0';
      secondNumber.value = num;
      return;
    }

    if (firstNumber.value != '0') {
      if (secondNumber.value == '0') {
        secondNumber.value = num;
      } else {
        secondNumber.value += num;
      }
      result.value = '0';
    } else {
      result.value += num;
    }
  }

  addDot(String dot) {
    var current = result.value;
    if (current[current.length - 1] == '.' || current.contains('.')) {
      return;
    }
    result.value += dot;
  }

  addOperator(String op) {
    if (firstNumber.value != '0' && secondNumber.value != '0') {
      operator.value = op;
      operate();
      return;
    }
    if (result.value == '0') {
      return;
    }
    operator.value = op;
    firstNumber.value = result.value;
    secondNumber.value = '0';
    result.value = '0';
  }

  changeOperator(String op) {
    operator.value = op;
    operate();
  }

  add() {
    addOperator('+');
  }

  subtract() {
    addOperator('-');
  }

  divide() {
    addOperator('/');
  }

  multiply() {
    addOperator('*');
  }

  operate() {
    switch (operator.value) {
      case '+':
        result.value =
            (num.parse(firstNumber.value) + num.parse(secondNumber.value))
                .toString();
        break;
      case '-':
        result.value =
            (num.parse(firstNumber.value) - num.parse(secondNumber.value))
                .toString();
        break;
      case '*':
        result.value =
            (num.parse(firstNumber.value) * num.parse(secondNumber.value))
                .toString();
        break;
      case '/':
        try {
          result.value =
              (num.parse(firstNumber.value) / num.parse(secondNumber.value))
                  .toString();
        } catch (e) {
          result.value = '0';
        }
        break;
      default:
    }
  }
}
