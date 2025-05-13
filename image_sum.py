from calculator import sum_numbers

def main():
    """Calculate the sum of numbers from the image."""
    # Numbers from the image
    numbers = [1000, 2000, 3000, 4000, 5000, 6000]
    
    # Calculate the sum
    result = sum_numbers(numbers)
    
    # Print the result
    print("Numbers from the image:")
    for number in numbers:
        print(f"- {number}")
    print(f"\nSum of the numbers: {result}")

if __name__ == "__main__":
    main()
