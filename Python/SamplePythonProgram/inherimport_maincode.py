###PERCOBAAN TAMBAH###
from subcode_inherimport import Reference
# from subcode_inherimport import Identity #G2
# import subcode_inherimport as si #G1
print("---------------------------------")
print("Simple Code For Writing Reference")
print("---------------------------------")
fin=input("Masukkan Nama Depan : ")
lan=input("Masukkan Nama Belakang : ")
tp=input("Masukkan Title Paper : ")
pe=input("Masukkan Penerbit : ")
# fReference = si.Reference(fin,lan,tp,pe) #G1
fReference = Reference(fin,lan,tp,pe)
fReference.wReference("1")
# fReference = Identity(fin,lan,tp,pe) #G2
###PERCOBAAN TAMBAH###