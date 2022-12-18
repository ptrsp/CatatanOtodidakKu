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
    statEks=False
    while(statEks==False):
        print("Format Ekstensi [Contoh: .jpg atau .yml atau .py atau lainnya")
        eks=input("Masukkan Ekstensi Target = ")
        if(re.search(r"^\.",eks)):
            statEks=True
        else:
            print("Format Ekstensi Tidak Sesuai!")

    for (root,dirs,files) in os.walk(FtargetDir, topdown=True):
        for file in files:
            instRM = RM.RegexMatcher(file)
            stateFile = instRM.extMatcher(eks)
            sBool,indeks=stateFile
            if(sBool==True):
                oldName=file
                file=file[0:indeks]
                os.rename(os.path.join(root, oldName), os.path.join(root, file+".yaml"))
                print("Mengubah Nama : ")
                print(oldName+" Menjadi "+file)
    print("Proses Pengubahan Nama Selesai!")