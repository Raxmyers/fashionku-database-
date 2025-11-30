DELIMITER //

CREATE TRIGGER tr_update_stok_penjualan
AFTER INSERT ON Detail_Penjualan
FOR EACH ROW
BEGIN
  UPDATE Produk SET stok = stok - NEW.qty WHERE id_produk = NEW.id_produk;
  UPDATE Penjualan SET total = total + NEW.subtotal WHERE id_penjualan = NEW.id_penjualan;
END //

CREATE TRIGGER tr_update_stok_pembelian
AFTER INSERT ON Detail_Pembelian
FOR EACH ROW
BEGIN
  UPDATE Produk SET stok = stok + NEW.qty WHERE id_produk = NEW.id_produk;
  UPDATE Pembelian SET total = total + (NEW.qty * NEW.harga_beli) WHERE id_pembelian = NEW.id_pembelian;
END //

DELIMITER ;