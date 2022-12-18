statTry=1
while(statTry==1): ############################################# Perulangan Input Data
    statFile = 0
    statSD = 0
    statDD = 0
    while (statFile==0 or statSD==0):
        print("Format Nama File = xxx.ekstensi")
        nameFile = input("#Masukkan Nama File : ")
        if(re.search(r"^.+\..+$",nameFile)):
            statFile=1
        print("Format Direktori = X:\\Dir1\\Dir2")
        nameSD = input("#Masukkan Lokasi Direktori: ")
        InstancePath=RegexMatcher(nameSD)
        nameSD=InstancePath.PathMatcher()
        if(nameSD!="False"):
            statSD=1
            print("------------------------------------------------")
        if(statFile==0 or statSD==0):
            print("------------------------------------------------")
            print("Penamaan File / Direktori Tidak Sesuai Format")
            print("------------------------------------------------")
            time.sleep(1)
            os.system('cls')
    numAct=0
    while(numAct<1 or numAct>3):
        print("List Action:\n1 Move File\n2 Duplicate File\n3 Delete File")
        numAct = int(input("Number Action : "))
        if(numAct<1 or numAct>3):
            print("Wrong Option!")
    if(numAct==1 or numAct==2):
        if(numAct==1):
            print("Action Terpilih : Move File")
        if(numAct==2):
            print("Action Terpilih : Duplicate File")
        while(statDD==0):
            print("Format Direktori = X:\\Dir1\\Dir2")
            nameDD=input("Masukkan Direktori Tujuan : ")
            InstancePath=RegexMatcher(nameDD)
            nameDD=InstancePath.PathMatcher()
            if(nameDD!="False"):
                statDD=1
                mfile=Managefile(nameFile,nameSD)
                mfile.MoveDupDelFile(nameDD,numAct)
            if(statDD==0):
                print("Format Direktori Tidak Sesuai")
    if(numAct==3):
        nameDD=""
        statConfirm = "x"
        while(statConfirm!="y" and statConfirm!="n"):
            print("Apa Kamu Yakin Ingin Menghapus File : "+nameSD+nameFile)
            statConfirm=input("[y/n] ? = ")
            statConfirm=statConfirm.lower()
            if(statConfirm=="n" or statConfirm=="y"):
                if(statConfirm=="n"):
                    print("Penghapusan File Dibatalkan")
                if(statConfirm=="y"):
                    mf = Managefile(nameFile,nameSD)
                    mf.MoveDupDelFile(nameDD,numAct)
                    print("Penghapusan File Berhasil")
            else:
                print("Opsi Salah!")
    statTry=int(input("Coba Lagi ? :\n 1 IYA\n 0 Tidak\nYour Option ? :"))
    time.sleep(1)
    os.system('cls')