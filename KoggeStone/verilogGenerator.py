def genVerilogFileRow1():
    for i in range(2, 16):
        line = 'wire r2' + 'c' + str(i) + ';'
        print(line)
     
    for i in range(2, 16):
        #(.pg(r1c3), .pg0(r1c2), .pgo(r2c3));
        line = 'BlackCell blockr1c' + str(i) + '(.pg(r1c' + str(i) + '), .pg0(r' + str(1) + 'c' + str(i - 1) + '), .pgo(r' + str(2) + 'c' + str(i) + '));';
        print(line)

def genVerilogFileRow2():
    for i in range(4, 16):
        line = 'wire r3' + 'c' + str(i) + ';'
        print(line)
     
    for i in range(4, 16):
    
        line = 'BlackCell blockr2c' + str(i) + '(.pg(r2c' + str(i - 1) + '), .pg0(r' + str(2) + 'c' + str(i-2) + '), .pgo(r' + str(3) + 'c' + str(i) + '));';
        print(line)

def genVerilogFileRow3():
        for i in range(4, 8):
            line = 'wire r4' + 'c' + str(i) + ';'
            print(line)
     
        for i in range(8, 16):
            line = 'BlackCell blockr3c' + str(i) + '(.pg(r3c' + str(i) + '), .pg0(r' + str(3) + 'c' + str(i -4) + '), .pgo(r' + str(4) + 'c' + str(i) + '));';
            #print(line)
        
        for i in range(4, 8):
            line = 'GrayCell blockr3c' + str(i) + '(.pg(r3c' + str(i) + '), .pg0(r' + str(3) + 'c' + str(i -4) + '), .pgo(r' + str(4) + 'c' + str(i) + '));';
            print(line)


def genVerilogFileRow4():
        for i in range(8, 16):
            line = 'wire r5' + 'c' + str(i) + ';'
            print(line)
    
        
        for i in range(8, 16):
            line = 'GrayCell blockr4c' + str(i) + '(.pg(r4c' + str(i) + '), .pg0(r' + str(4) + 'c' + str(i -8) + '), .pgo(r' + str(5) + 'c' + str(i) + '));';
            print(line)

#genVerilogFileRow1()
#genVerilogFileRow2()
#genVerilogFileRow3()
genVerilogFileRow4()
