def add(x, y):
    """Add two numbers and return the result."""
    return x + y

def subtract(x, y):
    """Subtract y from x and return the result."""
    return x - y

def multiply(x, y):
    """Multiply two numbers and return the result."""
    return x * y

def divide(x, y):
    """Divide x by y and return the result."""
    if y == 0:
        return "Error: Division by zero is not allowed."
    return x / y

def sum_numbers(numbers):
    """Sum a list of numbers and return the result."""
    return sum(numbers)

def main():
    """Main function to run the calculator."""
    print("===== Simple Calculator =====")
    print("This calculator performs basic arithmetic operations on two numbers.")
    
    while True:
        print("\nOperations:")
        print("1. Addition (+)")
        print("2. Subtraction (-)")
        print("3. Multiplication (*)")
        print("4. Division (/)")
        print("5. Sum a list of numbers")
        print("6. Exit")
        
        # Get user operation choice
        operation = input("\nChoose operation (1/2/3/4/5/6): ")
        
        # Check if user wants to exit
        if operation == '6':
            print("Thank you for using the calculator. Goodbye!")
            break
            
        # Validate operation choice
        if operation not in ['1', '2', '3', '4', '5']:
            print("Invalid operation choice. Please try again.")
            continue
        
        # Get user input for numbers
        try:
            num1 = float(input("Enter first number: "))
            num2 = float(input("Enter second number: "))
            
            # Perform calculation based on operation choice
            if operation == '1':
                result = add(num1, num2)
                print(f"\nResult: {num1} + {num2} = {result}")
            elif operation == '2':
                result = subtract(num1, num2)
                print(f"\nResult: {num1} - {num2} = {result}")
            elif operation == '3':
                result = multiply(num1, num2)
                print(f"\nResult: {num1} * {num2} = {result}")
            elif operation == '4':
                result = divide(num1, num2)
                print(f"\nResult: {num1} / {num2} = {result}")
        except ValueError:
            print("Error: Please enter valid numbers.")
            
        # Handle sum of numbers operation
        if operation == '5':
            try:
                numbers_input = input("Enter numbers separated by commas: ")
                numbers = [float(num.strip()) for num in numbers_input.split(',')]
                result = sum_numbers(numbers)
                print(f"\nResult: Sum of {numbers} = {result}")
            except ValueError:
                print("Error: Please enter valid numbers separated by commas.")

if __name__ == "__main__":
    main()
