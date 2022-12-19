import re, os
import RegexMatcher as RM

if __name__=="__main__":
    FtargetDir="False"
    while(FtargetDir=="False"):
        print("Format Direktori => X:\Dir1\Dir2")
        targetDir = input("Masukkan Direktori Target Rename File : ")
        FtargetDir = RM.RegexMatcher(targetDir)
        FtargetDir=FtargetDir.PathMatcher()
        if(FtargetDir=="False"):
            print("Format Direktori Tidak Sesuai, Harap Ulangi!")
        else:
            if(os.path.exists(FtargetDir)==False):
                FtargetDir="False"
                print("Direktori Tidak Ditemukan, Harap Ulangi!")
    statEksO=False
    statEksN=False
    while(statEksO==False or statEksN==False):
        print("Format Ekstensi [Contoh: .jpg atau .yml atau .py atau lainnya")
        eksO=input("Masukkan Ekstensi Target = ")
        eksN=input("Masukkan Ekstensi Baru = ")
        if(re.search(r"^\.[a-zA-Z0-9]+",eksO)):
            statEksO=True
        if(re.search(r"^\.[a-zA-Z0-9]+",eksN)):
            statEksN=True
        if(statEksO==False):
            print("Format Ekstensi Target Tidak Sesuai!")
        if(statEksN==False):
            print("Format Ekstensi Baru Tidak Sesuai!")
    statRename=False
    for (root,dirs,files) in os.walk(FtargetDir, topdown=True):
        for file in files:
            instRM = RM.RegexMatcher(file)
            stateFile = instRM.extMatcher(eksO)
            sBool,indeks=stateFile
            if(sBool==True):
                oldName=file
                file=file[0:indeks]
                os.rename(os.path.join(root, oldName), os.path.join(root, file+eksN))
                print("Mengubah Nama : ")
                print(oldName+" Menjadi "+file+eksN)
                statRename=True
    if(statRename==False):
        print("Tidak Ada File Yang Berubah!")
    else:
        print("Proses Mengubah Nama Selesai!")