Nama : Arief Ridzki Darmawan

NPM : 2306210115

Kelas : PBP F

---
## Jawaban Pertanyaan Tugas 7

### > Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
#### Stateless Widget
Stateless widget adalah widget yang tidak memiliki state (keadaan) yang dapat berubah, yang berarti tampilan yang dihasilkan bersifat statis atau tetap, dan tidak berubah seiring waktu atau interaksi pengguna. 
Stateless widget hanya diperbarui jika ada perubahan dari luar, seperti data yang diteruskan ke widget berubah, tetapi secara internal stateless widget tidak bisa mengubah dirinya sendiri.
#### Stateful Widget
Kebalikannya, stateful widget dapat berubah berdasarkan interaksi pengguna atau event tertentu. 
Ketika setState() dipanggil, Flutter akan me-render ulang widget ini untuk menampilkan perubahan yang terjadi pada state.

### > Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
#### - MaterialApp:
Widget root untuk aplikasi yang mengatur properti tingkat aplikasi seperti judul, tema, dan layar beranda, yang memberikan dukungan untuk routing, penyesuaian tema, dan lokalisasi.
#### - Scaffold:
Menyediakan struktur dasar untuk layar aplikasi, termasuk dukungan untuk AppBar, body, dan elemen lain seperti FloatingActionButton atau Drawer. Digunakan sebagai wadah utama untuk layar MyHomePage.
#### - AppBar:
Menampilkan bar atas yang menunjukkan judul, tombol navigasi, dan aksi lainnya. Digunakan untuk menunjukkan judul aplikasi "DagangSekitar".
#### - Padding:
Menambahkan jarak di sekitar widget childnya. Digunakan untuk memberikan ruang pada column utama dan dalam container dan menambahkan pemisah antara elemen UI agar tata letak lebih rapih.
#### - Column dan Row:
Widget layout yang mengatur childnya secara vertikal (column) dan horizontal (row). Digunakan untuk mengorganisasi dan memposisikan widget InfoCard dalam bentuk baris dan konten lain dalam bentuk kolom.
#### - InfoCard:
Widget custom yang menampilkan NPM, name, dan kelas dalam format card dengan bidang teks.
#### - GridView.count:
Membuat grid dengan jumlah kolom tetap (crossAxisCount: 3). Digunakan untuk menampilkan widget ItemCard dalam tata letak 3 kolom.
#### - ItemCard:
Widget custom yang menampilkan setiap item seperti “Lihat Daftar Produk” atau “Tambah Produk” dengan ikon, nama, dan warna latar belakang. Termasuk InkWell untuk feedback click dan aksi SnackBar untuk menampilkan pesan saat di-click.
#### - SnackBar:
Menampilkan pesan sementara di bagian bawah layar saat pengguna meng-click ItemCard. Digunakan untuk mengonfirmasi item mana yang di-click.
#### - MediaQuery:
Menyediakan informasi ukuran layar untuk menyesuaikan tata letak widget. Digunakan dalam InfoCard untuk mengatur lebarnya secara dinamis sesuai dengan ukuran layar perangkat.
#### - Icon dan Text:
Widget dasar untuk menampilkan informasi. Sesuai namanya, Icon digunakan untuk memperjelas item secara visual, dan Text digunakan untuk menampilkan judul, nama, dan string lain dalam aplikasi.
#### - Material dan InkWell:
Material memberikan konsistensi visual untuk gaya Material Design, terutama untuk warna latar belakang dan sudut melengkung. InkWell dapat mengenali click dan memberi feedback visual untuk elemen interaktif seperti ItemCard.

### > Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() digunakan dalam Stateful Widget untuk memberi tahu framework bahwa ada perubahan pada state yang memerlukan pembaruan tampilan. 
Ketika setState() dipanggil, Flutter akan menjalankan ulang metode build() dari widget tersebut untuk me-render ulang bagian yang di ubah.

### > Jelaskan perbedaan antara const dengan final.
#### Const
Const digunakan untuk variabel yang nilainya benar-benar konstan dan harus diketahui saat compile-time. 
Artinya, variabel yang dideklarasikan dengan const harus memiliki nilai tetap yang tidak tergantung pada kondisi runtime, seperti konstanta matematik atau hal lain yang tidak boleh berubah.
#### Final
Final digunakan untuk variabel yang nilainya diinisialisasi hanya sekali dan tidak dapat diubah setelah itu. 
Nilai final dapat ditentukan pada saat runtime, yang berarti nilainya bisa bergantung pada kondisi saat program berjalan, seperti DateTime atau input user.

### > Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
* Menginstall flutter dan extension flutter dan dart pada VSCode
* Membuat repository dagangsekitar-mobile
* Menghubungkan repository dengan direktori lokal
* Membuat app flutter pada direktori lokal
* Mengikuti tutorial 6, namun menambahkan warna dan logo berbeda pada masing-masing tombol
