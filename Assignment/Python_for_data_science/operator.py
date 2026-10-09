# Comparison operator
a = 10
b = 20
print(a > b)  # False
print(a < b)  # True
print(a == b)  # False
print(a != b)  # True
print(a >= b)  # False
print(a <= b)  # True

# assignment operator
x = 5
y = 10
x += y  # x = x + y
print(x)  # 15
x -= y  # x = x - y
print(x)  # 5

# simple interest
P = int(input("Enter Principal amount: "))  # Principal amount
R = int(input("Enter Rate of interest: "))  # Rate of interest
T = int(input("Enter Time in years: "))  # Time in years
SI = (P * R * T) / 100
print("Simple Interest:", SI) 


# //  loan emi calculator //
P = float(input("Enter Principal amount: "))
R = float(input("Enter Rate of interest: "))
N = float(input("Enter Time in years: "))

p = P
r = R/(12*100)
n = N*12

EMI = (p * r * (1 + r) ** n) / ((1 + r) ** n - 1)
print("EMI:", EMI)    
print("total emi to be paid:", EMI * n)
print("total amount to be paid:", EMI * n)
print("total interest to be paid:", (EMI * n) - P)
print("-" * 30)

# conditional operator
age = int(input("Enter your age: "))
result = "You are eligible to vote." if age >= 18 else "You are not eligible to vote."
print(result)

# Area of a Triangle
# Formula: Area = (base × height) / 2
base = float(input("Enter the base of the triangle: "))
height = float(input("Enter the height of the triangle: "))
area = (base * height) / 2
print("Area of the triangle:", area)

