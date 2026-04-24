-- =========================
-- BAGIAN A
-- =========================
DROP PROCEDURE IF EXISTS bagian_a;
DELIMITER $$

CREATE PROCEDURE bagian_a()
BEGIN
    DECLARE v_prodi VARCHAR(50) DEFAULT 'Informatika';
    DECLARE v_kampus VARCHAR(50) DEFAULT 'Mega Buana Palopo';

    SELECT CONCAT(
        'Mahasiswa Farida Nur Intan (IK2411013) dari Program Studi ',
        v_prodi, ' terdaftar di ', v_kampus, ' pada semester 4.'
    ) AS Identitas

    UNION ALL

    SELECT CONCAT(
        'Mahasiswa Thizya Tri Firma (IK2411057) dari Program Studi ',
        v_prodi, ' terdaftar di ', v_kampus, ' pada semester 3.'
    )

    UNION ALL

    SELECT CONCAT(
        'Mahasiswa Andi Dewa Firdaus (IK2411027) dari Program Studi ',
        v_prodi, ' terdaftar di ', v_kampus, ' pada semester 5.'
    );
END $$

DELIMITER ;

-- =========================
-- BAGIAN B
-- =========================
DROP PROCEDURE IF EXISTS bagian_b;
DELIMITER $$

CREATE PROCEDURE bagian_b()
BEGIN
    SELECT 
        'Farida Nur Intan' AS Nama,
        'Valid' AS Status,
        'Padat' AS Beban,
        'Sangat Baik' AS Performa

    UNION ALL

    SELECT 
        'Thizya Tri Firma',
        'Valid',
        'Sedang',
        'Baik'

    UNION ALL

    SELECT 
        'Andi Dewa Firdaus',
        'Tidak Valid',
        'Padat',
        'Perlu Pembinaan';
END $$

DELIMITER ;

-- =========================
-- BAGIAN C
-- =========================
DROP PROCEDURE IF EXISTS bagian_c;
DELIMITER $$

CREATE PROCEDURE bagian_c()
BEGIN
    DECLARE nama1 VARCHAR(50) DEFAULT 'Farida Nur Intan';
    DECLARE nim1 VARCHAR(20) DEFAULT 'IK2411013';
    DECLARE smt1 INT DEFAULT 4;
    DECLARE prodi1 VARCHAR(50) DEFAULT 'Informatika';
    DECLARE sks1 INT DEFAULT 21;
    DECLARE ipk1 DECIMAL(3,2) DEFAULT 3.80;
    DECLARE ukt1 VARCHAR(10) DEFAULT 'BELUM';

    DECLARE nama2 VARCHAR(50) DEFAULT 'Thizya';
    DECLARE nim2 VARCHAR(20) DEFAULT 'IK2411057';
    DECLARE smt2 INT DEFAULT 4;
    DECLARE prodi2 VARCHAR(50) DEFAULT 'Informatika';
    DECLARE sks2 INT DEFAULT 18;
    DECLARE ipk2 DECIMAL(3,2) DEFAULT 3.40;
    DECLARE ukt2 VARCHAR(10) DEFAULT 'LUNAS';

    DECLARE nama3 VARCHAR(50) DEFAULT 'Andi';
    DECLARE nim3 VARCHAR(20) DEFAULT 'IK2411027';
    DECLARE smt3 INT DEFAULT 4;
    DECLARE prodi3 VARCHAR(50) DEFAULT 'Informatika';
    DECLARE sks3 INT DEFAULT 10;
    DECLARE ipk3 DECIMAL(3,2) DEFAULT 2.40;
    DECLARE ukt3 VARCHAR(10) DEFAULT 'BELUM';

    DECLARE status1, status2, status3 VARCHAR(30);
    DECLARE beban1, beban2, beban3 VARCHAR(30);
    DECLARE perf1, perf2, perf3 VARCHAR(30);
    DECLARE alasan1, alasan2, alasan3 VARCHAR(100);

    -- Mahasiswa 1
    SET status1 = IF(ukt1='LUNAS' AND smt1>0 AND sks1>0,'Valid','Tidak Valid');
    SET alasan1 = IF(status1='Valid',
        'UKT lunas, semester aktif, dan SKS memenuhi syarat',
        'Salah satu syarat tidak terpenuhi');
    SET beban1 = IF(sks1<=12,'Ringan',IF(sks1<=18,'Sedang','Padat'));
    SET perf1 = IF(ipk1>=3.50,'Sangat Baik',
        IF(ipk1>=3.00,'Baik',
        IF(ipk1>=2.50,'Cukup','Perlu Pembinaan')));

    -- Mahasiswa 2
    SET status2 = IF(ukt2='LUNAS' AND smt2>0 AND sks2>0,'Valid','Tidak Valid');
    SET alasan2 = IF(status2='Valid',
        'UKT lunas, semester aktif, dan SKS memenuhi syarat',
        'Salah satu syarat tidak terpenuhi');
    SET beban2 = IF(sks2<=12,'Ringan',IF(sks2<=18,'Sedang','Padat'));
    SET perf2 = IF(ipk2>=3.50,'Sangat Baik',
        IF(ipk2>=3.00,'Baik',
        IF(ipk2>=2.50,'Cukup','Perlu Pembinaan')));

    -- Mahasiswa 3
    SET status3 = IF(ukt3='LUNAS' AND smt3>0 AND sks3>0,'Valid','Tidak Valid');
    SET alasan3 = IF(status3='Valid',
        'UKT lunas, semester aktif, dan SKS memenuhi syarat',
        'Salah satu syarat tidak terpenuhi');
    SET beban3 = IF(sks3<=12,'Ringan',IF(sks3<=18,'Sedang','Padat'));
    SET perf3 = IF(ipk3>=3.50,'Sangat Baik',
        IF(ipk3>=3.00,'Baik',
        IF(ipk3>=2.50,'Cukup','Perlu Pembinaan')));

    SELECT nama1, nim1, prodi1, smt1, status1, beban1, perf1, alasan1
    UNION ALL
    SELECT nama2, nim2, prodi2, smt2, status2, beban2, perf2, alasan2
    UNION ALL
    SELECT nama3, nim3, prodi3, smt3, status3, beban3, perf3, alasan3;
END $$

DELIMITER ;

-- =========================
-- BAGIAN D
-- =========================
DROP PROCEDURE IF EXISTS bagian_d;
DELIMITER $$

CREATE PROCEDURE bagian_d()
BEGIN
    SELECT 
        'Thizya' AS Nama, 'IK2411057' AS NIM, 3.80 AS IPK
    UNION ALL
    SELECT 
        'Andi', 'IK2411027', 3.40
    UNION ALL
    SELECT 
        'Farida Nur Intan', 'IK2411013', 3.90;

    SELECT 'Mahasiswa terbaik: Farida Nur Intan (IPK 3.90)' AS Kesimpulan;
END $$

DELIMITER ;