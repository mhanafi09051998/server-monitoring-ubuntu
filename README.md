# 🚀 Skrip Instalasi Alat Monitoring Server untuk Ubuntu 24.04 LTS

![Bahasa](https://img.shields.io/badge/Bahasa-Indonesia-red?style=for-the-badge)
![Platform](https://img.shields.io/badge/Ubuntu-24.04%20LTS-orange?style=for-the-badge&logo=ubuntu)
![Shell](https://img.shields.io/badge/Shell-Bash-blue?style=for-the-badge&logo=gnu-bash)
![Lisensi](https://img.shields.io/badge/Lisensi-MIT-green?style=for-the-badge)

Skrip ini secara otomatis menginstal dan mengonfigurasi satu set alat monitoring server modern di **Ubuntu 24.04 LTS**. Hanya dengan satu perintah, Anda akan mendapatkan dasbor performa yang indah dan fungsional langsung di terminal Anda.

Ucapkan selamat tinggal pada `top` yang monoton dan sambut **`btop++`**!

<br>

![Tampilan btop++](https://camo.githubusercontent.com/df974b62f7c0a6b412999b3620358a4365779b9421884435b881267b1479bd32/68747470733a2f2f692e696d6775722e636f6d2f5a6b32526f376a2e706e67)

<br>

---

## ✨ Fitur Utama

* **💻 Dasbor Modern**: Dapatkan tampilan `btop++` yang kaya fitur dengan grafik real-time, penggunaan per-core CPU, dan navigasi yang mudah.
* **⚙️ Instalasi Satu Perintah**: Jalankan satu skrip untuk menyiapkan semuanya. Tidak perlu instalasi manual yang rumit.
* **📊 Monitoring Komprehensif**: Lacak CPU, Memori, Disk I/O, lalu lintas Jaringan, dan Suhu komponen secara real-time.
* **📈 Analisis Historis**: Dilengkapi dengan `sysstat` (`sar`) untuk merekam dan menganalisis data performa dari waktu ke waktu. Sangat cocok untuk lingkungan produksi.
* **⚡ Ringan dan Cepat**: Semua alat yang diinstal berbasis terminal, memastikan overhead minimal pada server Anda.

---

## 🛠️ Alat yang Diinstal

Skrip ini akan menginstal paket-paket berikut:

| Alat         | Deskripsi                                                                 |
|--------------|---------------------------------------------------------------------------|
| **`btop++`** | **(Utama)** Monitor sumber daya dengan antarmuka yang cantik dan cepat.     |
| **`sysstat`** | Mengumpulkan data performa sistem untuk analisis historis (`sar`, `iostat`). |
| **`lm-sensors`**| Memonitor suhu CPU, motherboard, dan komponen lainnya.                   |
| **`hddtemp`** | Memeriksa suhu Hard Disk Drive (HDD) dan Solid State Drive (SSD).          |
| **`net-tools`**| Menyediakan alat jaringan klasik seperti `ifconfig` dan `netstat`.         |

---

## 📋 Prasyarat

Sebelum menjalankan skrip, pastikan Anda memiliki:

1.  Server yang menjalankan **Ubuntu 24.04 LTS**.
2.  Akses sebagai user `root` atau user dengan hak `sudo`.
3.  Koneksi internet untuk mengunduh paket.

---

## 🚀 Cara Penggunaan

Proses instalasi sangat mudah. Cukup ikuti langkah-langkah di bawah ini.

### 1. Clone Repositori
Buka terminal Anda dan clone repositori ini ke server Anda.

```bash
git clone [https://github.com/NAMA_USER_ANDA/NAMA_REPO_ANDA.git](https://github.com/NAMA_USER_ANDA/NAMA_REPO_ANDA.git)
