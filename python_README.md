========================================
        CORE PYTHON
========================================

PART 1 — PYTHON FUNDAMENTALS
----------------------------------------

1. Python Introduction & Syntax
# 1. Python Introduction & Syntax

## 1.1 What is Python?

Python is a high-level, general-purpose programming language.

Python is used for:

* Web development
* Data analysis
* Artificial Intelligence
* Machine Learning
* Data Science
* Automation
* Web scraping
* API development
* Software development

---

## 1.2 Features of Python

### 1. Easy to Learn

Python has simple and readable syntax.

```python
name = "Jaydeep"

print(name)
```

### 2. High-Level Language

Python hides many low-level details such as memory management.

### 3. Interpreted

Python code is executed by the Python interpreter.
It execute line by line where code complier first complie all code then run it
python program stop when error occure. give single line code error
compiler give many error togather

```python
print("Hello")
```
### 4. Dynamically Typed

You don't have to declare the variable's data type explicitly.

```python
age = 25 # int
name = "Jaydeep" # str
price = 99.50 # float
```

### 5. Object-Oriented

Python supports classes and objects.

```python
class Student:
    pass
```

### 6. Cross-Platform

Python programs can run on Windows, macOS, and Linux with the appropriate Python installation.

---

# 1.3 First Python Program

```python
print("Hello, World!")
```

Output:

```text
Hello, World!
```

`print()` is a built-in Python function used to display output.

---

# 1.4 Python Syntax

Syntax means the rules used to write Python code correctly.

Example:

```python
age = 20

if age >= 18:
    print("Adult")
```

Here:

```python
if age >= 18:
```

starts the `if` block.

```python
    print("Adult")
```

is inside the block because it is indented.

---

# 1.5 Indentation

Python uses indentation to define blocks of code.

Correct:

```python
age = 20

if age >= 18:
    print("Adult")
```

Incorrect:

```python
age = 20

if age >= 18:
print("Adult")
```

The incorrect code produces an `IndentationError`.

---

# 1.6 Comments

Comments are used to explain code.

Python ignores comments during execution.

### Single-line comment

```python
# This is a comment

age = 20
```
### Multi-line comment
```python
''' 
This is
multi-line comment
'''
age = 20
```
---

# 1.7 Case Sensitivity

Python is case-sensitive.

These are different variables:

```python
name = "Jaydeep"
Name = "Raj"
```

`name` and `Name` are different.

Python functions are also case-sensitive.

Correct:

```python
print("Hello")
```

Incorrect:

```python
Print("Hello")
```

---

# 1.8 Statements

A statement is an instruction given to Python.

Example:

```python
name = "Jaydeep"
age = 25

print(name)
print(age)
```

Here:

```python
name = "Jaydeep"
```

is one statement.

```python
age = 25
```

is another statement.

---

# 1.9 Multiple Statements

Normally, write each statement on a separate line.

```python
x = 10
y = 20

print(x)
print(y)
```

Python also allows semicolons; , but they are generally unnecessary:

```python
x = 10; y = 20
```

Prefer:

```python
x = 10
y = 20
```

---

# 1.10 Python Blocks

A block is a group of statements that belong together.

Example:

```python
age = 20

if age >= 18:
    print("You are an adult")
    print("You can continue")
```

Both `print()` statements belong to the `if` block because they are indented.

---

# 1.11 Python Uses Colon `:`

A colon is used after statements that begin a code block.

Example:

```python
if age >= 18:
    print("Adult")
```

```python
for number in range(5):
    print(number)
```

Classes also use a colon:

```python
class Student:
    pass
```

---

# 1.12 Python is Dynamically Typed

You can assign different types of values to the same variable at different times.

```python
value = 10

value = "Hello"

value = 10.5
```

Python determines the type automatically.

---

# 1.13 Checking Python Version

You can check the Python version from the terminal:

```text
python --version
```

or:

```text
python -V
```

Example output:

```text
Python 3.13.x
```


---

# 1.14 `.py` File

Python source files normally use the `.py` extension.

Example:

```text
hello.py
calculator.py
practice.py
```

# Run it from the terminal:

```text
python hello.py
```

---

# 1.15 Important Syntax Rules

Remember these rules:

1. Python is case-sensitive.
2. Indentation is important.
3. Use `:` to start code blocks.
4. Use 4 spaces for normal indentation.
5. Comments start with `#`.
6. Python files normally use `.py`.
7. Python does not require `;` at the end of every statement.
8. Variable names cannot contain spaces.
9. Python keywords cannot be used as variable names.


---

# 1.16 Common Errors

### IndentationError

### NameError

```python
print(name)
```

If `name` has not been defined, Python raises a `NameError`.

---
### SyntaxError

```python
if age >= 18
    print("Adult")
```

The colon `:` is missing.

Correct:

```python
if age >= 18:
    print("Adult")
```

---

# Interview Questions

1. What is Python?
2. Is Python interpreted or compiled?
3. What is indentation in Python?
4. Is Python case-sensitive?
5. What is a comment?
6. What is the purpose of `:` in Python?
7. What is a Python interpreter?
8. What is the `.py` extension?
9. What does `print()` do?
10. What happens if indentation is incorrect?

---

# Key Point

---------------------------------------------------------------

## 2. Variables


## 2.1 What is a Variable?

A variable is a **name used to store or refer to a value** in Python.

Example:

```python
name = "Jaydeep"
age = 25
salary = 35000
```

Here:

```text
name    → variable
"Jaydeep" → value

age     → variable
25      → value

salary  → variable
35000   → value
```

---

# 2.2 Creating a Variable

Python does not require you to declare the data type of a variable.

```python
name = "Jaydeep"
age = 25
height = 5.8
```

Python automatically determines the type.

---

# 2.3 Assignment Operator `=`

The `=` operator assigns a value to a variable.

```python
age = 25
```

---

# 2.4 Example

```python
name = "Jaydeep"
age = 25

print(name)
print(age)
```

Output:

```text
Jaydeep
25
```

---

# 2.5 Checking Variable Type

Use the `type()` function.

```python
age = 25

print(type(age))
```

Output:

```text
<class 'int'>
```
---

# 2.6 Variable Naming Rules

A variable name:

### Rule 1 — Can contain letters

```python
name = "Jaydeep"
```

### Rule 2 — Can contain numbers

```python
student1 = "Jaydeep"
```

But a variable **cannot start with a number**.

Incorrect:

```python
1student = "Jaydeep"
```

Correct:

```python
student1 = "Jaydeep"
```

---

### Rule 3 — Underscore `_` is allowed

```python
student_name = "Jaydeep"
```

---

### Rule 4 — Spaces are not allowed

Incorrect:

```python
student name = "Jaydeep"
```

---

### Rule 5 — Cannot use Python keywords

Incorrect:

```python
class = "AI"
```

`class` is a Python keyword.

---

# 2.7 Python Keywords

Keywords have special meanings in Python.

Examples:

```text
if
else
elif
for
while
def
etc...
```
---

# 2.8 Multiple Assignment

Python allows assigning multiple values in one line.

```python
name, age, city = "Jaydeep", 25, "Rajkot"
```
---

# 2.9 Assigning the Same Value

You can assign the same value to multiple variables.

```python
x = y = z = 100
```

Now:

```text
x → 100
y → 100
z → 100
```

---

# 2.10 Swapping Variables

Python provides an easy way to swap values.

```python
a = 10
b = 20

a, b = b, a

print(a)
print(b)
```

Output:

```text
20
10
```
---

# 2.11 Variable Reassignment

A variable can be assigned a new value.

```python
age = 25

age = 26

print(age)
```

Output:

```text
26
```

The variable now refers to the new value.

---

# 2.12 Variables and Expressions

A variable can store the result of an expression.

```python
price = 100
quantity = 5

total = price * quantity

print(total)
```

Output:

```text
500
```

Here:

```text
price × quantity
100 × 5
= 500
```

The result is stored in `total`.


---

# 2.13 Variable with Input

The `input()` function returns user input as a string.

```python
name = input("Enter your name: ")

print(name)
```

---
3. Data Types
-------------------------------------
# 3. Data Types

## 3.1 What is a Data Type?

A data type tells Python **what kind of value an object contains**.

Example:

```python
age = 25
name = "Jaydeep"
price = 99.50
is_active = True
```

Here:

```text
age       → int
name      → str
price     → float
is_active → bool
```

Python automatically determines the data type.

---

# 3.2 Main Built-in Data Types

Python has several built-in data types.

```text
Python Data Types
│
├── Numeric
│   ├── int
│   ├── float
│   └── complex
│
├── Boolean
│   └── bool
│
├── Text
│   └── str
│
├── Sequence
│   ├── list
│   ├── tuple
│   └── range
│
├── Set
│   ├── set
│   └── frozenset
│
├── Mapping
│   └── dict
│
└── None
    └── NoneType
```

---


An integer is a **whole number without a decimal point**.


Integers can be positive, negative, or zero.


A float represents a number containing a decimal point.

A complex number contains a **real part** and an **imaginary part**.

Example:

```python
number = 3 + 4j
```

Here:

```text
3 → real part
4j → imaginary part
```

A string is a sequence of characters.

Strings are written inside quotes.

Both single and double quotes can be used.

Check type:

```python
name = "Jaydeep"

print(type(name))
```

Output:

```text
<class 'str'>
```

-
Boolean values represent either:

```text
True
False
```


#   `list`

A list stores multiple values in a single object.

Lists use square brackets:


A list can contain different data types:

```python
data = ["Jaydeep", 25, 99.50, True]
```


Lists are **mutable**, meaning their contents can be changed.

Example:

```python
skills = ["Python", "SQL"]

skills[0] = "Java"

print(skills)
```

Output:

```text
['Java', 'SQL']
```

---

#  `tuple`

A tuple is similar to a list but is **immutable**.

Tuples normally use parentheses:


```python
data = ("Jaydeep", 25, "Rajkot")

```


You cannot normally change an existing tuple element:

```python
data = ("Jaydeep", 25)

data[0] = "Raj"
```

This produces a `TypeError`.

---

#  `set`

A set is an unordered collection of **unique values**.

Sets use curly braces:

```python
numbers = {10, 20, 30}
```

Duplicate values are automatically removed:

The result contains each value only once.

Sets are useful when you need unique values.

---

# `dict`

A dictionary stores data as **key-value pairs**.

Example:

```python
student = {
    "name": "Jaydeep",
    "age": 25,
    "city": "Rajkot"
}
```

---

# `range`

`range` represents a sequence of numbers, commonly used with loops.

```python
numbers = range(5)

print(numbers)
```

Output:

```text
range(0, 5)
```


#  `NoneType`

`None` represents the absence of a value.

Example:

```python
result = None

print(result)
```

Output:

```text
None
```

`None` is commonly used when a value does not currently exist.

---

# 3.17 Ordered vs Unordered

Some Python collections maintain an order, while others do not provide indexing in the same way.

### Ordered collections

```text
list
tuple
str
range
dict
```

A set does not support indexing like a list:


Python has several sequence types:

```text
str
list
tuple
range
```

They support concepts such as indexing and slicing, although their mutability differs.




---

# 3.23 Data Type Examples

```python
integer_value = 100
float_value = 10.5
complex_value = 3 + 4j
string_value = "Python"
boolean_value = True
list_value = [1, 2, 3]
tuple_value = (1, 2, 3)
set_value = {1, 2, 3}
dictionary_value = {"name": "Jaydeep"}
range_value = range(5)
none_value = None
```
---
4. Type Casting
------------------------------
# 4. Type Casting

## Definition

**Type casting** means converting one data type into another.

Python provides functions such as:

```text
int()
float()
str()
bool()
list()
tuple()
set()
```

---

## 1. String → Integer

```python
age = "25"

age = int(age)

```

---

##  Float → Integer

```python
price = 99.99

price = int(price)

print(price)
```

Output:

```text
99
```

⚠️ The decimal part is removed; it is **not rounded**.

---
##  List → Tuple

```python
numbers = [1, 2, 3]

numbers = tuple(numbers)
```
---

##  Tuple → List

```python
numbers = (1, 2, 3)

numbers = list(numbers)

print(numbers)
```

Output:

```text
[1, 2, 3]
```
---

##  List → Set

```python
numbers = [1, 2, 2, 3]

numbers = set(numbers)

print(numbers)
```

Duplicate values are removed.

---

## 10. Input Type Casting

`input()` always returns a string.

```python
age = int(input("Enter age: "))
```

## Invalid Conversion

This causes an error:

```python
age = int("hello")
```

Because `"hello"` cannot be converted to an integer.
---
## Quick Reference

```text
int("10")       → 10
float("10.5")   → 10.5
str(100)        → "100"
bool(1)         → True
bool(0)         → False
list((1, 2))    → [1, 2]
tuple([1, 2])   → (1, 2)
set([1, 1, 2])  → {1, 2}
```
---
5. Input & Output
---------------------------
# Output — print() 
use to display output
### sep — Separator
```python
print("Python", "SQL", "AI", sep=" | ")
```
Output:
```text
Python | SQL | AI
```
Default separator is a space.

- print("Hello", end=" ")
 is print next result in same line
- Taking User Input
```python
age = input("Enter age: ") # always return string
```
---
6. Operators
-------------------------------
# 6. Operators

## Definition

Operators are symbols or keywords used to perform operations on values.
Operators allow Python to perform calculations, comparisons, assignments, logical operations, membership checks, and identity checks.

---

## 1. Arithmetic Operators

Used for mathematical calculations.

```text
+    Addition
-    Subtraction
*    Multiplication
/    Division
//   Floor Division
%    Modulus
**   Exponentiation
```

Example:

```python        
a = 10
b = 3

print(a + b)    # 13
print(a - b)    # 7
print(a * b)    # 30
print(a / b)    # 3.333...
print(a // b)   # 3
print(a % b)    # 1
print(a ** b)   # 1000
```

---

## 2. Comparison Operators

Used to compare values. The result is `True` or `False`.

```text 
==    Equal
!=    Not equal
>     Greater than
<     Less than
>=    Greater than or equal
<=    Less than or equal
```
---

## 3. Assignment Operators

Used to assign or update values.

```text
=     Assign
+=    Add and assign
-=    Subtract and assign
*=    Multiply and assign
/=    Divide and assign
%=    Modulus and assign
```

Example:

```python id="4d5j5u"
x = 10
x += 5    # 15

x *= 2  # 30
```
---

## 4. Logical Operators

Used to combine conditions.

```text 
and
or
not
```

`and` Both conditions must be `True`.
`or` At least one condition must be `True`.
`not` Reverses the result.

```python id="3c9qwk"
is_active = True

print(not is_active)
```

Output:

```text 
False
```

---

## 5. Membership Operators

Check whether a value exists in a sequence.

```text 
in
not in
```

Example:

```python
skills = ["Python", "SQL", "Pandas"]

print("Python" in skills)
print("Java" not in skills)
```

Output:

```text
True
True
```

---

## 6. Identity Operators

Check whether two variables refer to the same object.

```text 
is
is not
```

Example:

```python 
a = [1, 2]
b = a

print(a is b)
```

Output:

```text
True
```

### Important

`is` checks **object identity**.

`==` checks **value equality**.

## 7. Conditional Expression / Ternary Operator
python not use this ? :
```python
age = 26
result = "adult" if age >= 18 and age < 25 else "young" if age >= 25 else "minor"
# we write code in single line it's called condtional operator
print(result) 
```

## 5. betwise operator 
# >> , << , & , ^ , ~, 

```text
&   → AND
|   → OR
^   → XOR
~   → NOT
<<  → Shift LEFT
>>  → Shift RIGHT
```

```python
a = 5      # 101
b = 3      # 011
#          -------
#             001   → output is 1 
print(a & b)
print(a | b) # If at least one bit is 1, result is 1.
# 111 → output is 7 
print(a ^ b) # If the bits are different → 1. If they are same → 0.
# 110 → output is 6 
print(~a) # useful python rule ~a = -(a+1)
#  output is -6
print(a<<1) # approximately a * 2
#  output is 10
print(a<<2) # a * 2ⁿ → 5 * 2²
print(a>>1) # approximately a / 2 ( value dount up to main number 2.5 → 2)
#  output is 2
print(a>>2) # a ÷ 2ⁿ → 5 ÷ 2²
#  output is 1 (because of 7/4 = 1.75)
```

## how binaty calculate
| Bit 1 | Bit 2 | Result |
| ----: | ----: | ----: |
|     0 |     0 |      0 |
|     0 |     1 |  **1** |
|     1 |     0 |  **1** |
|     1 |     1 |  **1** |

```text 
output of 5 | 3
    101
  | 011
  -----
    111

1 | 0 = 1
0 | 1 = 1
1 | 1 = 1

101 | 011 = 111

Binary uses powers of 2:

    1    1    1
    ↓    ↓    ↓
   2²   2¹   2⁰
    ↓    ↓    ↓
    4    2    1
4 + 2 + 1 = 7

```    
---
7. Strings
----------------------------------------
### What is a String?

A string is a sequence of characters used to store text.
string can create by ' ' , " " , multiline str ''' '''
Escape sequence character \n new line , \t tab space between two str
---
8. String Methods
---------------------------------------
- String methods are built-in functions used to work with and modify string data.
- 
```python
text = "Python is easy"

print(text.split())

# Output:

# ['Python', 'is', 'easy']
```
| Method | Purpose |
|---|---|
| `upper()` | Uppercase |
| `lower()` | Lowercase |
| `capitalize()` | First character uppercase |
| `title()` | First letter of each word uppercase |
| `strip()` | Remove outer spaces |
| `replace()` | Replace text |
| `split()` | String → list |
| `join()` | List/items → string |
| `find()` | Find position |
| `count()` | Count occurrences |
| `startswith()` | Check beginning |
| `endswith()` | Check ending |
| `isdigit()` | Check digits |
| `isalpha()` | Check letters |
| `isalnum()` | Check letters/numbers |
---
9. Indexing & Slicing
----------------------------------
# 9. Indexing & Slicing

Indexing and slicing are used to **access characters or parts of a string**.

---

## 1. Indexing

Each character has a position called an **index**.

```python
text = "Python"
```

Index positions:

```text
 P  y  t  h  o  n
 0  1  2  3  4  5
```

Access a character:

```python
print(text[0])
```

Output:

```text
P
```

---

## 2. Negative Indexing

Negative indexes start from the end.

```text
 P   y   t   h   o   n
-6  -5  -4  -3  -2  -1
```

Example:

```python
print(text[-1])
```

Output:

```text
n
```

---

## 3. Slicing

Slicing extracts a part of a string.

Syntax:

```python
string[start:stop]
```

`stop` is **not included**.

Example:

```python
text = "Python"

print(text[0:3])
```

Output:

```text
Pyt
```

---

## 4. Start Omitted

```python
print(text[:3])
```

Output:

```text
Pyt
```

Means:

```text
start from beginning → stop at index 3
```

---

## 5. Stop Omitted

```python
print(text[2:])
```

Output:

```text
thon
```

Means:

```text
start at index 2 → go to the end
```

---

## 6. Both Omitted

```python
print(text[:])
```

Output:

```text
Python
```

---

## 7. Step

Syntax:

```python
string[start:stop:step]
```

Example:

```python
text = "Python"

print(text[0:6:2])
```

Output:

```text
Pto
```

It takes every 2nd character.

---

## 8. Reverse a String

Use step `-1`:

```python
text = "Python"

print(text[::-1])
```

Output:

```text
nohtyP
```

---

## Quick Reference

```python
text = "Python"

text[0]       # P
text[-1]      # n
text[0:3]     # Pyt
text[:3]      # Pyt
text[2:]      # thon
text[:]       # Python
text[0:6:2]   # Pto
text[::-1]    # nohtyP
```
Remember:

[start : stop : step]

The stop index is always excluded.
---

10. Lists
---
# 10. Lists

A **list** is a collection of multiple values stored in a single variable.

Lists are:

* **Ordered**
* **Mutable** — can be changed
* **Indexed**
* Can contain **duplicate values**
* Can contain **different data types**
* Lists support **slicing & indexing** like strings.
* Lists allow duplicates.
* Check length of list `(len(fruits))`
* List Can Contain Another List `data = [10, "Python", [1, 2, 3]]`
---

## 1. Creating a List

Use `[]`.

Example with different data types:

```python
data = ["Jaydeep", 25, 75.5, True]
```
---

## 2. Change List Items

Lists are **mutable**, so items can be changed.

```python
fruits = ["apple", "banana", "mango"]

fruits[1] = "orange"

print(fruits)
```

Output:

```text
['apple', 'orange', 'mango']
```
---
## 3. Check if an Item Exists

Use `in`:

```python
fruits = ["apple", "banana", "mango"]

print("apple" in fruits)
```

Output:

```text
True
```

---
11. List Methods

- List methods are built-in methods used to add, remove, change, and organize list items.

```python
a = [1,2,3]
a.append(4) # add value at end a.append([4,5]) output is [1, 2, 3, [4, 5]]
a.extend([5,6,7,8,2]) # add multiple items
a.insert(1,4) # add item at specific index method.insert(index,value)
a.insert(1,[4,6]) # output is [1, [8, 9], 2, 3]
a.remove(1) # removes first occurrence value ( only single value) 
a.pop(2) # remove 2 index value empty pop() remove last value
a.clear() # delete all data output is []
a.index(2) # Returns the index of the first matching value. - 1
a.count(2) # Counts how many times a value occurs.
a.sort() # sort the value is ascending 
a.sort(reverse= True) # sort the value is descending 
```
---
12. Tuples

A tuple is a collection of multiple values stored in a single variable.

Tuples are:

* Ordered
* Immutable — cannot be changed after creation
* Indexed
* Allow duplicate values
* Can contain different data types
* Tuple method `count`, `len`, `index`
- Use parentheses ().
```python
data = ("Jaydeep", 25, 75.5, True)
```

---
13. Sets

- A set is a collection of unique values.

- Sets are:

* Mutable — can be changed
* Do not allow duplicate values
* Not indexed
* Useful for unique data and set operations
* Can contain different hashable data types
* Use curly braces {}.
* create empty set  a = set() not use a = {}

```python
a = {1,2,3,5}
b = {3,4,5}

a.add(4) # all value at their asceiding place {1, 2, 3, 4, 5}
a.remove(2) # remove matching value
c = a | b  # Combines values from both sets.
c = a.union(b) # Combines values from both sets.
c = a.intersection(b) # Returns values present in both sets.
c = a.difference(b) # Returns values present in the first set but not the second.
c = a ^ b # Returns values that are in either set, but not in both. not matching values
print(2 in a) membership cheking - true or false
```
---
14. Dictionaries

- A dictionary stores data in key-value pairs.
* dictionary can not contain duplicate key
* Allow different data type

```python
# Syntax:

dictionary = {
    "key": "value"
}

# Example:

student = {
    "name": "Jaydeep",
    "age": 25,
    "city": "Rajkot"
}
```
- add nwe item 
```python
student["fname"] = "vanza"
```
- Nested Dictionary
```python
student = { "name": "Jaydeep", "address": {
     "city": "Rajkot", "state": "Gujarat" 
     } }
# access nested dict
print(student["address"]["city"]) 
# check if key exist
print("name" in student) # true or false
print(len(student))
```
---
15. Dictionary Methods
- Dictionary methods are built-in methods used to access, add, update, and remove key-value pairs.

```python
student = { "name": "Jaydeep", "address": {
     "city": "Rajkot", "state": "Gujarat" 
     } }

print(student.keys()) # rerurn all keys
print(student.values()) # return all values
print(student.items()) # return all key + value
print(student.get('salary' , 0)) # return value of key alse print 0
student.update({
    'name': "jaydip" ,
    'salary': 250000
    }) # name update and salary added
age = student.pop('age') # remove specific key and return it's value
item = student.popitem() #Removes and returns the last inserted key-value pair. 
student.setdefault('experiance',50) # If the key doesn't exist, it creates the key with the given default value.
student.clear() # clear dictionary
new_student = student.copy # Creates a shallow copy of the dictionary.
```

PART 2 — CONTROL FLOW
----------------------------------------

16. `if` , `if-else` ,`if-elif-else` Statement
- The if statement executes code only when a condition is True.
- If the condition is False, the code inside if does not execute.
- all condition false then else condition is exicute

```python
marks = 75
if marks >= 90:
       print("A")
elif marks >= 70:
       print("B")
elif marks >= 50:
       print("C")
else: print("Fail")
```

17. Nested Conditions
- A nested condition means putting one if statement inside another if statement.

```python
age = 20
if age >= 18:
  if age >= 21:
     print("Allowed")
  else: print("Under 21")
else: print("Under 18")
```
---
18. for Loop

A `for` loop is used to **repeat code for each item in a sequence or iterable**.

### Syntax

```python
for variable in iterable:
    statement
```

---

## 1. Loop Through a List

```python
fruits = ["apple", "banana", "mango"]

for fruit in fruits:
    print(fruit)
```

Output:

```text
apple
banana
mango
```

The loop takes **one item at a time**.

---

## 2. Loop Through a String

```python
name = "Python"

for character in name:
    print(character)
```

Output:

```text
P
y
t
h
o
n
```

---

## 3. Using `range()`

```python
for number in range(5):
    print(number)
```

Output:

```text
0
1
2
3
4
```

`range(5)` generates numbers from **0 to 4**.

---

## 4. `for` Loop with a Condition

```python
numbers = [1, 2, 3, 4, 5]

for number in numbers:
    if number % 2 == 0:
        print(number)
```

Output:

```text
2
4
```

---

## 5. Loop Through a Dictionary

```python
student = {
    "name": "Jaydeep",
    "age": 25
}

for key in student:
    print(key)
```

Output:

```text
name
age
```

To get both key and value:

```python
for key, value in student.items():
    print(key, value)
```
---
19. while Loop

A while loop repeats code as long as a condition is True.
```python
number = 1 
while number <= 5:
     print(number)
     number += 1
```
it print number 1 to 5
---
20. `break` , `continue` , `pass`
* break → stop the loop
* continue → skip the current iteration
* pass → do nothing

```python
for number in range(1, 6):
     if number == 3: 
        break  # continue  , pass 
    print(number)
```
21. Nested Loops
```python
for i in range(1, 4):
    for j in range(1, 4):
        print(i, j)
```
Output:

1 1
1 2
1 3
2 1
2 2
2 3
3 1
3 2
3 3
How It Works
i = 1 → j = 1, 2, 3
i = 2 → j = 1, 2, 3
i = 3 → j = 1, 2, 3
---
22. range()
range() generates a sequence of numbers, commonly used with for loops.

- Syntax
    range(start, stop, step)

    Important: stop is not included.

```python
for i in range(5): print(i) # 1 - 2 - 3 - 4 - 5 
print (i)
```
* range(2 , 5) output  2 - 3 - 4 - 5
* range(1 , 10 , 2) output  1 - 3 - 5 - 7 - 9
* `negative setp` range(5, 0 , -1) output 5 ,4 ,3 ,2 ,1
* `range to list` numbers = list(range(5)) output [0, 1, 2, 3, 4]

PART 3 — FUNCTIONS
----------------------------------------

23. Functions
A function is a reusable block of code that performs a specific task.

Creating a Function Use the `def` keyword.
```python
def add():
    a = 10
    b = 20
    print(a + b)
```
calling function
```python
add()
```
- ***args**
* use it when we don't know howmany argument pass 
* `*args` allows a function to accept multiple positional arguments.
* `*args` stores the values as a tuple.

```python
def add(*args): 
    # we can also use another name like add(*num)  
    print(sum(args)) # print(sum(num))

add(10,20,30,40 ) # output  100
```

- ****kwargs**
* use it when we don't know howmany argument pass
* `**kwargs` allows a function to accept multiple keyword arguments.
```python
def student(**information): 
    print(information) 

student(name="Jaydeep", age=25, language="Python")
```
* we can also use all 3 type of paramters togather
```python
def test(a , *args, **kwargs): 
    print(a)
    print(args) 
    print(kwargs) 
test(50, 10, 20, name="Jaydeep", language="Python")
```
- first positonal argument goes into a and other goes into args store as tuple
- key value pair goes to kwargs and store as dictionary

24. Parameters & Arguments

*Parameters* are variables written when defining a function.

*Arguments* are the actual values passed when calling the function.
```python
def add(a, b): # a and b is parameters
    print(a + b)
    
add(10, 20) # 10 and 20 are arguments
```
- **Default Arguments**
```python
def add(a=10 , b=20): # add(10,20 not acceptable only variable name allowed)
# def add(a , b=10) if we set one default value it must be second not first
    print(a + b)

add()    # 30 take default value from function
add(30, 50) # 80
```
- **Keyword Arguments**
```python
def student(name, age): 
    print(name, age)

# Positional:
student("Jaydeep", 25)
# Keyword:
student(name="Jaydeep", age=25)
# mix → Positional arguments must come before keyword arguments.
student("Jaydeep", age=25)
```

25. return
* `return` Sends the value back so it can be stored or used later.
* immediately exits the function `→` The code after return is not executed.
```python
def function_name(parameters): 
    result = calculation
    return result
```
---
26. Scope
# 36. Scope

**Scope** means the area of a program where a variable can be **accessed or used **.


```python
x = 10 # golbal variable

def test():
    x = 20 # local variable
    print(x)

test() # 20
print(x) # 10
```
The local `x` and global `x` are different variables.

## Important Points

```text
Local  → created inside a function
Global → created outside a function
Scope  → where a variable can be accessed
```

### Key Point

Python mainly follows the **LEGB** rule when looking for a variable:

```text
L → Local →   inside the function
E → Enclosing → outside the current function
G → Global →  outside of all the function
B → Built-in →  look for built-in keyword
```

27. Lambda Functions

# 38. Lambda Functions

A **lambda function** is a small, anonymous function written in **one line**.

- Basic Syntax

```python
lambda arguments: expression
```


```python
square = lambda x: x * x

print(square(5))
```

Output:

```text
25
```

- Normal Function vs Lambda

Normal function:

```python
def add(a, b):
    return a + b
```

Lambda:

```python
add = lambda a, b: a + b
```

Both can be used like:

```python
print(add(10, 20))
```

A lambda can have multiple arguments but only **one expression**.

```python
multiply = lambda a, b: a * b
```

39. Recursion
# 39. Recursion

**Recursion** means a function **calls itself**.

- Base Case

A recursive function must have a **base case** to stop the recursion.

```python
if n == 0:
    return
```

Without a stopping condition, the function can continue calling itself until Python raises a `RecursionError`.

- Factorial Example

```python
def factorial(n):
    if n == 1:
        return 1

    return n * factorial(n - 1) 
    # 5 x 4 x 3 x 2 x 1

print(factorial(5))
```

Output:

```text
120
```

```python
def power(base, exponent):
    if exponent == 0:
        return 1
    return base * power(base, exponent - 1)


while True:
    base = int(input("Enter base: "))
    exponent = int(input("Enter exponent: "))

    if exponent == 0:
        print("You are exiting loop")
        break

    print(power(base, exponent))
```


PART 4 — ERROR HANDLING
----------------------------------------

40. Errors vs Exceptions

# 40. Errors vs Exceptions

Python programs can face problems while running. These are commonly handled as **errors** or **exceptions**.

## 1. Error

An error is a problem that prevents the program from running correctly.

Example:

```python
print("Hello"
```

This causes a **SyntaxError** because the syntax is incomplete.

## 2. Exception

An exception occurs **during program execution**.

Example:

```python
a = 10
b = 0

print(a / b)
```

Output:

```text
ZeroDivisionError
```

The syntax is correct, but Python cannot divide by zero.

## Common Exceptions

| Exception | Example |
|---|---|
| `ZeroDivisionError` | `10 / 0` |
| `ValueError` | `int("hello")` |
| `TypeError` | `"10" + 5` |
| `IndexError` | `list[10]` |
| `KeyError` | `dict["missing"]` |
| `NameError` | Using an undefined variable |

## Important Difference

```text
Error       → problem in the program
Exception   → problem that occurs during execution
```

Exceptions can be handled using:

```python
try:
    # risky code
except:
    # handle exception
```
---
41. try, except , Multiple Exceptions , else , finally

```python
try:
    number = int(input("Enter a number to calculate its factorial: ")) 
    result = 10/number 
except ValueError:
    print("Invalid input. Please enter a valid integer.")
except ZeroDivisionError:     
       print("cannot divide by zero")
else:
# The else block runs only when no exception occurs in the try block.
  print( result)
finally: 
# finally is a block that always runs, whether an exception occurs or not.
    print("Execution completed.")
```
it not stop the program accept it and run next step 
---
42. raise

Python detects an exception → automatically

raise → programmer intentionally triggers an exception

```python
try:
    age = int(input("Enter your age: "))

    if age < 18:
        raise ValueError("Age must be 18 or above")

    print("Eligible")

except ValueError as e:
    print(e)
```
42. Custom Exceptions

A custom exception is an exception created by the programmer for a specific situation.

```python
class   MyCustomError(Exception):
    pass
try:
     age = int(input("Enter your age: "))
 
     if age < 18:
         raise MyCustomError("Age must be 18 or above")

     print("Eligible")
except MyCustomError as e:
     print(f"MyCustomError: {e}")
```
---
PART 5 — MODULES & PACKAGES
----------------------------------------

43. Modules

A module is a Python file (.py) that contains code such as functions, variables, and classes that can be reused in another Python program.
* Reuse code
* Organize code
* Keep programs clean
* Avoid writing the same code again

- example
```python
#Create a file called:
#math_tools.py

def add(a, b):
    return a + b

def multiply(a, b):
    return a * b
```
```python
# Now create another file:
# main.py
import math_tools

print(math_tools.add(10, 20)) # 30
print(math_tools.multiply(5, 4)) # 20
```
- Python provides many built-in modules that contain ready-made functions and tools
# common in-built modules

| Module | Purpose |
|---|---|
| `math` | Mathematics |
| `random` | Random values |
| `datetime` | Date and time |
| `os` | Operating system |
| `sys` | Python/system information |
| `json` | JSON data |
| `re` | Regular expressions |
| `sqlite3` | SQLite database |

---
44. import , from ... import

import is used to bring a module into your Python program so you can use its code.
```python
# import full module
import math as m
# impoer specific module
# from module import item
from math import sqrt, factorial
print(m.sqrt(25)) # 5
```
---

45. Packages

A package is a folder that contains related Python modules.
## 1. Package Structure

```text
project/
│
├── main.py
│
└── tools/
    ├── __init__.py
    ├── math_tools.py
    └── string_tools.py
```

Here:

```text
tools/          → package
math_tools.py   → module
string_tools.py → module
```
```python
from tools.math_tools import add

print(add(10, 20))
```
---
46. __name__ == "__main__"

__name__ is a special Python variable.
When a Python file is run directly, Python sets:
```text
__name__ == "__main__"
```

```python
def greet(num):
    print(num ** 2)


if __name__ == "__main__":
   # for testing purpose programer run this code
    greet(5)
```    
if we not use `if __name__ == "__main__"` then greet(5) it run automatically when some one import this module
run code below `if __name__ == "__main__"` only when is run locally & in not run if run somewhere else after import

PART 6 — FILE HANDLING
----------------------------------------

55. File Handling   
56. Reading Files
57. Writing Files
58. Appending Files
59. with open()
60. CSV Files
61. JSON Files


PART 7 — COMPREHENSIONS
----------------------------------------

62. List Comprehension
63. Dictionary Comprehension
64. Set Comprehension
65. Conditional Comprehensions


PART 8 — OBJECT-ORIENTED PYTHON
----------------------------------------

66. Classes & Objects
67. __init__()
68. Instance Variables
69. Instance Methods
70. Class Variables
71. Class Methods
72. Static Methods
73. Encapsulation
74. Inheritance
75. Multiple Inheritance
76. Method Overriding
77. Polymorphism
78. Abstraction
79. Magic/Dunder Methods


PART 9 — ADVANCED CORE PYTHON
----------------------------------------

80. Iterators
81. Generators
82. yield
83. Decorators
84. Closures
85. map()
86. filter()
87. reduce()
88. zip()
89. enumerate()
90. any() and all()
91. sorted() & Custom Sorting
92. * and ** Unpacking
93. Shallow Copy vs Deep Copy
94. is vs ==
95. None
96. Truthy & Falsy Values


PART 10 — PRACTICAL CORE PYTHON
----------------------------------------

97. Regular Expressions
98. datetime
99. os
100. pathlib
101. sys
102. math
103. random
104. collections
105. itertools
106. sqlite3
107. Logging
108. Virtual Environments
109. pip
110. Environment Variables


PART 11 — PYTHON FOR AI / DATA
----------------------------------------

111. NumPy
112. Pandas
113. Matplotlib
114. Requests
115. BeautifulSoup
116. Scrapy
117. APIs
118. JSON APIs
119. SQL + Python
120. Python Projects


========================================
              END — 120
========================================