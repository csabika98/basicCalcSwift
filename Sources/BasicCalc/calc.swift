import Foundation

func startCalculator() {
    print("Enter first number: ", terminator: "")
    guard let firstInput = readLine(), let a = Double(firstInput) else {
        print("Invalid input for first number")
        return
    }

    print("Enter second number: ", terminator: "")
    guard let secondInput = readLine(), let b = Double(secondInput) else {
        print("Invalid input for second number")
        return
    }

    print("Enter an operator (+, -, *, /): ", terminator: "")
    guard let op = readLine() else {
        print("Invalid input for operator")
        return
    }

    var result: Double?
    switch op {
    case "+":
        result = add(a, b)
    case "-":
        result = subtract(a, b)
    case "*":
        result = multiply(a, b)
    case "/":
        result = divide(a, b)
    default:
        print("Invalid operator")
        return
    }

    if let result = result {
        print("Result: \(result)")
    }
}

func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double {
    if b == 0 {
        print("Error: Division by zero!")
        return Double.nan
    }
    return a / b
}





