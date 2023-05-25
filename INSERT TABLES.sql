-- 1 pelanggan(abdurrahman) membeli 3 barang yang berbeda pada tanggal yang sama 

-- Menambahkan data kedalam tabel `detail_histori`
INSERT INTO `detail_histori` (`id`, `date_created`, `date_changed`) VALUES
(1, '2023-05-09', '2023-05-09'),
(2, '2023-05-11', '2023-05-16'),
(3, '2023-05-19', '2023-05-21'),
(5, '2023-05-22', '2023-05-24'),
(6, '2023-05-23', '2023-05-24'),
(7, '2023-05-24', '2023-05-24'),
(8, '2023-05-24', '2023-05-24'),
(9, '2023-05-25', '2023-05-25'),
(10, '2023-05-16', '2023-05-25');

-- Menambahkan data kedalam tabel `pembayaran`
INSERT INTO `pembayaran` (`id`, `media_pembayaran`, `total_pembayaran`, `date`, `status`) VALUES
(1, 'BCA', 192000, '2023-05-24', 'Lunas'),
(2, 'BRI', 12000, '2023-05-24', 'Lunas'),
(3, 'BNI', 245000, '2023-05-24', 'Lunas'),
(4, 'BRI', 220000, '2023-05-28', 'Lunas'),
(5, 'BNI', 515000, '2023-05-31', 'Lunas'),
(6, 'BCA', 23000, '2023-06-16', 'Lunas'),
(7, 'BRI', 150000, '2023-06-10', 'Lunas'),
(8, 'BRI', 12500, '2023-05-20', 'Lunas'),
(9, 'BCA', 50000, '2023-06-29', 'Lunas'),
(10, 'BNI', 32500, '2023-06-23', 'Lunas');

-- Menambahkan data kedalam tabel `pemesanan`
INSERT INTO `pemesanan` (`id`, `antrian`, `id_user`, `id_produk`, `jumlah_pembayaran`, `date`) VALUES
(1, 1, 1, 3, 2, '2023-05-24'),
(2, 1, 1, 2, 1, '2023-05-24'),
(3, 1, 1, 1, 3, '2023-05-24'),
(4, 2, 2, 1, 1, '2023-05-24'),
(5, 3, 3, 1, 1, '2023-05-24'),
(6, 3, 3, 7, 2, '2023-05-24'),
(7, 4, 1, 7, 2, '2023-05-28'),
(8, 4, 1, 8, 1, '2023-05-28'),
(9, 5, 2, 6, 5, '2023-05-31'),
(11, 6, 3, 5, 1, '2023-06-16'),
(12, 7, 2, 3, 1, '2023-06-10'),
(13, 8, 1, 1, 2, '2023-05-20'),
(14, 9, 3, 6, 2, '2023-05-31'),
(17, 10, 6, 6, 3, '2023-06-23'),
(18, 11, 9, 12, 5, '2023-06-29'),
(19, 12, 4, 2, 2, '2023-07-01'),
(20, 12, 4, 8, 1, '2023-07-01');


-- Menambahkan data kedalam tabel `pengguna`
INSERT INTO `pengguna` (`id`, `nama`, `email`, `password`, `alamat`, `noHp`) VALUES
(1, 'abdurrahman', 'prajurit820@gmail.com', 'cpktnwt123', 'mojokerto', '085646443454'),
(2, 'al khoodhy', 'wahid3@gmail.com', 'abogoboga123', 'Bangsal', '085646443454'),
(3, 'lutfiana bella', 'bella361@gmail.com', 'bismillah3', 'puloniti', '085646464331'),
(4, 'reinhart', 'reinhart@gmail.com', 'adshhre344', 'Puloniti', '085728323111'),
(5, 'dodik', 'dodik3@gmail.com', 'dodikherkules3', 'Gedunguneng', '085782321133'),
(6, 'lilosejati', 'lolita@gmail.com', 'logabahayata1', 'Kauman bangsal', '0817888393211'),
(7, 'roy saja', 'royhan@gmail.com', 'gsdfas34233', 'Bangsal', '085678238311'),
(8, 'ferdinan', 'ferdy@gmail.com', 'asstaga232', 'Surabaya', '089937658812'),
(9, 'koko saja', 'koko3@@gmail.com', 'koko123', 'Krian', '081232323564'),
(10, 'angga', 'dewangga@gmail.com', 'asfhef235', 'Mojosari', '085734273444');


-- Menambahkan data kedalam tabel `produk`
INSERT INTO `produk` (`id`, `nama`, `deskripsi`, `kategori`, `harga`, `stok`, `perubahan_produk`, `stok_terjual`, `gambar`) VALUES
(1, 'orang aring', 'minyak rambut', 'kecantikan', 10000, 100, 1, 48, 'photo1.jpg'),
(2, 'Posh', 'penghilang bau', 'kecantikan', 12000, 50, 2, 34, 'photo2.jpg'),
(3, 'earphone', 'pengeras suara', 'aksesoris ', 150000, 25, 3, 80, 'photo3.jpg'),
(5, 'minyak tawon', 'minyak oles serba guna dapat digunakan untuk pengobantan luar, menghangatkan dan mempercepat penyembuhan luka', 'perawatan', 23000, 93, 5, 24, 'photo5.jpg'),
(6, 'penyubur rambut', 'menambah kesuburan rambut dan menguatkan akar rambut pada 1 minggu penggunaan pertama', 'perawatan', 85500, 36, 6, 73, 'photo6.jpg'),
(7, 'sepatu roda', 'menambah kecepatan ketika anda berjalan di tempat miring kebawah', 'sepatu', 215000, 28, 7, 128, 'photo7.jpg'),
(8, 'kalung hp', 'bahan tebal kuat tahan air dan tidak mudah rusak', 'aksesoris ', 5000, 182, 8, 62, 'photo8.jpg'),
(12, 'kutek', 'memperindah tampilan kuku jari anda', 'kecantikan', 10000, 50, 9, 9, 'photo9.jpg'),
(13, 'gantungan', 'bentuk beruang kecil', 'aksesoris ', 5500, 74, 10, 41, 'photo10.jpg');
