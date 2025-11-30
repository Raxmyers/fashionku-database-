# Panduan Instalasi dan Penggunaan Sistem Basis Data FashionKu

## 1. Instalasi MySQL
- Unduh dan instal MySQL Server dari [https://dev.mysql.com/downloads/]
- Buat database baru dengan nama `fashionku`

## 2. Import Skrip SQL
Urutan eksekusi:
1. `src/ddl/create_tables.sql` → Membuat struktur tabel
2. `src/dml/insert_data.sql` → Menambahkan data awal
3. `src/procedures/stored_procedures.sql` → Menambahkan prosedur dan fungsi
4. `src/triggers/triggers.sql` → Menambahkan trigger otomatis
5. `src/indexing/indexing.sql` → Menambahkan index untuk optimasi

## 3. Pengujian
- Jalankan query penjualan dan pembelian
- Pastikan trigger mengurangi dan menambah stok secara otomatis

## 4. Dokumentasi Tambahan
- ERD tersedia di `docs/ERD/`
- Laporan akhir di `docs/laporan/`
- Kamus data di `docs/kamus_data/`