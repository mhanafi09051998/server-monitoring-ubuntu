#!/bin/bash

# ==============================================================================
# Skrip Instalasi Alat Monitoring Server untuk Ubuntu 24.04 LTS
#
# Deskripsi:
# Skrip ini menginstal dan mengonfigurasi alat-alat penting untuk memonitor
# performa server (CPU, Memori, Disk, Jaringan, Suhu) dengan fokus
# pada antarmuka yang modern dan informatif.
#
# Alat Utama:
#   - btop++    : Monitoring real-time dengan UI yang indah.
#   - sysstat   : Untuk logging dan analisis performa historis (sar, iostat).
#   - lm-sensors: Monitor suhu hardware.
#   - hddtemp   : Monitor suhu HDD/SSD.
#   - net-tools : Alat jaringan klasik.
#
# Dibuat oleh: Partner Coding (Gemini)
# ==============================================================================

# Hentikan eksekusi jika terjadi error
set -e
# Hentikan jika menggunakan variabel yang belum didefinisikan
set -u
# Pastikan pipeline gagal jika ada perintah yang gagal
set -o pipefail

# -- Definisi Warna untuk Tampilan --
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# -- Fungsi Utama --
main() {
    # 1. Verifikasi bahwa skrip dijalankan sebagai root (dengan sudo)
    if [ "$(id -u)" -ne 0 ]; then
        echo -e "${YELLOW}Error: Skrip ini harus dijalankan sebagai root atau dengan sudo.${NC}"
        echo "Silakan coba lagi dengan: sudo ./install.sh"
        exit 1
    fi

    clear
    echo -e "${BLUE}=====================================================${NC}"
    echo -e "${BLUE}   🚀 Mulai Instalasi Alat Monitoring Server 🚀    ${NC}"
    echo -e "${BLUE}=====================================================${NC}"
    echo ""

    # 2. Panggil fungsi instalasi
    install_tools

    # 3. Berikan instruksi pasca-instalasi
    post_install_instructions

    echo -e "${GREEN}=====================================================${NC}"
    echo -e "${GREEN}✅ Instalasi Selesai! Server Anda siap dimonitor. ✅${NC}"
    echo -e "${GREEN}=====================================================${NC}"
}

# -- Fungsi untuk menginstal paket-paket --
install_tools() {
    echo -e "${YELLOW}--> Langkah 1: Memperbarui daftar paket APT...${NC}"
    apt-get update -y
    echo -e "${GREEN}Daftar paket berhasil diperbarui.${NC}"
    echo ""

    echo -e "${YELLOW}--> Langkah 2: Menginstal btop, sysstat, lm-sensors, hddtemp, dan net-tools...${NC}"
    # Opsi -y untuk menjawab ya secara otomatis pada semua prompt
    apt-get install -y btop sysstat lm-sensors hddtemp net-tools
    echo ""
    echo -e "${GREEN}Semua alat berhasil diinstal!${NC}"
    echo ""
}

# -- Fungsi untuk menampilkan instruksi setelah instalasi --
post_install_instructions() {
    echo -e "${BLUE}=====================================================${NC}"
    echo -e "${BLUE}     📖 Instruksi Penggunaan & Konfigurasi 📖      ${NC}"
    echo -e "${BLUE}=====================================================${NC}"
    echo ""
    echo -e "${YELLOW}1. Monitoring Real-Time dengan btop++:${NC}"
    echo "   Cukup jalankan perintah:"
    echo "   ${GREEN}btop${NC}"
    echo "   - Tekan 'q' untuk keluar."
    echo "   - Navigasi menggunakan tombol panah."
    echo ""

    echo -e "${YELLOW}2. Konfigurasi Sensor Suhu (Wajib Dilakukan Sekali):${NC}"
    echo "   Untuk mendeteksi sensor di server Anda, jalankan perintah interaktif berikut:"
    echo "   ${GREEN}sudo sensors-detect${NC}"
    echo "   - Anda bisa menekan ENTER untuk menerima semua jawaban default (biasanya aman)."
    echo "   Setelah selesai, Anda bisa melihat suhu kapan saja dengan:"
    echo "   ${GREEN}sensors${NC}"
    echo ""
    
    echo -e "${YELLOW}3. Melihat Suhu Hard Drive:${NC}"
    echo "   Jalankan perintah berikut (ganti /dev/sda jika perlu):"
    echo "   ${GREEN}sudo hddtemp /dev/sda${NC}"
    echo ""

    echo -e "${YELLOW}4. Analisis Historis dengan 'sar' (dari sysstat):${NC}"
    echo "   Lihat penggunaan CPU setiap 2 detik sebanyak 5 kali:"
    echo "   ${GREEN}sar -u 2 5${NC}"
    echo ""
    echo "   Lihat penggunaan memori:"
    echo "   ${GREEN}sar -r 1 3${NC}"
    echo ""
}

# -- Jalankan fungsi utama --
main
