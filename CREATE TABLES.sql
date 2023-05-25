-- struktur pada tabel `detail_histori`

CREATE TABLE `detail_histori` (
  `id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_changed` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- struktur pada tabel `pembayaran`

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `media_pembayaran` varchar(8) NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- struktur pada tabel `pemesanan`

CREATE TABLE `pemesanan` (
  `id` int(11) NOT NULL,
  `antrian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_pembayaran` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- struktur pada tabel `pengguna`

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `noHp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- struktur pada tabel `produk`

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `perubahan_produk` int(11) NOT NULL,
  `stok_terjual` int(11) NOT NULL,
  `gambar` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- indeks pada tabel `detail_histori`

ALTER TABLE `detail_histori`
  ADD UNIQUE KEY `id` (`id`);


-- indeks pada tabel `pembayaran`

ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`antrian`),
  ADD KEY `id_user` (`id_user`,`id_produk`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `antrian` (`antrian`);

-- indeks pada tabel `pengguna`

ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

-- indeks pada tabel `produk`

ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `perubahanProduk` (`perubahan_produk`);



-- AUTO_INCREMENT for dumped tables

-- AUTO_INCREMENT for table `pemesanan`

ALTER TABLE `pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;


-- AUTO_INCREMENT for table `pengguna`

ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


-- AUTO_INCREMENT for table `produk`

ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


-- Constraints for dumped tables



-- Constraints for table `detail_histori`

ALTER TABLE `detail_histori`
  ADD CONSTRAINT `detail_histori_ibfk_1` FOREIGN KEY (`id`) REFERENCES `produk` (`perubahan_produk`) ON DELETE CASCADE ON UPDATE CASCADE;


-- Constraints for table `pembayaran`

ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pemesanan` (`antrian`);

-- Constraints for table `pemesanan`

ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
