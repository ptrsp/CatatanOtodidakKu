import os,re
# print(os.getcwd())
# print(os.path.isfile("README.md"))
# print(type(os.path.isfile("README.md")))

# a=".ymltemplate.yml"
# x=".yml"
# x="(\\"+x+")$"
# print(re.search(x,a))


# # Driver function
import os
if __name__ == "__main__":
    for (root,dirs,files) in os.walk('.', topdown=True):
        print (root)
        print (dirs)
        print (files)
        print ('--------------------------------')

# def doubleString():
# 	return "ONE",2
# satu,dua=doubleString()
# print("1 => "+satu)
# print("2 => ",dua)