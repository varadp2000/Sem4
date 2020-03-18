try:
    #Index Error
    l1=[0,1,2,3]
    print(l1[5])

    #Type Error
    a="Hello"
    b="World"
    print(l1[a:b])

    #Zero div Error
    a=0
    print(10/a)

    #IO Error
    f = open("random.txt",'r')

    #Assertion Error
    x = 1
    y = 0
    assert y != 0, "Invalid Operation"
    print(x / y)

except IndexError:
    print("Err.. index out of bounds")

except TypeError:
    print("Err.. not an integer")

except ZeroDivisionError:
    print("Err.. cant divide by 0 ")

except IOError:
    print("Err.. File not found")

except AssertionError as msg:
    print(msg)