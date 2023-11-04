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
