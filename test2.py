def outreFan(a, b):
    def inerFan (c,d):
        return c + d 
    return inerFan(a ,b)
    # return a


result = outreFan(5 ,10)
print(result)
    