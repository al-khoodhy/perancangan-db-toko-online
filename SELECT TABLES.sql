-- Menampilkan semua data pada tabel produk
SELECT * FROM `produk`;

-- Menampilkan semua data pada tabel pengguna
SELECT * FROM `pengguna`;

-- Menampilkan semua data pada tabel pemesanan
SELECT * FROM `pemesanan`;

-- Menampilkan semua data pada tabel pembayaran
SELECT * FROM `pembayaran`;

-- Menampilkan data pada tabel produk berdasarkan kategori
SELECT * FROM `produk` WHERE kategori = "kecantikan";

-- Menampilkan data pada tabel pengguna berdasarkan email
SELECT * FROM `pengguna` WHERE email = "prajurit820";


-- Menampilkan 3 produk terbanyak dibeli oleh pelanggan
SELECT nama,kategori, stok_terjual FROM `produk` ORDER BY stok_terjual DESC LIMIT 3; 

-- Menampilkan produk yang paling banyak barangnya
SELECT kategori, COUNT(*) as total_produk FROM produk GROUP BY kategori ORDER BY total_produk DESC LIMIT 1;

-- Menampilkan nominal rata rata belanja pelanggan dalam 1 bulan terakhir
SELECT AVG(`total_pembayaran`) as rata_rata FROM pembayaran GROUP BY MONTH(`date`) ORDER BY `date` DESC LIMIT 1;


