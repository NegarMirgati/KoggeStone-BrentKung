def printAllpg():
    f= open("pg16.txt","w+")
    for i in range(0, 16) :
        line = 'wire andout' + str(i) + ', xorout' + str(i) + ';';
        print(line);
    for i in range(0 , 16):
        line = 'and and' + str(i) + '(andout' + str(i) + ', A[' + str(i) + '], B[' + str(i) + ']);' ;  
        print(line);
        line = 'xor xor' + str(i) + '(xorout' + str(i) + ', A[' + str(i) + '], B[' + str(i) + ']);' ; 
        print(line);
        line = 'assign pg' + str(i) + ' = {xorout' + str(i) + ', andout' + str(i) + '};'
        print(line);
    f.close()

def xor16() : 
    for i in range(0 , 16):
        line = 'xor xor' + str(i) + '(S[' + str(i) + '] ,A[' + str(i) + '], B[' + str(i) + ']);';
        print(line)

xor16();

    