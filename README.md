# Stock_trackr
    Nama : Kenisha Jazlyn Malano
    NPM  : 2206030262
    Kelas: PBP-E
# Tugas 7
 ## Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
| Stateless Widget | Stateful Widget |
| ----- | ----- |
| Bersifat statis | Bersifat dinamis |
| Tampilan tetap (tidak berubah) | Tampilan menyesuaikan interaksi user |
| Alur: Contructor -> Build | Alur: Constructor -> Internal State -> Build |
| Lebih ringan dirender | Memerlukan waktu reload render |
| Cocok untuk widget tanpa perubahan data di dalamnya | Diperlukan untuk menyusun widget dengan pengolahan data yang interaktif | 

 ## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
|Widget| Fungsi|
| ----- | ----- |
|Scaffold| Ini mendefinisikan struktur dasar aplikasi Anda, termasuk app bar dan isi.|
|AppBar| App bar di bagian atas layar dengan judul aplikasi "Stocktrackr."|
|SingleChildScrollView| Widget yang dapat di-scroll yang membungkus child-nya.|
|Padding| Menambahkan padding pada child-nya.|
|Column| Menyusun child-nya secara vertikal.|
|Text| Menampilkan judul "StockTrackr."|
|GridView.count| Membuat grid kartu untuk setiap StockItem dalam daftar items.|
|Material| Widget ini menyediakan latar belakang berwarna.|
|InkWell| Widget ini membuat kartu merespons kejadian sentuhan.|
|Container| Yang berisi ikon dan teks.|
|Icon| Menampilkan ikon untuk StockItem.|
|Text| Menampilkan nama dari StockItem.|
|SnackBar| Ditampilkan ketika kartu ditekan, menampilkan pesan berdasarkan nama item.|


 ## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
   - Membuat proyek flutter baru dengan nama "stock_trackr
   - Merapikan struktur proyek dengan membuat file dart baru `menu.dart`
   - Membuat widget sederhana yang akan menampilkan snackbar, ketika ditekan.
   - Untuk mengimplementasikan bonus :
        - Membuat blok if untuk mengatur warna berbeda untuk tombol berbeda 
        - Mengatur Color dari widget yang telah dibuat sesuai dengan blok if yang telah dibuat sebelumnya
   - Membuat repo baru `stock_trackr`
   - Melakukan  `git init` pada root folder dan `add`-`commit`-`push` proyek ke repo yang baru tersebut

# Tugas 8 
 ## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
  **Navigator.pushReplacement**
  Navigator ini akan menimpa halaman sekarang dengan halaman baru
  **Navigator.push**
  Navigator ini akan menambahkan rute lain ke atas tumpukan screen stack saat ini
 ## Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
|Layout Widget| Fungsi|
| ----- | ----- |
|Align| untuk menempatkan widget dalam container sesuai dengan posisi yang diinginkan, seperti bagian atas, bawah, kiri, atau kanan.|
|ListView|untuk menampilkan daftar item yang dapat di-scroll.|
|Row | mengatur widget secara horizontal|
|Column| mengatur widget secara vertikal.|
|GridView| menampilkan item dalam bentuk grid atau kotak.|
|Padding|mengatur seberapa jauh sebuah elemen dari tepi widget yang mengandungnya.|
 ## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Elemen input form yang saya pakai hanya `TextFormField()` karena data yang saya butuhkan hanya barupa input teks atau angka.
 ## Bagaimana penerapan clean architecture pada aplikasi Flutter?
**Presentation Layer:** 
Menangani UI dan penggunaan Widget. Ini harus memiliki logika tampilan minimal.
**Business Logic Layer (BLoC)/State Management:**
Mengelola state dan logika bisnis aplikasi.
**Domain Layer:**
Berisi aturan bisnis dan entitas.
**Data Layer:** 
Mengatur API, penyimpanan lokal, dan repositori yang mengatur data. 
 ## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
 1. Membuat `model.dart` untuk model item saya
 2. Membuat form yang meminta input untuk atribut pada model yang telah saya buat sebelumnya
 3. Mengatur navigasi button `Add Item` ke page form tersebut
 4. Membuat list pada `main.dart` untuk menyimpan setiap input item oleh user 
 5. Membuat `view_item.dart` yang berfungsi menampilkan semua item yang diinput
 6. Mengatur navigasi button `Lihat Item` ke page view_item yang telah dibuat sebelumnya