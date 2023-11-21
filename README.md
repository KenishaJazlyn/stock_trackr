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

# Tugas 9
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Mengambil data JSON tanpa sebelumnya membuat model dapat dilakukan, di mana data akan tetap dalam format jsonDecode seperti pada contoh: 
`var data = jsonDecode(utf8.decode(response.bodyBytes));`
Meskipun memungkinkan, tetapi pendekatan ini tidak seoptimal membuat model terlebih dahulu sebelum mengambil data JSON. Dengan membuat model terlebih dahulu, data akan langsung diinisiasi sebagai objek sesuai dengan kelas modelnya, memberikan kejelasan struktur dan memudahkan pengelolaan data.
## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` berfungsi untuk menghandle HTTPRequest dengan autentikasi berbasis cookie dan mengatur semua cookie untuk sesi pengguna. 
## Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
- JSON ditampilkan di halaman proyek django  `https://kenisha-jazlyn-tugas.pbp.cs.ui.ac.id/json`
- JSON difetch ke dalam `list_product.dart` sesuai urlnya dengan header `"Content-Type": "application/json"` 
- JSON yang telah di fetch akan disesuaikan bodynya menuju model Product
- Data list dalam model Product dipanggil dalam `ProductPage` dalam bentuk card.
- Setiap card memiliki onTap() yang jika diklik menampilkan detail data item tersebut
## Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
- Pada `loginPage` pada Flutter, user akan memasukkan username dan password. 
- Setelah itu username dan password itu akan dikirim ke method login pada django. 
- Jika username dan password sesuai, user dapat masuk kehalaman `MyHomePage` dan jika tidak sesuai akan menampilkan message `Login gagal, periksa kembali username atau kata sandi.`

## Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
| Widget | Fungsi | 
| ----- | ----- |
| MaterialPageRoute | Mengarahkan routing ke halaman (widget) tertentu | 
| Drawer | Membuat drawer navigator |
| ListTile | Membuat list beberapa tile |
| Scaffold | Mengatur layout dari widget yang ada di dalamnya |
| AppBar | Menambahkan bar aplikasi yang berisi title dengan align left | 
| Text | Berisi sebuah Text dengan properti di dalamnya |
| Center | Mengatur layout widget di dalamnya agar centered |
| Column | Mengatur layout widget di dalamnya agar turun ke bawah (tidak inline-flex) |
| TextStyle | Mengatur style dari sebuah text |
| Container | Menampung beberapa widget di dalamnya |
## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
- Startapp baru pada proyek baru bernama `authentication` pada proyek django
- Membuat fungsi login dan logout pada `authentication/views.py` 
- Menginstall package pada proyek flutter dengan `flutter pub add provider` dan `flutter pub add pbp_django_auth`
- Membuat page baru untuk login pada directory `screens`
- Membuat file `list_product.dart` untuk menampilkan semua item dalam bentuk card, dan card tersebut memiliki onTap() yang jika diklik akan dipassing ke DetailItemPage untuk menampilkan data detail dari item yang diklik
