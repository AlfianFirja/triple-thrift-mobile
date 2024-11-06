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
### 5. Implementasi checklist
Berikut adalah langkah-langkah terperinci untuk mengimplementasikan aplikasi Flutter seperti yang kamu deskripsikan:

   1. Membuat Repository GitHub dan Menginisialisasi Proyek Flutter

   2. Membuat Struktur Aplikasi Flutter
      1. Buka file utama proyek, yaitu `lib/main.dart`.
      2. Hapus semua kode boilerplate Flutter.
      3. Buat class `ItemHomepage` untuk menyimpan informasi item yang diperlukan.

         ```dart
         class ItemHomepage {
         final String name;
         final IconData icon;
         final Color iconColor;
         final Color backgroundColor;

         ItemHomepage(this.name, this.icon, this.backgroundColor, this.iconColor);
         }
         ```

   3. Membuat Widget Stateless untuk Tombol
      1. Buat 3 `StatelessWidget` untuk menampilkan tombol. Sebagai contoh, buat `ButtonOne`, `ButtonTwo`, dan `ButtonThree`.
      2. Masing-masing tombol akan menggunakan parameter `onPressed` untuk memunculkan `SnackBar` ketika tombol ditekan.
         
         ```dart
         class ButtonOne extends StatelessWidget {
         final VoidCallback onPressed;

         ButtonOne({required this.onPressed});

         @override
         Widget build(BuildContext context) {
            return ElevatedButton(
               onPressed: onPressed,
               child: Text("Button 1"),
            );
         }
         }
         
         class ButtonTwo extends StatelessWidget {
         final VoidCallback onPressed;

         ButtonTwo({required this.onPressed});

         @override
         Widget build(BuildContext context) {
            return ElevatedButton(
               onPressed: onPressed,
               child: Text("Button 2"),
            );
         }
         }

         class ButtonThree extends StatelessWidget {
         final VoidCallback onPressed;

         ButtonThree({required this.onPressed});

         @override
         Widget build(BuildContext context) {
            return ElevatedButton(
               onPressed: onPressed,
               child: Text("Button 3"),
            );
         }
         }
         ```

   4. Membuat Daftar Item Menggunakan `ItemHomepage`
      1. Buat `List` yang berisi tiga objek `ItemHomepage`, masing-masing dengan atribut `name`, `icon`, `iconColor`, dan `backgroundColor`.

         ```dart
         List<ItemHomepage> items = [
         ItemHomepage("Home", Icons.home, Colors.blue, Colors.white),
         ItemHomepage("Settings", Icons.settings, Colors.green, Colors.white),
         ItemHomepage("Profile", Icons.person, Colors.pink, Colors.white),
         ];
         ```

   5. Menampilkan Item dan Memunculkan `SnackBar`
      1. Pada `build` method di `MyApp` (atau class utama yang akan digunakan), tampilkan daftar `ItemHomepage` dalam bentuk tombol menggunakan `ListView`.
      2. Gunakan `onPressed` pada `ElevatedButton` untuk memunculkan `SnackBar`.

         ```dart
         import 'package:flutter/material.dart';

         void main() {
         runApp(MyApp());
         }

         class MyApp extends StatelessWidget {
         final List<ItemHomepage> items = [
            ItemHomepage("Home", Icons.home, Colors.blue, Colors.white),
            ItemHomepage("Settings", Icons.settings, Colors.green, Colors.white),
            ItemHomepage("Profile", Icons.person, Colors.pink, Colors.white),
         ];

         @override
         Widget build(BuildContext context) {
            return MaterialApp(
               home: Scaffold(
               appBar: AppBar(
                  title: Text("Home"),
               ),
               body: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                     return Card(
                     color: items[index].backgroundColor,
                     child: ListTile(
                        leading: Icon(items[index].icon, color: items[index].iconColor),
                        title: Text(items[index].name),
                        onTap: () {
                           ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(content: Text('${items[index].name} tapped!'))
                           );
                        },
                     ),
                     );
                  },
               ),
               ),
            );
         }
         }
         ```

   6. Testing dan Komit ke Repository GitHub