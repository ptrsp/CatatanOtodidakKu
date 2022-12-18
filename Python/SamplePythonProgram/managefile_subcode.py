import os,time
class Managefile:
    """Class Untuk Manage File
    """
    def __init__(self, fname,srcDir):
        """Konstruktor U/ Inisialisasi Variable Global
        __init__(self,fname,srcDir):
        Args :
            fname(str)  : nama file
            srcDir(str) : Path Direktori Sumber (src)
        """
        self.fname=fname
        self.srcDir=srcDir
        self.srcFile=srcDir+fname
        print("###Memulai Inisialisasi Variable Global###")
        time.sleep(0.1)
    def MoveDupDelFile(self,destDir,optAct):
        """Fungsi U/ Memindahkan/Menduplikasi/Menghapus Suatu File
        MovevDupDelFile(self,destDir,optAct):

        Args :
            destDir(str): Path Direktori Tujuan/Dest
            optAct(int) : Opsi Tindakan (1-Move,2-Duplicate,3-Delete)
        """
        if(optAct==1 or optAct==2):
            self.destDir=destDir
            self.destFile=destDir+self.fname
            if(os.path.exists(self.srcDir)==True):
                if(os.path.exists(self.srcFile)==True):
                    if(os.path.exists(self.destDir)==True):
                        with open(self.srcFile,"r") as file:
                            self.data=file.read()
                            print("Melakukan Cache \"Konten\" File Bersangkutan")
                            time.sleep(0.3)
                        with open(self.destFile,"w") as file:
                            file.write(self.data)
                            print("Memproses Penulisan \"Konten\" Ke Direktori Tujuan")
                            time.sleep(0.3)
                        if(optAct==1):
                            os.remove(self.srcFile)
                            print("Pemindahan File Berhasil Dilakukan!")
                            time.sleep(0.3)
                        if(optAct==2):
                            print("Pen-duplikat-an File Berhasil Dilakukan!")
                            time.sleep(0.3)
                        print("SELESAI")
                    else:
                        print("Direktori dest Tidak Ditemukan!")
                else:
                    print("File src Tidak Ditemukan!")
            else:
                print("Direktori src Tidak Ditemukan!")
        if(optAct==3):
            time.sleep(0.3)
            print("Memproses Penghapusan File")
            os.remove(self.srcFile)
            time.sleep(0.3)
            print("SELESAI")