# CheatSheet Syntax GIT Version Control System
## Stage and Snapshot Section
### # git status
```
git status
```
**Deskripsi Penjelasan**

Digunakan untuk mengecek segala aktifitas didalam working direktori, entah itu untracked file, modified file, deleted file, dll.
### # git add nama_file
```
git add progMain.py
```
**Deskripsi Penjelasan**

Digunakan untuk memindahkan file bersangkutan ke stagging area, untuk nantinya siap dicommit. sedangkan untuk menambahkan lebih dari 1 file sekaligus dapat menggunakan ```git add .```.
### # git commit -m "Catatan/Pesan Deskripsi Singkat Commitmu"
```
git commit -m "Menambahkan File progSub.py dan Mengubah File progMain.py"
```
**Deskripsi Penjelasan**

Digunakan untuk menyimpan snapshot perubahan/changes, ke system git. Terdapat perintah lain untuk mempersingkat git add dan git commit yaitu ```git commit -am "Pesan Commitmu"```, dengan catatan file file yang akan dicommit bukan merupakan untracked file.
### # git log
```
git log
```
**Deskripsi Penjelasan**

Digunakan untuk menampilkan daftar commit yang telah dilakukan. Untuk menampilkan daftar commit dalam bentuk flow dan lebih sederhana, dapat menggunakan syntax ```git log --all --decorate --oneline --graph```

## Restore/Remove Snapshot
### # git restore nama_file
```
git restore progMain.py
```
**Deskripsi Penjelasan**

Digunakan untuk mengembalikan file progMain.py ke kondisi semula commit terbaru, apabila file bersangkutan termodifikasi (edit/delet/rename).
### # git restore --staged nama_file
```
git restore --staged progMain.py
```
**Deskripsi Penjelasan**

Berbeda dengan sebelumnya, penambahkan --staged akan meminta untuk mengembalikan 1 posisi stage ke belakang dari sebuah file. semisal file yang semulanya siap di commit, kita dapat mengembalikannya ke posisi untracked file.
### # git rm --cached nama_file
```
git rm --cached progMain.py
```
**Deskripsi Penjelasan**

Digunakan untuk menghapus "file cached" dari snapshot sebuah commit, dengan menjalankan syntax ini pada suatu file yang sudah terkomit, maka keberadaan file secara logic sudah tidak ada di system git, namun keberadaan file fisik masih ada (file tersebut berada dalam untracked file). untuk membatalkannya/mengembalikan seperti semula dapat menggunakan syntax ```git restore --staged file_name```.

## Managing Branch Section
### # git branch
```
git branch
```
**Deskripsi Penjelasan**

Digunakan untuk menampilkan daftar branch yang ada.
### # git branch nama_branch
```
git branch devStag
```
**Deskripsi Penjelasan**

Digunakan untuk membuat sebuah branch "devStag", dari branch yang aktif.
### # git branch -d nama_branch
```
git branch -d devStag
```
**Deskripsi Penjelasan**

Digunakan untuk menghapus branch bersangkutan, apabila branch bersangkutan belum ter-merge secara penuh maka akan ada peringatan, namun jika kamu memaksakan penghapusan dapat menggunakan ```git branch -D devStag```.
### # git branch -M nama_branch
```
git branch -M prodStag
```
**Deskripsi Penjelasan**

Digunakan untuk merubah nama branch yang aktif, ke nama branch "prodStag".
### # git merge nama_branch
```
git merge devStage
```
**Deskripsi Penjelasan**

Digunakan menggabungkan("Merge") branch devStage ke Aktif Branch.





















Text Styling :

**This is bold text**

*This text is italicized*

~~This was mistaken text~~

***All this text is important***

<sub>This is a subscript text</sub>

<sup>This is a superscript text</sup>  

