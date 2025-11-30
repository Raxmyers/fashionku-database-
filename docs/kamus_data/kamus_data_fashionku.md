# Kamus Data Sistem Informasi Penjualan FashionKu

Dokumen ini menjelaskan atribut-atribut yang digunakan dalam sistem basis data FashionKu, termasuk nama tabel, tipe data, dan fungsinya.

---

## Tabel: Produk

| Nama Atribut   | Tipe Data     | Keterangan                                      |
|----------------|---------------|-------------------------------------------------|
| id_produk      | INT           | Primary key, ID unik untuk produk               |
| nama_produk    | VARCHAR(100)  | Nama produk yang dijual                         |
| kategori       | VARCHAR(50)   | Jenis produk (Kemeja, Celana, dll)              |
| ukuran         | VARCHAR(10)   | Ukuran produk (S, M, L, XL)                     |
| warna          | VARCHAR(20)   | Warna produk                                    |
| harga          | INT           | Harga jual produk                               |
| stok           | INT           | Jumlah stok tersedia                            |

---

## Tabel: Pelanggan

| Nama Atribut   | Tipe Data     | Keterangan                                      |
|----------------|---------------|-------------------------------------------------|
| id_pelanggan   | INT           | Primary key, ID unik pelanggan                  |
| nama           | VARCHAR(100)  | Nama lengkap pelanggan                          |
| alamat         | VARCHAR(200)  | Alamat tempat tinggal pelanggan                 |
| no_hp          | VARCHAR(15)   | Nomor HP pelanggan                              |

---

## Tabel: Supplier

| Nama Atribut   | Tipe Data     | Keterangan                                      |
|----------------|---------------|-------------------------------------------------|
| id_supplier    | INT           | Primary key, ID unik supplier                   |
| nama_supplier  | VARCHAR(100)  | Nama perusahaan atau supplier                   |
| alamat         | VARCHAR(200)  | Alamat supplier                                 |
| no_hp          | VARCHAR(15)   | Nomor HP supplier                               |

---

## Tabel: Penjualan

| Nama Atribut   | Tipe Data     | Keterangan                                      |
|----------------|---------------|-------------------------------------------------|
| id_penjualan   | INT           | Primary key, ID transaksi penjualan             |
| tanggal        | DATE          | Tanggal transaksi                               |
| id_pelanggan   | INT           | Foreign key ke tabel Pelanggan                  |
| total          | INT           | Total nilai transaksi                           |

---

## Tabel: Detail_Penjualan

| Nama Atribut   | Tipe Data     | Keterangan                                      |
|----------------|---------------|-------------------------------------------------|
| id_detail      | INT           | Primary key, ID detail transaksi                |
| id_penjualan   | INT           | Foreign key ke tabel Penjualan                  |
| id_produk      | INT           | Foreign key ke tabel Produk                     |
| qty            | INT           | Jumlah produk yang dibeli                       |
| subtotal       | INT           | Total harga untuk produk tersebut               |

---

## Tabel: Pembelian

| Nama Atribut   | Tipe Data     | Keterangan                                      |
|----------------|---------------|-------------------------------------------------|
| id_pembelian   | INT           | Primary key, ID transaksi pembelian             |
| tanggal        | DATE          | Tanggal pembelian                               |
| id_supplier    | INT           | Foreign key ke tabel Supplier                   |
| total          | INT           | Total nilai pembelian                           |

---

## Tabel: Detail_Pembelian

| Nama Atribut     | Tipe Data     | Keterangan                                      |
|------------------|---------------|-------------------------------------------------|
| id_detail_beli   | INT           | Primary key, ID detail pembelian                |
| id_pembelian     | INT           | Foreign key ke tabel Pembelian                  |
| id_produk        | INT           | Foreign key ke tabel Produk                     |
| qty              | INT           | Jumlah produk yang dibeli                       |
| harga_beli       | INT           | Harga beli per produk                           |

---

**Disusun oleh:** Muhammad  
**Tanggal:** 30 November 2025  
**Proyek:** Sistem Informasi Penjualan Toko Baju FashionKu  