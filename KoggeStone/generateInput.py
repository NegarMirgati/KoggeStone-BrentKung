import os,binascii

def generateTestData():
    f = open('input.txt', 'a')
    for i in range(0, 20000):
        print >>f, binascii.b2a_hex(os.urandom(2))

generateTestData()