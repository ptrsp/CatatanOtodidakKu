###PERCOBAAN TAMBAH###
class Identity:
    # fn="Last, FirstName"
    # tp="Title Paper"
    # pe="Lembaga Penerbit"
    def __init__(self,fin,lan,tp,pe):
        print("Data Yang Anda Masukan : ")
        print(fin+" "+lan+" - "+tp+" - "+pe)
        self.fn=lan+". "+fin
        self.tp="\""+tp+"\""
        self.pe="copyright@ "+pe
class Reference(Identity):
    def wReference(self, number):
        print("Format Referensi : ")
        print("["+number+"]"+self.fn+", "+self.tp+", "+self.pe)
###PERCOBAAN TAMBAH###