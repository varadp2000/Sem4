import math

# Q1
#This module provides access to the mathematical functions defined by the C standard.
## Returns square root of given number
math.sqrt(9)
## Returns the smallest integer greater than or equal to x
math.ceil(4.3)	
## Returns x with the sign of y
math.copysign(4, -1)	
## Returns the factorial of x
math.factorial(6)
## Returns the largest integer less than or equal to x
math.floor(3.2)
## Returns x raised to the power y
math.pow(7, 2)
#All Trigonometric functions takes input in radians
## Returns the sine of x
math.sin(0)
## Returns the cosine of x
math.cos(0)
## Returns the tangent of x
math.tan(0)
## Mathematical constant, the ratio of circumference of a circle to it's diameter (3.14159...)
math.pi
## mathematical constant e (2.71828...)
math.e

# Q2

    """
    returns the count of the number of strings where the string length
    is 2 or more and the first and last chars of the string are the same. 
    """
def count(l=[]):
    count=0
    for i in l:
        if len(i)>=2 and i[0] == i[-1]:
            count=count+1
    return count

l1 = ["hello","helloh","abaac","defd","hh","121"]
print(count(l1))

# Q3
    """
    return a list with the strings in sorted order, except group all the
    strings that begin with 'x' first.  
    """
def front_x(x=[]):
    temp1 = [] 
    for i in x:
        if i.startswith('x'):
            temp1.append(i)
            x.remove(i)
    x.sort()
    temp1.sort()
    return temp1+x

x=['mix', 'xyz', 'apple', 'xanadu', 'aardvark']
print(front_x(x))

# Q4

"""
    return True if the array contains a 2 next to a 2 somewhere. 
"""

def has22(arr=[]):
    f=0
    for i in range(0, len(arr)-1):
        if arr[i] == arr[i+1] and arr[i] == 2:
            f=1
            return True
    if f==0:
        return False

arr = [2,2,5,1,3,2]
print(has22(arr))

# Q5

"""
    Python function transpose(m) that takes as input a two dimensional matrix
using this row-wise representation and returns the transpose of the matrix using the
same representation. 
"""

def transpose(matr):
    result = [[0 for x in range(len(matr))] for y in range(len(matr[0]))] 

    for i in range(len(matr)):
        for j in range(len(matr[0])):
            result[j][i] = matr[i][j]
    
    return result

print(transpose([[1,4,9]])) 
print(transpose([[1,3,5],[2,4,6]]))
print(transpose([[1,1,1],[2,2,2],[3,3,3]]))

# Q6 - Ans B
"""
Suppose u and v both have values of type set and u^v == u - v. From this we can
conclude that: (Select the correct choice and justify your answer)
a. u and v are identical
b. u and v are disjoint -- Correct ans
c. u is a subset of v
d. v is a subset of u 
"""

# Q7 - Ans D
"""
Suppose u and v both denote sets in Python. Under what condition can we guarantee
that u - (u - v) == v? (Select the correct choice and justify your answer)
a. This is true for any u and v.
b. The set u should be a subset of v.
c. The set v should be a subset of u. -- Correct ans
d. The sets u and v should be disjoint. 

let,
u = {1,2,3,4}
v = {3,4}  v is subset of u
u-v = {1,2}
u - (u-v) = {3,4} == v
"""

# Q8
def secondmax(l):
    (mymax,mysecondmax) = (0,0)
    mymax=max(l)
    for i in range(len(l)): 
        if i < mymax and i>=mysecondmax:
            mysecondmax = i
    
    return mysecondmax
print(secondmax([4,1,5,9,10,13,6]))

# Q9
def myreverse(l):
    if l==[]:
        return(l)
    else:
        return [l[-1]] + myreverse(l[:-1])

l = ["a","b","c","d","e"]
print(myreverse(l))