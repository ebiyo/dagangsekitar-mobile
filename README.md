Nama : Arief Ridzki Darmawan

NPM : 2306210115

Kelas : PBP F

---
## Jawaban Pertanyaan Tugas 9
### > Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Membuat model untuk pengambilan atau pengiriman data JSON sangat penting untuk memastikan struktur data yang konsisten, validasi secara otomatis, kemudahan memanipulasi data, dan keamanan. Model membantu memproses data JSON menjadi objek terstruktur yang akan menghindari potensi kesalahan parsing, kerentanan keamanan, atau masalah kompatibilitas dengan framework. Tanpa model, developer harus memproses data secara manual yang rentan terhadap kesalahan, sulit di-debug, dan kurang fleksibel jika struktur data berubah. Walaupun tidak selalu menyebabkan error, penggunaan model cukup disarankan untuk efisiensi dan skalabilitas dalam aplikasi yang lebih kompleks.

### > Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http digunakan untuk membuat dan mengelola koneksi HTTP, sehingga aplikasi dapat mengirim dan menerima data melalui protokol HTTP. Fungsinya meliputi pengaturan permintaan (request) seperti GET, POST, PUT, dan DELETE, menangani response dari server, dan mendukung fitur seperti header, status code, dan data payload.

### > Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest digunakan untuk mengelola HTTP request dengan mendukung penyimpanan dan pengiriman cookie untuk autentikasi dan menjaga status sesi pengguna. Fungsinya adalah untuk menyimpan data autentikasi, mengelola request dan response, serta menjaga keamanan dan konsistensi data. Instance CookieRequest perlu dibagikan ke semua komponen aplikasi Flutter agar sesi user tetap konsisten di seluruh aplikasi, sehingga menghindari duplikasi, mempermudah akses data autentikasi, dan meningkatkan keamanan dengan memastikan cookie tidak bocor antar sesi.

### > Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Pengiriman data di Flutter dimulai dari input pengguna melalui widget seperti TextField yang datanya disimpan dalam state atau controller. Data ini dikirim ke server menggunakan permintaan HTTP seperti POST dalam format JSON. Server memproses data, mengembalikan response (biasanya dalam format JSON) yang kemudian di-decode di Flutter menggunakan library seperti jsonDecode atau json_serializable. Data yang diterima diperbarui ke dalam state aplikasi, sehingga UI secara otomatis menampilkan hasilnya sesuai desain.

### > Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
* Register: Flutter mengirim data akun ke Django (POST), Django akan memvalidasi dan simpan ke database.
* Login: Flutter mengirim data ke Django (POST), Django memverifikasi, lalu kirim token/cookie sesi.
* State Update: Flutter akan menyimpan token, update state, dan menampilkan menu utama.
* Logout: Flutter akan menghapus token, mengirim permintaan logout ke Django, dan sesi berakhir.

### > Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
* Membuat django app "authentication" pada proyek Django
* Menginstall django-cors-headers
* Membuat method login pada views.py dan menambahkan path ke urls.py
* Menambahkan path authentication.urls pada urls.py di root
* Menginstall package provider untuk mengintegrasi sistem autentikasi
* Memodifikasi root widget untuk menggunakan provider
* Membuat login.dart pada direktori screens
* Mengubah home: MyHomePage() menjadi home: const LoginPage() pada main.dart
* Memodifikasi views.py pada authentication agar fungsi register berfungsi
* Tambahkan path register pada urls.py di authentication
* Membuat register.dart pada direktori screens
* Membuat model yang menyesuaikan data JSON dengan website Quicktype
* Menambahkan dependensi HTTP dengan menjalankan flutter pub add http
* Membuat list_product.dari pada screens
* Menambahkan daftar produk pada left_drawer.dart
* Membuat method create_product_flutter pada views.py di main dan menambahkan pathnya ke urls.py
* Menghubungkan product_form.dart dengan CookieRequest
* Mengubah onPressed: () menjadi async
* Membuat method logout pada views.py di authentication dan menambahkan path ke urls.py
* Mengubah perintah onTap: () pada product_card.dart menjadi async

---
<details>
<summary>Jawaban Pertanyaan Tugas 8</summary>
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
</details>

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
