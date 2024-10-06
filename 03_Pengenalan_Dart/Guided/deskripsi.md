
---
### 1. Variable 

a. Variabel dengan var <br>
   var adalah cara untuk mendeklarasikan variabel tanpa menentukan tipe datanya secara eksplisit.

![image](https://github.com/user-attachments/assets/44a3f4be-fdb0-4a24-bc9a-4a01dbd4bce2)

Ouput :

![image](https://github.com/user-attachments/assets/83e14170-6fd5-4b33-b6ad-4daa6f3aa28e)

Penjelasan : 

Program di atas menggunakan bahasa Dart, dimulai dengan fungsi main() yang merupakan titik awal eksekusi program. Di dalamnya, terdapat dua variabel yang dideklarasikan menggunakan kata kunci var. Variabel pertama, name, menyimpan nilai "Alice" sebagai String, dan variabel kedua, age, menyimpan nilai 25 sebagai Integer. Kemudian, program menggunakan fungsi print() untuk menampilkan teks yang berisi nama dan usia tersebut ke layar. Dalam hal ini, teks yang ditampilkan adalah "Nama: Alice, Usia: 25", yang diperoleh dengan memanfaatkan interpolasi variabel menggunakan simbol $.


b. Type Annotation <br>
    Type annotation adalah cara untuk mendeklarasikan variabel dengan menentukan tipe datanya secara eksplisit.

![image](https://github.com/user-attachments/assets/45a6a834-ca02-43cd-af5d-79db4deee6d1)

Output :

![image](https://github.com/user-attachments/assets/00038445-c393-4ad5-9bf7-b762fa19af6b)


penjelasan : 

Program ini menggunakan Dart, dengan tipe data yang ditulis secara jelas. Di dalam fungsi main(), ada dua variabel: name dengan nilai "Bob" dan age dengan nilai 30. Variabel name punya tipe data String (teks), dan age tipe data int (angka). Terus, program ini menampilkan teks "Nama: Bob, Usia: 30" ke layar. Intinya, program ini hanya nyetak nama dan umur, tapi tipe datanya ditulis biar lebih jelas.


c. Multi Variable <br>
Untuk mendeklarasikan beberapa variabel sekaligus dengan tipe yang sama.

![image](https://github.com/user-attachments/assets/09041585-e60d-44bb-8206-a4dddb5023ba)

Output : 

![image](https://github.com/user-attachments/assets/cb0b28f6-f6c2-4dce-b8fc-5fdd707eb7fc)


Penjelasan : 

 Di dalam fungsi main(), ada variabel firstName dan lastName, yang masing-masing menyimpan nilai "Charlie" dan "Brown". Setelah itu, program mencetak "Nama Lengkap: Charlie Brown" ke layar menggunakan fungsi print(). Jadi, program ini sederhana, hanya menampilkan nama lengkap dengan memisahkan nama depan dan nama belakang.
   
### 2. Statement Control

a. IF-ELSE Statement <br>
Untuk memproses suatu kondisi dalam program, kita dapat menggunakan ekspresi if. Jika hasil dari ekspresi tersebut bernilai true (benar), maka
blok kode di dalam if akan dijalankan. Namun, jika kondisi tersebut tidak terpenuhi atau bernilai false (salah), kita dapat menggunakan ekspresi else untuk mengeksekusi blok kode alternatif.

![image](https://github.com/user-attachments/assets/b5284115-3740-401b-b382-e8edfa8171ec)

Output : 

![image](https://github.com/user-attachments/assets/775aa23b-94a9-4d38-9cb1-e5cca7928568)

Penjelasan : 

Program menggunakan logika if untuk memeriksa apakah jam sekarang berada di antara jam buka dan jam tutup. Jika iya, maka akan menampilkan "Hello, we're open" yang berarti toko sedang buka. Jika tidak, program akan menampilkan "Sorry, we've closed", yang artinya toko sudah tutup


b. Switch-Case Statement<br>
Switch-case digunakan untuk memilih salah satu dari banyak blok kode untuk dieksekusi berdasarkan nilai suatu ekspresi. Dengan switch-case,
program dapat memeriksa variabel dan menjalankan kode yang sesuai dengan nilai yang diberikan. 

![image](https://github.com/user-attachments/assets/469cb20a-03df-41be-ad07-f91327fdb349)


Output : 

![image](https://github.com/user-attachments/assets/35c35238-2361-40a7-b8b4-dfe1c266e3b2)

Penjelasan : 

Program ini mendeklarasikan variabel day yang diset ke 3, di mana setiap angka mewakili hari dalam seminggu (1 = Senin, 2 = Selasa, dan seterusnya). Kemudian, pernyataan switch digunakan untuk mengecek nilai dari variabel day. Jika day sama dengan 1, program akan mencetak "Senin", jika 2 mencetak "Selasa", dan begitu seterusnya hingga 7 untuk "Minggu". Jika variabel day di luar rentang 1 sampai 7, program akan mengeksekusi blok default dan mencetak "Hari tidak valid". Karena day di sini bernilai 3, program akan menampilkan "Rabu".

### 3. Looping 

a. For Loops <br> 
For Loops digunakan pada saat kondisinya tau persis seberapa banyak looping akan dilakukan, contohnya
melakukan perulangan sebanyak 10 kali dengan iterasi sebanyak 1 tingkat atau 1 kali.

![image](https://github.com/user-attachments/assets/b47858ca-84a3-49f5-a824-7cbe915e0bd1)


Output  :

![image](https://github.com/user-attachments/assets/d15fc25e-217b-498b-8d60-321a50848005)

Penjelasan  :

Di dalam fungsi main(), ada perulangan for yang dimulai dari i = 1, dan selama i kurang dari atau sama dengan 5, nilai i akan bertambah 1 setiap iterasi. Pada setiap iterasi, nilai i akan dicetak ke layar. Jadi, program ini akan menampilkan angka 1, 2, 3, 4, dan 5 satu per satu.

b.  While Loops <br>
Gunakan while loop saat kondisinya tidak tahu kapan perulangan akan
berhenti, contohnya sediakan input angka hingga user menginput tanda "-
".

![image](https://github.com/user-attachments/assets/c1d2d112-0f12-46a5-bcf5-2c4020338251)

Output : 

![image](https://github.com/user-attachments/assets/a0c74207-441d-4185-bc86-44d2cc72cecf)


Penjelasan : 

Program ini menggunakan perulangan while untuk mencetak angka dari 1 hingga 5. Pertama, variabel i diinisialisasi dengan nilai 1. Selanjutnya, perulangan while akan terus berjalan selama nilai i kurang dari atau sama dengan 5. Di setiap iterasi, program mencetak nilai i, lalu menambah i dengan 1 menggunakan i++


### 4. List 

a. Fixed Length List 

![image](https://github.com/user-attachments/assets/1f3948a7-131f-488c-b048-2c7416c25277)

output : 

![image](https://github.com/user-attachments/assets/187aa001-c276-4d96-99ad-6758424dca3a)


Penjelasan : 

Di dalam fungsi main(), pertama-tama program membuat list tetap (fixedList) dengan panjang 3, diisi dengan nilai awal 0 menggunakan List.filled(3, 0). Kemudian, elemen-elemen dalam list tersebut diubah: elemen pertama (fixedList[0]) diubah menjadi 10, elemen kedua (fixedList[1]) menjadi 20, dan elemen ketiga (fixedList[2]) menjadi 30. Setelah itu, program mencetak isi list, yang akan menampilkan [10, 20, 30]


b. Growable List <br>
Gunakan growable list apabila memiliki banyak object yang tidak menentu atau banyaknya object yang terus bertambah.

![image](https://github.com/user-attachments/assets/6c23cfb7-861f-48b0-96a5-9088c04a5b70)

Output : 

![image](https://github.com/user-attachments/assets/08510ef6-b660-4681-9fc0-c0333caad494)


Penjelasan : 

Program ini membuat list yang dapat berubah panjang (growable list) dalam Dart. Pertama, list kosong  growableList  dibuat. Kemudian, elemen 10, 20, dan 30 ditambahkan ke dalam list, yang dicetak menjadi  [10, 20, 30]. Selanjutnya, elemen 40 dan 50 juga ditambahkan, sehingga list menjadi  [10, 20, 30, 40, 50] . Setelah itu, elemen 20 dihapus, dan hasilnya dicetak menjadi  [10, 30, 40, 50] . Program ini menunjukkan cara menambah dan menghapus elemen dalam list yang dapat berubah panjang.

### 5. Fungsi 

Pada bahasa pemrograman yang mendukung Object Oriented Programming, fungsi atau prosedur memilki peranan yang sangat penting. Untuk menghasilkan kualitas kode yang sangat baik.


a. Mengembalikan Nilai

![image](https://github.com/user-attachments/assets/8d707c77-3bff-4f55-8ecb-baa353c5def7)

output :

![image](https://github.com/user-attachments/assets/b93b6325-b5ee-4eb2-8a80-146af7fe734f)

penjelasan : 

Fungsi sapaan menerima satu parameter, yaitu nama, dan mengembalikan string yang berisi sapaan "Halo, $nama!". Di dalam fungsi main(), fungsi sapaan dipanggil dengan argumen "Dart", dan hasilnya disimpan dalam variabel pesan. Kemudian, program mencetak isi pesan.


b. Menambahkan Parameter

Fungsi memiliki scope yang terbatas, tentunya fungsi butuh input dari luar agar program didalamnya bisa memproses tugasnya.


![image](https://github.com/user-attachments/assets/95e1f234-9a9e-4d16-83ff-b45a0cd254c5)

output : 

![image](https://github.com/user-attachments/assets/6fa42800-8bc6-4ebb-96ff-dd2ee3b9c746)

penjelasan :


Pada fungsi tersebut, number merupakan parameter. Variable diluar fungsi yang dibuat agar dapat digunakan didalam fungsi.














