def oper(n):
    if (n == 0):
        return 0
    else:
        return (2 * n) - 1 + oper(n - 1)
n = int(input("Introdu n ca un număr pozitiv: "))
total = oper(n)
print ("Operația 2n-1 ;")
print ("Suma progresiei pentru n = {0} : {1} ". format(n,total))