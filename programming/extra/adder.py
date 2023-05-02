import functools

def add(n1, n2):
    return n1 + n2
    
def adder(num):
    return functools.partial(add, num)

a = adder(10)
print(a(3)) 
print(a(8))
