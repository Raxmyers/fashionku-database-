CREATE TABLE Produk (
  id_produk INT PRIMARY KEY AUTO_INCREMENT,
  nama_produk VARCHAR(100) NOT NULL,
  kategori VARCHAR(50) NOT NULL,
  ukuran VARCHAR(10) NOT NULL,
  warna VARCHAR(20) NOT NULL,
  harga INT NOT NULL,
  stok INT DEFAULT 0
);

CREATE TABLE Pelanggan (
  id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
  nama VARCHAR(100) NOT NULL,
  alamat VARCHAR(200),
  no_hp VARCHAR(15)
);

CREATE TABLE Supplier (
  id_supplier INT PRIMARY KEY AUTO_INCREMENT,
  nama_supplier VARCHAR(100) NOT NULL,
  alamat VARCHAR(200),
  no_hp VARCHAR(15)
);

CREATE TABLE Penjualan (
  id_penjualan INT PRIMARY KEY AUTO_INCREMENT,
  tanggal DATE NOT NULL,
  id_pelanggan INT,
  total INT NOT NULL,
  FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan(id_pelanggan)
);

CREATE TABLE Detail_Penjualan (
  id_detail INT PRIMARY KEY AUTO_INCREMENT,
  id_penjualan INT NOT NULL,
  id_produk INT NOT NULL,
  qty INT NOT NULL,
  subtotal INT NOT NULL,
  FOREIGN KEY (id_penjualan) REFERENCES Penjualan(id_penjualan),
  FOREIGN KEY (id_produk) REFERENCES Produk(id_produk)
);

CREATE TABLE Pembelian (
  id_pembelian INT PRIMARY KEY AUTO_INCREMENT,
  tanggal DATE NOT NULL,
  id_supplier INT NOT NULL,
  total INT NOT NULL,
  FOREIGN KEY (id_supplier) REFERENCES Supplier(id_supplier)
);

CREATE TABLE Detail_Pembelian (
  id_detail_beli INT PRIMARY KEY AUTO_INCREMENT,
  id_pembelian INT NOT NULL,
  id_produk INT NOT NULL,
  qty INT NOT NULL,
  harga_beli INT NOT NULL,
  FOREIGN KEY (id_pembelian) REFERENCES Pembelian(id_pembelian),
  FOREIGN KEY (id_produk) REFERENCES Produk(id_produk)
);