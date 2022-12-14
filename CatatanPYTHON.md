# PEMBELAJARAN PYTHON
List Pembahasan :
* Indeks
* List, Dictionary, Tupple, SET
* Looping
* Define Function
* Object Oriented Programming (OOP)
* Inheritance
* From Import Module
* Docstring
* File I/O
* Managing Files And Directory
* Reading and Writing Files
* Reading and Writing CSV
* Date and Time
* Exception
* Regular Expression
* Builtin Function

## Indexing / Indeks
Melakukan pengambilan nilai dengan menyebutkan indeks : 
* varX[noIndex] atau varX[-noIndex]
* varX[startIndex:endIndex] atau varX[:endIndex] atau varX[startIndex:]
#### Contoh Program
```
Teks = "Awu dan Kamu"
revTeks = Teks[0:1]+"k"+Teks[2:]
print(revTeks)
-------------------------------------------------------------------------------------
Output :
Aku dan Kamu
-------------------------------------------------------------------------------------
```
## List, Dictionary, Tupple, SET
Jenis Jenis Struktur Data : 
* listData = [“value1”, 2, “value3”, 4]
* dictData = {“key1” : “value1”, 2 : 2, “key3” : 3}
* tupleData = ('fisika', 'kimia', 1993, 2017)
* setData = {1,”IKKEH”,10}

Note :
1.	Tuple data tidak bisa diubah isinya
2.	Set data tidak bisa dipanggil dengan indeks dan hanya bisa menyimpan satu value yang sama, misal di SET mu ada value 1, kemudian kamu insert lagi value 1, maka tetap hanya akan tersimpan sebuah value 1 saja.

```
dictFile = {"foto": 10, "Video" : "MP4, MPEG"}
print(dictFile["Video"])
-------------------------------------------------------------------------------------
Output :
MP4, MPEG
-------------------------------------------------------------------------------------
dictFile["Suara"] = 10
print(dictFile)
-------------------------------------------------------------------------------------
Output :
{'foto': 10, 'Video': 'MP4, MPEG', 'Suara': 10}
-------------------------------------------------------------------------------------
```
## For Loop
Melakukan perulangan beberapa kali hingga mencapai  nilai yang ditentukan.

Format syntax : 
* for variable in range(value):
* for variable in range(startValue,endValue):
* for variable in range(startValue,endValue,step):
* for variable in data_list:
* for index,name in enumerate(listData):
* [x for x in range(startValue,endValue) aCondition]:

#### Contoh Program
```
for i in range(2):
   print("angka ke – ",i)
-------------------------------------------------------------------------------------
Output :
angka ke –  0
angka ke –  1
-------------------------------------------------------------------------------------
```

```
y = [x+1 for x in range(1,10) if x%2==0]
print(y)
-------------------------------------------------------------------------------------
Output :
[3, 5, 7, 9]
-------------------------------------------------------------------------------------
```

```
friends = ['Andi','Budi','Tejo']
for friend in friends:
   print("Hi ",friend)
-------------------------------------------------------------------------------------
Output :
Hi  Andi
Hi  Budi
Hi  Tejo
-------------------------------------------------------------------------------------
```

```
for indeks,name in enumerate(friends):
   print("{} – {}".format(indeks+1,name))
-------------------------------------------------------------------------------------
Output :
1 – Andi
2 – Budi
3 – Tejo
-------------------------------------------------------------------------------------
```

```
word_freq = {"Angka": [1,2,3],10:100,"SER":["AW","AH"]}
for key, values in word_freq.items():
    print('Key :: ', key)
    if(isinstance(values, list)):
        for value in values:
            print(value)
    else:
        print(value)
-------------------------------------------------------------------------------------
Output :
Key ::  Angka
1
2
3
Key ::  10
3
Key ::  SER
AW
AH
-------------------------------------------------------------------------------------
```

