# Tugas Praktikum 1 - Blok Prosedural Kelompok 9

## 📋 Deskripsi

Repository ini berisi tugas praktikum pertama untuk mata kuliah **Blok Prosedural** yang berfokus pada penggunaan **Stored Procedure** dalam MySQL.

## 👥 Anggota Kelompok 9

| No | Nama | NIM |
|----|------|-----|
| 1 | Farida Nur Intan | IK2411013 |
| 2 | Thizya Tri Firma | IK2411057 |
| 3 | Andi Dewa Firdaus | IK2411027 |

## 📁 Struktur File

```
├── README.md
├── Tugas_Praktikum.(01)sql.sql
├── Tugas_Praktikum.(02)sql.sql
└── Tugas_Praktikum.sql
```

## 🔧 Penjelasan Tugas_Praktikum.(02)sql.sql

File ini berisi 4 bagian utama stored procedure:

### Bagian A - Identitas Mahasiswa
Menampilkan identitas mahasiswa dengan informasi:
- Nama lengkap
- NIM
- Program Studi: **Informatika**
- Kampus: **Mega Buana Palopo**
- Semester masing-masing mahasiswa

### Bagian B - Status Validasi
Menampilkan data validasi mahasiswa:
| Nama | Status | Beban | Performa |
|------|--------|-------|----------|
| Farida Nur Intan | Valid | Padat | Sangat Baik |
| Thizya Tri Firma | Valid | Sedang | Baik |
| Andi Dewa Firdaus | Tidak Valid | Padat | Perlu Pembinaan |

### Bagian C - Validasi Data Lengkap
Prosedur validasi dengan logika:
- **Status KRS**: Valid jika UKT lunas, semester aktif, dan SKS > 0
- **Kategori Beban SKS**:
  - ≤ 12 SKS = Ringan
  - 13-18 SKS = Sedang
  - > 18 SKS = Padat
- **Kategori IPK**:
  - ≥ 3.50 = Sangat Baik
  - ≥ 3.00 = Baik
  - ≥ 2.50 = Cukup
  - < 2.50 = Perlu Pembinaan

### Bagian D - Pemeringkatan IPK
Menampilkan ranking mahasiswa berdasarkan IPK:
1. Farida Nur Intan - IPK 3.90
2. Thizya Tri Firma - IPK 3.80
3. Andi Dewa Firdaus - IPK 3.40

## 🚀 Cara Menjalankan

1. Buka MySQL (via XAMPP/phpMyAdmin)
2. Import file `Tugas_Praktikum.(02)sql.sql`
3. Panggil procedure yang diinginkan:

```sql
-- Untuk Bagian A
CALL bagian_a();

-- Untuk Bagian B
CALL bagian_b();

-- Untuk Bagian C
CALL bagian_c();

-- Untuk Bagian D
CALL bagian_d();
```

## 📚 Konsep yang Dipelajari

- ✅ DECLARE variabel dalam MySQL
- ✅ IF condition (single & nested)
- ✅ UNION ALL untuk menggabungkan hasil
- ✅ CONCAT untuk manipulasi string
- ✅ Stored Procedure creation
- ✅ DELIMITER usage dalam procedure

---
*Dibuat untuk Tugas Praktikum Blok Prosedural - Semester 4*