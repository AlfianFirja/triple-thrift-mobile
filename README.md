# Alfian Bassam Firjatulah / 2306212695 / A

## Tugas 7
### 1. Stateless Widget dan Stateful Widget
   - **Stateless Widget**: Ini adalah jenis widget yang tidak memiliki status (state) yang dapat berubah saat aplikasi berjalan. Dengan kata lain, Stateless Widget bersifat statis, dan jika ada perubahan data, widget ini perlu dibangun kembali. Contoh penggunaannya adalah untuk widget yang hanya menampilkan data dan tidak perlu mengalami perubahan, seperti ikon, teks statis, atau gambar.
   
   - **Stateful Widget**: Ini adalah widget yang memiliki status (state) dan dapat berubah seiring berjalannya waktu, atau berdasarkan aksi pengguna. Stateful Widget menggunakan objek `State` untuk menyimpan data yang dapat berubah dan memungkinkan widget tersebut untuk di-*rebuild* saat ada perubahan. Contoh penggunaan adalah untuk form input, tombol, atau elemen interaktif lainnya yang bisa berubah berdasarkan aksi pengguna atau event tertentu.

   **Perbedaan Utama**: Stateless Widget tidak dapat berubah setelah dibangun, sedangkan Stateful Widget dapat berubah saat aplikasi berjalan karena memiliki state yang bisa di-*update*.

### 2. Widget yang Umum Digunakan dalam Proyek Flutter
   Beberapa widget yang sering digunakan dalam proyek Flutter antara lain:
   
   - **Container**: Berfungsi sebagai wadah yang bisa diberi gaya, ukuran, dan posisi.
   - **Column** dan **Row**: Untuk membuat tata letak vertikal (Column) dan horizontal (Row).
   - **Text**: Menampilkan teks pada aplikasi.
   - **Image**: Menampilkan gambar dari berbagai sumber (URL, file lokal, atau assets).
   - **ListView**: Untuk membuat daftar yang bisa digulir.
   - **Scaffold**: Menyediakan struktur dasar aplikasi seperti AppBar, Body, dan FloatingActionButton.
   - **Button (ElevatedButton, TextButton, IconButton, dll.)**: Menampilkan tombol yang dapat di-tap pengguna.
   
### 3. Fungsi `setState()`
   `setState()` adalah metode dalam Stateful Widget yang digunakan untuk memberitahu framework bahwa ada perubahan pada `State` dan perlu memperbarui UI. Ketika `setState()` dipanggil, Flutter akan menjalankan ulang metode `build()` widget, sehingga perubahan yang terjadi pada data akan tercermin di UI.

   Variabel-variabel yang bisa terdampak oleh `setState()` adalah variabel yang terkait dengan `State` dalam widget tersebut—umumnya variabel yang menyimpan data yang ditampilkan atau dimanipulasi pada UI.

### 4. Perbedaan antara `const` dan `final`
   - **const**: Digunakan untuk membuat nilai konstan pada waktu kompilasi (compile-time constant). Artinya, nilai tersebut harus sudah diketahui sebelum runtime. `const` tidak dapat diubah, dan nilainya tetap selama masa hidup aplikasi.
   
   - **final**: Nilai `final` ditetapkan satu kali dan tidak dapat diubah setelahnya, namun penetapannya bisa dilakukan saat runtime. `final` berguna untuk nilai yang hanya perlu disetel satu kali tetapi mungkin tidak diketahui saat kompilasi.

   **Perbedaan Utama**: `const` bersifat konstan sejak waktu kompilasi, sementara `final` dapat menerima nilai saat runtime.