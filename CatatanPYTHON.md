# PEMBELAJARAN PYTHON
List Pembahasan :
* Looping
  - While dan Do-While
  - For
* Indeks
* List, Dictionary, Tupple, SET
* Define Function
* Object Oriented Programming (OOP)
* Docstring
* Inheritance
* From Import Module
* Reading and Writing Files
* Managing Files And Directory
* Date and Time
* Reading and Writing CSV
* Regular Expression
* Builtin Function

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

