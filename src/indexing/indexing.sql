CREATE INDEX idx_penjualan_tanggal ON Penjualan(tanggal);
CREATE INDEX idx_detail_penjualan_produk ON Detail_Penjualan(id_produk);
CREATE INDEX idx_detail_penjualan_penjualan ON Detail_Penjualan(id_penjualan);
CREATE INDEX idx_produk_kategori ON Produk(kategori);