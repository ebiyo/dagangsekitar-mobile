Nama : Arief Ridzki Darmawan

NPM : 2306210115

Kelas : PBP F

---
## Jawaban Pertanyaan Tugas 8
### > Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Const digunakan untuk variabel yang nilainya benar-benar konstan dan harus diketahui saat compile-time. 
Artinya, variabel yang dideklarasikan dengan const harus memiliki nilai tetap yang tidak tergantung pada kondisi runtime, seperti konstanta matematik atau hal lain yang tidak boleh berubah. Karena hanya dibuat sekali, const sangatlah efisien dalam hal memori, karena Flutter hanya tinggal mengambilnya daripada membuat sebuah objek baru. Hal ini juga dapat mempercepat proses build widget dalam aplikasi.

Kita dapat menggunakan const ketika:
* Membuat widget statis atau nilai tetap yang tidak akan berubah dalam aplikasi.
* Menggunakan widget yang sifatnya hanya untuk menampilkan data dan tidak membutuhkan interaksi atau perubahan dinamis.
* Membuat nilai yang konstan dan diketahui pada saat compile-time, seperti warna, teks, ukuran, atau konstanta lain yang tidak berubah.

Kita sebaiknya tidak menggunakan const ketika:
* Variabel atau widget memiliki nilai yang dinamis dan dapat berubah selama runtime, seperti yang bergantung pada data API atau input user.
* Komponen memerlukan kondisi dinamis atau state yang berubah. Contohya widget yang menggunakan StatefulWidget, di mana penggunaan const akan membuatnya tidak bisa berubah.

### > Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Sesuai namanya, Column dan Row berfungsi untuk mengatur layout secara vertikal (column) dan horizontal (row). Contoh pengimplementasiannya adalah pada penyusunan widget di mana semua widget (InfoCard, teks "Welcome to DagangSekitar", dan tombol-tombol) di atur secara vertikal, tetapi InfoCard NPM, Name, dan Class di atur secara horizontal.
```
// Menyusun widget secara vertikal dalam sebuah kolom.
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Row untuk menampilkan 3 InfoCard secara horizontal.
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoCard(title: 'NPM', content: npm),
                    InfoCard(title: 'Name', content: name),
                    InfoCard(title: 'Class', content: className),
                  ],
                ),
```
Kita juga dapat menentukan posisi child pada sumbu utama dan sekunder dengan mainAxisAlignment dan crossAxisAlignment.
#### mainAxisAlignment
* Column: secara vertikal
* Row: secara horizontal
#### crossAxisAlignment
* Column: secara horizontal
* Row: secara vertikal

### > Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Pada tugas kali ini saya menggunakan elemen input TextFormField untuk meminta input nama produk, deskripsi, dan harga. Elemen input Flutter yang tidak saya pakai adalah TextField (karena tidak ada fitur validasi), Checkbox, Radio, Switch, Slider, DropdownButton, DatePicker, TimePicker, RangeSlider, Autocomplete, Stepper. Saya belum menggunakan elemen-elemen input tersebut karena masih belum membutuhkannya. Di tugas ini, saya hanya meminta nama produk, deskripsi, dan harga. Mungkin di tugas-tugas yang akan datang saya akan menggunakan lebih banyak elemen input, misalnya DropdownButton untuk meminta metode pembayaran dan sebagainya.

### > Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Pada file main.dart, terdapat ThemeData yang digunakan sebagai tema dasar aplikasi.
```
theme: ThemeData(
         colorScheme: ColorScheme.fromSwatch(
               primarySwatch: Colors.deepPurple,
         ).copyWith(secondary: Colors.deepPurple[400]),
        useMaterial3: true,
      ),
```
Data tema ini digunakan agar widget yang menggunakan warna atau gaya default akan otomatis mengikuti tema yang sudah diatur, sehingga menjaga konsistensi tampilan tanpa harus mengatur ulang setiap elemen.

### > Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi dapat ditangani dengan Navigator dan Route untuk perpindahan antar layar. Saya menggunakan Navigator.push, Navigator.pushReplacement, dan Navigator.pop untuk mengontrol pergerakan antar halaman pada left_drawer.dart.

* Navigator.push digunakan untuk mendorong halaman baru ke tumpukan (stack) navigasi.
* Navigator.pop digunakan untuk kembali ke halaman sebelumnya.
* Navigator.pushReplacement digunakan jika ingin mengganti halaman saat ini tanpa menambahkannya ke tumpukan navigasi, sehingga user tidak dapat kembali ke halaman sebelumnya.

---
<details>
<summary>Jawaban Pertanyaan Tugas 7</summary>

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
</details>
