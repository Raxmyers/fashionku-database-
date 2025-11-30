DELIMITER //

CREATE PROCEDURE sp_proses_penjualan(
  IN p_id_pelanggan INT,
  IN p_tanggal DATE,
  OUT p_id_penjualan INT
)
BEGIN
  START TRANSACTION;
  INSERT INTO Penjualan (tanggal, id_pelanggan, total)
  VALUES (p_tanggal, p_id_pelanggan, 0);
  SET p_id_penjualan = LAST_INSERT_ID();
  COMMIT;
END //

DELIMITER ;

DELIMITER //

CREATE FUNCTION fn_cek_stok(p_id_produk INT)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE v_stok INT;
  SELECT stok INTO v_stok FROM Produk WHERE id_produk = p_id_produk;
  RETURN v_stok;
END //

DELIMITER ;