
--
--  CREATE DATABASE db_berita;
--  USE db_berita;

CREATE TABLE `berita` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `abstrak` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `slug`, `name`, `category_id`, `abstrak`, `description`, `created_at`) VALUES
(3, 'Mangkir-Panggilan-KPK,-Khofifah-Hadiri-Wisuda-Anak-di-China', 'Mangkir Panggilan KPK, Khofifah Hadiri Wisuda Anak di China', 1, 'Gubernur Jawa Timur Khofifah Indar Parawansa tidak bisa memenuhi panggilan penyidik KPK karena sedang mengambil cuti untuk menghadiri wisuda putranya Jalaluddin Mannagalli Parawansa di Universitas Peking, China.', 'Surabaya, CNN Indonesia -- Gubernur Jawa Timur Khofifah Indar Parawansa tidak bisa memenuhi panggilan penyidik KPK karena sedang mengambil cuti untuk menghadiri wisuda putranya Jalaluddin Mannagalli Parawansa di Universitas Peking, China.\r\n\r\nKhofifah dipanggil penyidik KPK sebagai saksi kasus dugaan korupsi pengurusan dana hibah Pokmas dari APBD Jawa Timur tahun anggaran 2021-2022, hari ini.\r\n\r\n\"Jadi Ibu Gubernur hari ini sampai Minggu (22/6) cuti untuk menghadiri wisuda putranya di China,\" kata Sekretaris Daerah Provinsi Jatim Adhy Karyono dalam keterangannya, Jumat (20/6).\r\n\r\nAdhy mengatakan Khofifah telah berangkat ke China pada Jumat pagi tadi. Khofifah juga sudah berkoordinasi dengan jajaran OPD Pemprov untuk memastikan pelayanan ke masyarakat tetap berjalan.\r\n\r\nMenurutnya, cuti Khofifah sudah disetujui oleh Kementerian Dalam Negeri. Saat ini, Emil Elestianto Dardak menjadi Plt Gubernur Jatim.\r\n\r\n\"Seperti aturan yang ada, otomatis Plt Gubernur dari wakilnya yakni Pak Emil Elestianto Dardak,\" ujarnya.\r\n\r\nPada 2023 lalu, putra Khofifah, Jalaluddin melanjutkan studi jenjang magister. Jalal, panggilan akrabnya menjadi mahasiswa baru Universitas Peking Beijing, China.\r\n\r\nKala itu, Khofifah melepas langsung kepergian Jalal ke Cina di Bandara Soekarno Hatta. Jalal merupakan anak kedua Khofifah dari 4 bersaudara.\r\n\r\nSebelumnya KPK menjadwalkan pemeriksaan terhadap Gubernur Jatim Khofifah Indar Parawansa untuk diperiksa sebagai saksi kasus dugaan korupsi pengurusan dana hibah Pokmas dari APBD Jawa Timur tahun anggaran 2021-2022, hari ini.\r\n\r\nPenyidik KPK pada tahun lalu juga sudah menggeledah ruang kerja Khofifah terkait dengan penyidikan kasus tersebut.\r\n\r\nKemarin, mantan Ketua DPRD Jawa Timur sekaligus mantan Ketua DPD PDI Perjuangan (PDIP) Kusnadi sudah memberikan keterangan di KPK. Dia merupakan tersangka dalam kasus ini tetapi pemeriksaannya dalam kapasitas sebagai saksi.\r\n\r\nSejumlah aset diduga terkait dengan kasus ini seperti rumah hingga tanah sudah dilakukan penyitaan. KPK juga telah mencegah 21 orang untuk bepergian ke luar negeri.\r\n\r\nMereka atas nama KUS (Penyelenggara negara/Anggota DPRD Provinsi Jawa Timur); AI (Penyelenggara negara/Anggota DPRD Provinsi Jawa Timur); AS (Penyelenggara negara/Anggota DPRD Provinsi Jawa Timur); BW, JPP, HAS, dan SUK (swasta).\r\n\r\nKemudian AR, WK, AJ, MAS, AA, AH (swasta) dan FA (Penyelenggara negara/Anggota DPRD Kabupaten Sampang).\r\n\r\nMAH (Penyelenggara negara/Anggota DPRD Provinsi Jawa Timur), JJ (Penyelenggara negara/Anggota DPRD Kabupaten Probolinggo), serta AYM, RWS, MF, AM, dan MM dari pihak swasta. ', '2025-06-20 18:06:28'),
(4, '5-Update-Perang-Iran-Israel-:-Siapa-Saja-Jenderal-&-Ilmuwan-Terbunuh?', '5 Update Perang Iran-Israel: Siapa Saja Jenderal & Ilmuwan Terbunuh?', 2, 'Timur Tengah tengah membara imbas perang Israel vs Iran yang kembali pecah sejak 13 Juni lalu. ', 'Jakarta, CNN Indonesia -- Timur Tengah tengah membara imbas perang Israel vs Iran yang kembali pecah sejak 13 Juni lalu. \r\n\r\nIsrael lebih dulu melancarkan serangan udara besar-besaran ke Iran dengan dalih menghentikan Teheran yang diklaimnya sedikit lagi memiliki senjata nuklir.\r\n\r\nIran tidak tinggal diam dan langsung melancarkan serangan balasan hingga menghujani sejumlah wilayah Israel, termasuk Tel Aviv, dengan rudal dan drone.\r\n\r\nBerikut update terkini setelah sepekan perang Israel-Iran:\r\n\r\n1. Petinggi militer Iran tewas\r\nIsrael membunuh sejumlah petinggi militer Iran dalam beberapa hari. Serangan pertama mereka menewaskan Kepala Staf Angkatan Bersenjata Militer Iran Mayor Jenderal Mohammad Bagheri, Komandan Pasukan Garda Revolusi Iran (IRGC) Mayor Jenderal Hossein Salami, Komandan Markas Besar Khatam Al Anbiya dan anggota IRGC Mayor Jenderal Gholami Rashid.\r\n\r\nKepala Angkatan Udara Iran yang memimpin program rudal balistik Ali Hajizadeh serta kepala intelijen Mohammad Kazemi juga tewas dalam serangan Iran.\r\n\r\nSetelah petinggi militer tewas, Pemimpin Tertinggi Iran Ayatollah Ali Khamenei menunjuk Ali Shamdani menjadi Komandan Markas Besar IRGC yang baru. Namun, dia juga tewas dalam serangan Israel pada 17 Juni.\r\n\r\n2. Ilmuwan nuklir Iran terbunuh\r\nIsrael juga membunuh sejumlah ilmuwan nuklir Iran. Mereka yang jadi korban adalah rektor Universitas Islam Azad Mohammad Mechdi Tehranchi, mantan Ketua Organisasi Energi Atom Iran Fereydoun Abbasi, Abdolhamid Minouchehr, Ahmadreza Zolfaghari, Amirhossein Feqhi, Mansour Asgari, Saeed Borji, hingga Akbar Motalleblizadeh.\r\n\r\nIsrael berulang kali mengeklaim serangan ke Iran bertujuan untuk melucuti program nuklir dan rudal balistik mereka. Namun, pasukan Zionis juga menggempur habis-habisan permukiman penduduk dan menyebabkan banyak warga sipil tewas.\r\n\r\n3. Jumlah korban sipil tewas\r\nSejumlah media melaporkan jumlah korban tewas di Iran mencapai 585 jiwa dan yang terluka 1.326 terluka sejak Israel menyerang, demikian dikutip Anadolu Agency.\r\n\r\nDi Israel, sebanyak 24 orang tewas imbas pertempuran tersebut. Selama perang berkobar, Iran menargetkan fasilitas militer dan bukan area penduduk.\r\n\r\nKhamenei jadi target utama Israel\r\nMenteri Pertahanan Israel, Israel Katz, memberi pertanyaan yang menunjukkan pemerintahan Benjamin Netanyahu menjadikan Khamenei target utama.\r\n\r\n\"Dia menganggap penghancuran negara Israel sebagai tujuannya. Orang seperti itu tidak boleh dibiarkan hidup lagi,\" kata Katz pada Kamis (19/20), dikutip AFP.\r\n\r\nSebelum komentar Katz, Iran menyerang markas badan intelijen Israel, Mossad. Namun, pemerintahan Netanyahu menuding Teheran menggempur rumah sakit.\r\n\r\n4. Trump pikir-pikir bantu Israel\r\nAS mengirim tiga jenis jet tempur canggih untuk membantu Israel melawan Iran. Trump juga mempertimbangkan bakal mengerahkan aset militer mereka untuk membantu Negeri Zionis.\r\n\r\nDalam konferensi pers pada Rabu, Trump memberi jawaban ambigu soal keterlibatan AS dalam perang dan apakah bakal menyerang Iran atau tidak.\r\n\r\n\"Anda tak tahu apa yang akan saya lakukan. Anda tak tahu. Saya mungkin melakukan itu, saya mungkin tidak melakukan itu. Hanya saya yang tahu,\" kata Trump\r\n\r\n5. Rusia dan China kecam Israel\r\nPresiden China Xi Jinping dan Presiden Rusia Vladimir Putin sepakat mengecam tindakan brutal Israel ke Iran.\r\n\r\nDukungan mereka disampaikan saat berbincang via telepon pada Kamis (19/3). Juru bicara Kremlin Yury Ushakov membeberkan pembicaraan tersebut yang dirilis di situs resmi pemerintah.\r\n\r\n\"Kedua pihak memiliki pendekatan yang sama dan dengan keras mengecam tindakan Israel yang menciderai Piagam PBB dan norma-norma internasional,\" ucap Ushakov.\r\n\r\nPutin bahkan menyatakan Rusia siap turun tangan menyusul situasi yang kian memanas imbas perang Iran-Israel beberapa hari terakhir.\r\n\r\nKremlin mengonfirmasi presiden Rusia siap memediasi dialog antara Iran dan Israel. Pernyataan itu disampaikan saat Putin berbincang dengan Presiden Uni Emirat Arab Mohammed bin Zayed Al Nahyan (MBZ).\r\n\r\n\"Vladimir Putin mengonfirmasi kesiapan Rusia memberi bantuan mediasi untuk mendorong dialog antara pihak-pihak yang berkonflik, menginformasikan tentang kontak dengan sejumlah pemimpin asing dalam hal ini,\" demikian pernyataan resmi Kremlin, dikutip kantor berita TASS.', '2025-06-20 18:37:18'),
(5, 'Perang-Gak-Ngaruh,-Industri-Otomotif-Iran-Terus-Gelinding-dari-1960-an', 'Perang Gak Ngaruh, Industri Otomotif Iran Terus Gelinding dari 1960-an', 3, 'Ketegangan antara Iran dan Israel kembali memanas dalam beberapa waktu terakhir. Namun di balik konflik geopolitik itu, terdapat satu sektor di Iran yang terus tumbuh dan bertahan di tengah tekanan global: industri otomotif.', 'Jakarta, CNN Indonesia -- Ketegangan antara Iran dan Israel kembali memanas dalam beberapa waktu terakhir. Namun di balik konflik geopolitik itu, terdapat satu sektor di Iran yang terus tumbuh dan bertahan di tengah tekanan global: industri otomotif.\r\n\r\nIran bukan pemain baru di industri kendaraan. Sejak 1960-an, negara ini mulai merakit dan memproduksi mobil sendiri sebagai bentuk kemandirian ekonomi nasional.\r\n\r\nHingga kini, sektor otomotif menjadi salah satu penyumbang terbesar dalam Produk Domestik Bruto (PDB) Iran, setelah energi.\r\n\r\nLahirnya mobil Iran\r\n\r\nTonggak pertama sejarah otomotif Iran dimulai pada 1962, ketika perusahaan Iran Khodro Company (IKCO) berdiri di Teheran.\r\n\r\nAwalnya, IKCO merakit bus dengan sasis buatan Jerman. Namun pada 1966, perusahaan ini mulai memproduksi sedan Paykan, hasil kerja sama dengan perusahaan Inggris Rootes.\r\n\r\nPaykan menjadi mobil ikonik di Iran selama beberapa dekade. Produksinya terus berlanjut hingga awal 2000-an, sebelum diganti mobil nasional Iran, Samand.\r\n\r\nSamand dirancang dan diproduksi sepenuhnya oleh Iran. Mobil ini bukan hanya menjadi simbol kemandirian otomotif, tapi juga berhasil menembus pasar ekspor.\r\n\r\nTiga raksasa otomotif Iran\r\n\r\nSelain IKCO, dua produsen otomotif besar lainnya ikut menopang industri otomotif Iran, yaitu SAIPA dan Pars Khodro.\r\n\r\nSAIPA didirikan pada 1965, dan sejak awal memproduksi mobil Citroen, lalu bekerja sama dengan Renault. Perusahaan ini juga pernah berkolaborasi dengan Proton dari Malaysia untuk mengembangkan mobil sedan ukuran ringkas.\r\n\r\nSementara Pars Khodro dikenal lewat sejarahnya merakit mobil-mobil American Motors dan General Motors. Kini, Pars Khodro memproduksi berbagai model, termasuk merek Zotye, Brilliance dan Renault.\r\n\r\nSanksi AS bikin mandiri\r\n\r\nPada 2017, industri otomotif Iran sempat berada di puncak produksi dengan lebih dari 1,4 juta unit kendaraan per tahun.\r\n\r\nNamun, sanksi ekonomi yang dijatuhkan Amerika Serikat pada 2018 memukul keras industri ini. Perusahaan asing hengkang, pasokan komponen terganggu dan produksi mobil merosot hingga 29 persen dalam satu tahun.\r\n\r\nMeski begitu, industri lokal tak menyerah. IKCO dan SAIPA mulai memproduksi sendiri komponen yang sebelumnya diimpor, demi menjaga rantai produksi tetap berjalan.\r\n\r\n\"Dengan langkah-langkah yang telah kami ambil di bidang produksi dalam negeri dan swasembada, kami telah mampu mengurangi lebih dari US$50 juta biaya produksi dan merencanakan pengurangan biaya sebesar $300 juta,\" kata Direktur IKCO, Farshad Moqimi, dikutip dari Middle East Political and Economic Institute, Jumat (20/6).\r\n\r\nSebagai respons atas tekanan internasional, pemerintah Iran mendorong kebijakan substitusi impor dan kolaborasi antara pabrikan mobil dengan perusahaan rintisan teknologi.\r\n\r\nGerakan bertajuk \"Domestic Manufacturing of Imported Parts\" diluncurkan untuk memperkuat kemampuan produksi dalam negeri.\r\n\r\nBahkan, beberapa mobil terbaru yang dirilis oleh produsen Iran kini diklaim sudah 90 persen menggunakan komponen lokal.\r\n\r\nSelain itu, penemuan tambang lithium di Iran baru-baru ini membuka peluang baru bagi industri mobil listrik. Lithium merupakan bahan utama baterai EV yang banyak diburu negara lain.\r\n\r\nLebih dari 800 ribu warga Iran bergantung pada industri otomotif, baik secara langsung maupun tidak langsung. Sektor ini bukan hanya pilar ekonomi, tetapi juga menjadi simbol upaya Iran untuk mandiri di tengah tekanan ekonomi dan politik global.\r\n\r\nDari Paykan hingga mobil listrik berbasis lithium, sejarah otomotif Iran menunjukkan bahwa industri ini tumbuh bukan pada situasi ideal, melainkan karena dorongan untuk bertahan.', '2025-06-20 20:14:55'),
(6, 'Hanya-2 -UIN-Masuk-Daftar-Kampus-Terbaik-Dunia-2025', 'Hanya 2 UIN Masuk Daftar Kampus Terbaik Dunia 2025', 4, 'Times Higher Education (THE) Impact Rankings 2025 mengumumkan daftar kampus terbaik sedunia termasuk di Indonesia. Dari daftar tersebut, hanya dua Universitas Islam Negeri (UIN) yang masuk daftar.', 'Times Higher Education (THE) Impact Rankings 2025 mengumumkan daftar kampus terbaik sedunia termasuk di Indonesia. Dari daftar tersebut, hanya dua Universitas Islam Negeri (UIN) yang masuk daftar.\r\n\r\nPengumuman resmi dirilis melalui laman THE Impact Rankings pada Rabu, 18 Juni 2025. Pada tahun 2025 ini ada sebanyak 71 universitas di Indonesia. Baik berstatus negeri maupun swasta.\r\n\r\nSecara keseluruhan, jumlah UIN di Indonesia mencapai 41 kampus yang dikelola oleh Kementerian Agama (Kemenag).\r\n\r\nDari data di atas, 14 UIN diberikan amanah oleh Direktorat Jenderal Pendidikan Islam Kementerian Agama Republik Indonesia untuk menuju World University Rangkings.\r\n\r\nTetapi berdasarkan data THE Impact Rangkings, ada dua UIN yang berhasil lolos masuk kampus terbaik dunia. Yaitu Universitas Islam Negeri Raden Intan Lampung dan Universitas Islam Negeri Sumatera Utara.\r\n\r\nDaftar UIN yang Masuk Kampus Terbaik Dunia\r\n1. Universitas Islam Negeri Raden Intan Lampung\r\nUIN Raden Intan masuk dalam peringkat 1001-150 secara global. Rektor UIN Raden Intan Lampung, Wan Jamaluddin menyampaikan apresiasi atas capaian ini.\r\n\r\n“Ini adalah hasil kerja keras dari seluruh sivitas akademika UIN RIL. Capaian ini membuktikan bahwa kualitas riset dan pengabdian kami semakin diakui di tingkat global. Saya berharap prestasi ini menjadi motivasi untuk terus meningkatkan inovasi dan kolaborasi riset,” ujarnya, dilansir dari laman Pendis Kemenag, Jumat (20/6/2025).\r\n\r\nIa juga menambahkan, pencapaian ini melengkapi prestasi UIN RIL sebagai kampus hijau terlestari versi UI GreenMetric, UIN RIL menjadi peringkat 1 PTKIN dan menempati posisi ke-71 dunia.\r\n\r\nBaca juga: 5 Sekolah Kedinasan Tanpa Syarat Tinggi Badan dan Bisa Mata Minus, Ada STAN dan STIN\r\n\r\nSementara dalam pemeringkatan UniRank, kampus ini berada di posisi ke-6 nasional di klaster PTKIN.\r\n\r\nWakil Rektor II, Safari yang juga menjabat sebagai Ketua Tim Taskforce THE UIN RIL, menyebutkan bahwa capaian ini merupakan bagian langkah menuju cita-cita besar kampus.\r\n\r\nLebih membanggakan lagi, ini adalah tahun pertama UIN RIL ikut serta dalam THE Impact Rankings.\r\n\r\n“Pencapaian ini adalah awal dari upaya panjang UIN RIL untuk menjadi World Class University,” tuturnya.\r\n\r\nTHE Impact Rankings menilai universitas berdasarkan kontribusinya terhadap pencapaian Sustainable Development Goals (SDGs) atau Tujuan Pembangunan Berkelanjutan (TPB) yang dicanangkan PBB.\r\n\r\nAda 17 goals SDGs yang dinilai. Untuk dinilai di THE Impact Rankings, kampus minimal harus submit 4 goals.\r\n\r\nSeperti UIN RIL mengajukan lima, yaitu SDGs 4 (Pendidikan Berkualitas), SDGs 5 (Kesetaraan Gender), SDGs 6 (Air Bersih dan Sanitasi Layak), SDGs 10 (Mengurangi Ketimpangan), dan SDGs 17 (Kemitraan). Goal yang wajib disubmit itu SDGs 17.\r\n\r\n2. Universitas Islam Negeri Sumatera Utara\r\nRektor UIN SU, Prof. Dr. Nurhayati, M.Ag, mengatakan sangat bangga pada prestasi lembaga pemeringkatan bergengsi internasional ini.\r\n\r\n“Alhamdulillah, ini merupakan satu keberkahan UIN SU lainnya, sangat bahagia atas capain ini, karena baru perdana UIN SU submit ke THE Impact Rankings, akan tetapi telah berhasil mendapatkan posisi rankings,\" ujarnya dilansir dari laman UIN SU.\r\n\r\nRektor dan segenap Pimpinan UIN SU, mengucapkan terima kasih kepada tim WUR dan Sivitas Akademika UIN SU, atas kerja keras dan upaya bersama untuk terus berkemajuan dan berkembang baik di level Nasional maupun International\r\n\r\nPada daftar tersebut, UIN SU tercatat berada pada rentang peringkat 1501+ dunia, menempati peringkat ke-59 secara nasional, dan posisi ke-2 untuk lingkup PTKIN se-Indonesia.', '2025-06-20 20:25:26'),
(7, 'Sering-Pakai-Earbuds?-Waspadai-Risiko-Iritasi,-Infeksi,-hingga-Penumpukan-Kotoran-Telinga', 'Sering Pakai Earbuds? Waspadai Risiko Iritasi, Infeksi, hingga Penumpukan Kotoran Telinga', 5, 'Penggunaan earbuds yang menempel langsung ke liang telinga dapat menyebabkan iritasi, infeksi, hingga produksi serumen (kotoran telinga) berlebih.', 'Penggunaan earbuds yang menempel langsung ke liang telinga dapat menyebabkan iritasi, infeksi, hingga produksi serumen (kotoran telinga) berlebih.\r\n\r\nRisiko ini sering diabaikan oleh pengguna perangkat audio pribadi, terutama di kalangan muda.\r\n\r\nHal tersebut disampaikan oleh Dr. dr. Fikri Mirza Putranto, Sp.THT-KL(K), dalam seminar daring bertajuk Sayangi Pendengaranmu: Tips Aman Memakai Headset Sehari-hari, yang diselenggarakan oleh Continuing Medical Education Fakultas Kedokteran Universitas Indonesia, Kamis (12/6/2025).\r\n\r\n“Earbuds menempel langsung ke lubang telinga. Jika tidak dijaga kebersihannya, bisa menyebabkan iritasi atau infeksi karena bakteri ikut masuk saat telinga luka,” ujar Fikri.\r\n\r\nEarbuds menimbulkan tekanan pada liang telinga yang memicu peningkatan produksi serumen. Jika tidak dibersihkan secara teratur, kotoran akan terdorong makin dalam dan menumpuk di depan gendang telinga.\r\n\r\n“Produksi serumen meningkat karena ada tekanan dari earbuds. Ini bikin telinga gatal, pengin digaruk, dan justru memperparah luka bila alat yang dipakai kotor,” jelasnya.\r\n\r\nPenumpukan kotoran bisa menyebabkan sensasi telinga terasa tertutup (muffled hearing), nyeri, dan gangguan pendengaran ringan. Pada kasus tertentu, infeksi bisa menyebar ke saluran telinga bagian luar.\r\n\r\nUntuk mengurangi risiko, pengguna earbuds disarankan membersihkan perangkat secara berkala dan tidak meletakkannya sembarangan.\r\n\r\n“Earbuds yang ditaruh sembarangan lalu dipakai lagi berisiko membawa bakteri langsung ke dalam telinga,” ujarnya.\r\n\r\nBagi pengguna aktif, terutama yang memakai perangkat audio setiap hari, disarankan melakukan pemeriksaan telinga secara rutin setiap 6 bulan hingga satu tahun\r\n\r\n“Prinsipnya sama seperti pengguna alat bantu dengar. Minimal setahun sekali, telinga harus dievaluasi dan dibersihkan oleh tenaga medis,” kata Fikri.\r\n\r\nPenggunaan earbuds tidak dilarang, tetapi harus dilakukan dengan bijak.\r\n\r\nBatasi durasi pemakaian, hindari penggunaan saat tidur, serta perhatikan tanda-tanda ketidaknyamanan seperti nyeri, rasa tertutup, atau berdenging setelah digunakan.\r\n\r\n“Kalau sudah muncul keluhan, segera periksa ke dokter THT. Jangan tunggu sampai terjadi gangguan pendengaran lebih lanjut,” ujarnya mengingatkan.', '2025-06-20 20:32:31'),
(8, 'Hacker-Pro-Israel-Retas-Bursa-Kripto-Iran,-Gasak-Rp1,4-Triliun', 'Hacker Pro-Israel Retas Bursa Kripto Iran, Gasak Rp1,4 Triliun', 6, 'Perang yang berkobar antara Israel dan Iran memakan korban baru. Kali ini, giliran hacker pro-Israel berhasil meretas bursa kripto terbesar Iran, Nobitex, dan menggasak kripto yang setara dengan US$90 juta atau sekitar Rp1,4 triliun (dengan asumsi Rp16.352 per 1 dollar AS).', 'Perang yang berkobar antara Israel dan Iran memakan korban baru. Kali ini, giliran hacker pro-Israel berhasil meretas bursa kripto terbesar Iran, Nobitex, dan menggasak kripto yang setara dengan US$90 juta atau sekitar Rp1,4 triliun (dengan asumsi Rp16.352 per 1 dollar AS).\r\nKelompok hacker pro-Israel bernama \"Predatory Sparrow\" mengaku bertanggung jawab atas serangan siber tersebut. Serangan ini diduga bertujuan untuk melemahkan Iran di tengah perang antara Israel dan Iran.\r\n\r\nDalam sebuah unggahan di X, para peretas menyatakan bahwa mereka telah menyerang bursa kripto Iran Nobitex. Mereka menuding Iran menggunakan bursa tersebut untuk menghindari sanksi internasional.\r\n\r\nMenurut sejumlah ahli keamanan siber, para peretas diduga kuat telah membuang kripto yang dicuri dengan mentransfernya ke dompet digital yang tidak mereka kendalikan.\r\n\r\nMelansir CNN pada Rabu (18/6), Nobitex mengakui insiden tersebut. Dalam sebuah pernyataan di situs resminya, mereka mengatakan bahwa akses ke bursa kripto telah ditangguhkan sebagai tindakan pencegahan hingga pemberitahuan lebih lanjut.\r\n\r\nPerusahaan pemantau kripto Elliptic dan TRM Labs mengonfirmasi bahwa kripto tersebut dicuri dan dikirim ke dompet atau akun kripto, dengan kata-kata kasar yang merujuk pada Korps Garda Revolusi Islam Iran (IRGC).\r\n\r\nSebelumnya, pada Selasa (17/6), Predatory Sparrow juga mengaku menghancurkan data di Bank Sepah milik Iran. Mereka menuduh anggota IRGC menggunakan layanan bank tersebut sebagai alasan melakukan peretasan Kantor berita Fars, yang terafiliasi dengan pemerintah Iran, juga sudah memperingatkan kemungkinan gangguan layanan bank di stasiun bensin\r\n\r\nSeorang sumber di Tehran mengatakan bahwa mereka telah mengunjungi sekitar 10 mesin ATM selama Selasa dan Rabu, dan menemukan semua mesin tersebut tidak berfungsi atau kehabisan uang tunai.\r\n\r\nSerangkaian serangan siber ini menandai eskalasi perang bertahun-tahun antara Israel dan Iran di ruang siber. Keduanya, atau pendukung mereka, telah melakukan spionase digital dan serangan penghancuran data untuk keunggulan taktis.\r\n\r\nDalam serangan siber lainnya, stasiun televisi milik negara Iran menjadi sasaran dengan para peretas menayangkan video yang menyerukan pemberontakan publik melawan pemerintah Iran. Namun, tidak ada yang mengeklaim bertanggung jawab atas serangan tersebut.\r\n\r\nPredatory Sparrow muncul dalam lima tahun terakhir untuk mengklaim serangan siber yang sebelumnya mengganggu pabrik baja Iran dan sistem pembayaran di stasiun bensin Iran. Para peretas mengklaim diri mereka sebagai aktivis siber anti-pemerintah Iran.\r\n\r\nKendati begitu, para ahli keamanan siber secara luas menduga mereka memiliki hubungan dengan Israel.\r\n\r\nHamid Kashfi, ahli keamanan siber, mengatakan bahwa serangan Predatory Sparrow terhadap Nobitex dapat berdampak pada warga Iran, meskipun para peretas mengklaim hanya menargetkan aset IRGC. Padahal, menurutnya banyak warga Iran yang kini mengandalkan kripto, sehingga serangan ini semakin membatasi mereka ke sumber daya keuangan.\r\n\r\n\"Banyak warga Iran mengandalkan kripto,\" kata Kashfi.\r\n\r\nSebagian besar aktivitas siber dalam beberapa hari terakhir, saat Israel dan Iran saling melancarkan serangan rudal, tampaknya bertujuan untuk menebar kepanikan di kedua negara. Warga Israel, misalnya, menerima pesan teks massal yang menyamar sebagai otoritas dan mengklaim bahwa tempat perlindungan bom tidak aman.', '2025-06-21 00:17:06'),
(9, 'Pemerintah-akan-Renovasi-Rumah-Kumuh-Pakai-Utang-Rp24,5-T-Bank-Dunia', 'Pemerintah akan Renovasi Rumah Kumuh Pakai Utang Rp24,5 T Bank Dunia', 7, 'Kementerian Perumahan dan Kawasan Permukiman (PKP) akan merenovasi rumah kumuh menggunakan pinjaman Rp24,5 triliun yang ditawarkan Bank Dunia.', 'Kementerian Perumahan dan Kawasan Permukiman (PKP) akan merenovasi rumah kumuh menggunakan pinjaman Rp24,5 triliun yang ditawarkan Bank Dunia.\r\n\r\nDirektur Jenderal Kawasan Permukiman Fitrah Nur mengatakan selama ini pemerintah hanya menyasar penataan kawasan kumuh. Dengan pinjaman baru ini, pemerintah berencana menyasar lebih dalam.\r\n\r\n\"Jadi kita ini sekalian, selain peningkatan kawasan kumuh, kita juga menyasar ke rumah yang tidak layakhuninya di kawasan tersebut. Sehingga satu paket bisa menyelesaikan permasalahan di kawasan,\" ujar Fitrah saat ditemui di Kantor Kementerian Perencanaan Pembangunan Nasional, Jakarta Selatan, Jumat (20/6).\r\n\r\nDuit pinjaman itu juga bakal dipakai untuk program bantuan stimulan perumahan swadaya (BSPS) atau bedah rumah.\r\n\r\nBerbeda dari biasanya, BSPS dari Bank Dunia akan fokus ke hunian yang bisa meningkatkan perkembangan keluarga, seperti homestay atau pembuatan warung.\r\n\r\nRencana lainnya adalah insentif bagi pembangunan rumah vertikal. Ada pula insentif bagi pembangunan hunian hunian berbasis sarana transportasi (TOD).\r\n\r\n\"Kita juga menyiapkan semacam insentif bagi pengembang yang mau membangun semacam low-rise apartment atau rumah subsidi, apartemen yang murah,\" ucap Fitrah.\r\n\r\nRencana sejumlah program itu sudah dimasukkan ke Bappenas untuk dikaji lebih lanjut. Setelah itu, akan diajukan ke Bank Dunia untuk asesmen lebih lanjut.\r\n\r\n\"Setelah itu baru tahapannya, berarti mungkin paling cepat tahun 2026,\" ucapnya.\r\n\r\nSebelumnya, Menteri PKP Maruarar Sirait mengungkap ada tawaran pinjaman dari Bank Dunia sekitar US$1,5 miliar atau sekitar Rp24,5 triliun.\r\n\r\nTawaran pinjaman itu ditujukan untuk mendorong program 3 juta rumah Presiden Prabowo Subianto. Uang itu berbentuk pinjaman dengan bunga 6-7 persen.\r\n\r\n\"Kita pelajari bagaimana sinergi dengan kita, tentu kita pelajari program-program apa yang bisa didukung oleh Bank Dunia, dan kita tentu mempelajari secara mendalam karena itu harus kita lakukan,\" ucap Ara di Jakarta, Kamis (19/6), dilansir Antara.', '2025-06-21 00:27:25'),
(10, '5-Rekomendasi-Film-Akhir-Pekan,-28-Years-Later-dan-The-Life-of-Chuck', '5 Rekomendasi Film Akhir Pekan, 28 Years Later dan The Life of Chuck', 8, 'Sejumlah film baru berbagai genre tayang dan bisa ditonton akhir pekan ini di bioskop, 28 Years Later salah satunya. Film ketiga dari seri itu hadir setelah 28 Days Later (2002) dan 28 Weeks Later (2007).', 'Sejumlah film baru berbagai genre tayang dan bisa ditonton akhir pekan ini di bioskop, 28 Years Later salah satunya. Film ketiga dari seri itu hadir setelah 28 Days Later (2002) dan 28 Weeks Later (2007).\r\n\r\nAkhir pekan ini, The Life of Chuck yang dibintangi Tom Hiddleston juga tayang terbatas di beberapa bioskop Indonesia. Belum ada jadwal penayangan umum dari film baru garapan sutradara Mike Flanagan ini.\r\n\r\nPencinta film animasi atau keluarga bisa menyaksikan Elio yang menjadi rilisan terbaru dari Pixar. Sedangkan penikmat film komedi dapat menonton Hi-Five, film Korea bertabur bintang.\r\n\r\nBerikut 5 rekomendasi dan sinopsis film baru tayang di bioskop akhir pekan ini.\r\n\r\n28 Years Later\r\n\r\n28 tahun setelah wabah virus mematikan menghancurkan populasi, sejumlah penyintas berhasil membangun komunitas di sebuah pulau kecil yang dikarantina ketat, terhubung ke daratan utama melalui satu jalur pertahanan yang kuat.\r\n\r\nJamie (Aaron Taylor-Johnson) dan Spike (Alfie Williams) mencoba keluar dan memulai misi ke daratan utama. Mereka malah menemukan rahasia hingga kengerian yang mengubah para terinfeksi dan penyintas lainnya.\r\n\r\nFilm ini diberi label D17+ atau untuk penonton berusia 17 tahun ke atas.\r\n\r\nHi-Five\r\n\r\nLima orang dari latar belakang berbeda bertemu karena memiliki satu kesamaan, yakni menerima transplantasi dari seseorang yang membuat mereka mendapatkan kekuatan supranatural tak terduga.\r\n\r\nMereka bertemu pemimpin agama palsu (Jinyoung GOT7) yang menerima transplantasi pankreas dan juga memperoleh kekuatan supranatural. Dia pergi mencari sisa transplantasi untuk mencapai mimpinya menjadi makhluk absolut.\r\n\r\nFilm ini diberi label R13+ atau untuk penonton berusia 13 tahun ke atas.\r\n\r\nThe Life of Chuck\r\n\r\nThe Life of Chuck akan ditayangkan spesial dan terbatas di beberapa bioskop pada akhir pekan ini saat belum ada informasi penayangan umumnya di bioskop Indonesia.\r\n\r\nFilm ini dibintangi Tom Hiddleston ini menampilkan momen-momen kehidupan Charles \"Chuck\" Krantz yang diceritakan dalam urutan kronologis terbalik, dari kematiannya yang bertepatan dengan kiamat hingga ke masa kecilnya.\r\n\r\nElio\r\n\r\nElio (Yonas Kibreab), seorang bocah yang sangat tertarik pada luar angkasa hingga berharap diculik alien. Keinginannya akhirnya benar-benar terkabul. Ia bertemu alien unik, Glordon (Remy Edgerly).\r\n\r\nGlordon merupakan alien muda berbentuk siput yang menjadi teman pertamanya di luar angkasa. Keduanya membentuk ikatan baru dan bertualang di galaksi dan mencari tahu arti sebenarnya dari rumah dan jati diri.\r\n\r\nFilm ini diberi label SU atau untuk penonton semua umur.\r\n\r\nJalan Pulang\r\n\r\nLuna Maya, Taskya Namya, dan Shareefa Daanish yang kerap disapa Ratu Horor bersatu dalam film ini. Jalan Pulang mengisahkan duka seorang ibu yang ditinggal anaknya secara misterius. Film ini juga jadi debut Jeropoint sebagai sutradara.', '2025-06-21 00:40:26'),
(11, '3-Cara-Messi-Bawa-Inter-Miami-ke-16-Besar-FIFA-Club-World-Cup', '3 Cara Messi Bawa Inter Miami ke 16 Besar FIFA Club World Cup', 9, 'Inter Miami punya peluang besar untuk lolos ke 16 besar FIFA Club World Cup 2025. Berikut tiga cara Lionel Messi bawa Inter Miami lolos ke 16 besar FIFA Club World Cup 2025.', 'Inter Miami punya peluang besar untuk lolos ke 16 besar FIFA Club World Cup 2025. Berikut tiga cara Lionel Messi bawa Inter Miami lolos ke 16 besar FIFA Club World Cup 2025.\r\n\r\nInter Miami mengoleksi empat poin dari dua laga yang sudah dimainkan. Setelah imbang tanpa gol lawan Al Ahly, Inter Miami berhasil menang 2-1 lawan FC Porto.\r\n\r\nHasil itu membuat Inter Miami ada di peringkat kedua dengan koleksi empat poin. Inter Miami kalah selisih gol dari Palmeiras yang ada di posisi pertama. Sedangkan Porto dan Al Ahly ada di peringkat ketiga dan keempat dengan catatan satu poin.\r\n\r\nBerikut tiga cara Inter Miami lolos ke 16 besar FIFA Club World Cup:\r\n\r\n1. Menang\r\n\r\nKemenangan bakal menjamin Inter Miami lolos ke babak 16 besar. Tak sampai di situ, kemenangan juga akan mengantar Inter Miami memastikan diri lolos sebagai juara grup.\r\n\r\n2. Imbang\r\n\r\nHasil imbang juga bakal memastikan diri lolos ke babak 16 besar. Hasil tersebut membawa Inter Miami lolos sebagai runner up grup sedangkan Palmeiras jadi juara grup karena kenggulan selisih gol.\r\n\r\n3. Kalah\r\n\r\nWalau kalah dari Palmeiras, Inter Miami masih bisa lolos ke 16 besar FIFA Club World Cup. Syaratnya, laga Porto vs Al Ahly berakhir imbang sehingga kedua tim tersebut hanya mencatat tiga poin.\r\n\r\nInter Miami juga bisa lolos walau kalah dari Palmeiras andai Porto meraih kemenangan karena Inter Miami bakal unggul head to head lawan Porto.\r\n\r\nSedangkan bila Al Ahly yang menang di saat Inter Miami kalah, penentuan akan dilakukan lewat selisih gol mengingat kedua tim bermain imbang dalam duel sebelumnya.', '2025-06-21 00:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `name`, `created_at`) VALUES
(1, 'Nasional', 'Nasional', '2025-06-20 17:32:37'),
(2, 'International', 'International', '2025-06-20 17:32:51'),
(3, 'Otomotif', 'Otomotif', '2025-06-20 16:52:00'),
(4, 'Edukasi', 'Edukasi', '2025-06-20 16:53:30'),
(5, 'Health', 'Health', '2025-06-20 16:54:04'),
(6, 'Teknologi', 'Teknologi', '2025-06-20 17:05:45'),
(7, 'Ekonomi', 'Ekonomi', '2025-06-20 17:06:22'),
(8, 'Hiburan', 'Hiburan', '2025-06-20 17:31:13'),
(9, 'Olahraga', 'Olahraga', '2025-06-20 16:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) NOT NULL,
  `Berita_id` bigint(20) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `Berita_id`, `image_url`, `image_path`, `created_at`) VALUES
(2, 3, '/public/images/233efc432027698397e881a32c264e83.jpeg', '../public/images/233efc432027698397e881a32c264e83.jpeg', '2025-06-20 18:06:29'),
(3, 4, '/public/images/7fc2df6bb2240ec28123e89b66bc2810.jpeg', '../public/images/7fc2df6bb2240ec28123e89b66bc2810.jpeg', '2025-06-20 18:37:19'),
(4, 5, '/public/images/8bfd9fb2dc15238de85f808b96976331.jpeg', '../public/images/8bfd9fb2dc15238de85f808b96976331.jpeg', '2025-06-20 20:14:56'),
(5, 6, '/public/images/d743116899394624a7f3fedb3e95ffd4.jpg', '../public/images/d743116899394624a7f3fedb3e95ffd4.jpg', '2025-06-20 20:25:27'),
(6, 7, '/public/images/74f8eeefbb47b37866fdb3b34cf9223f.jpg', '../public/images/74f8eeefbb47b37866fdb3b34cf9223f.jpg', '2025-06-20 20:32:31'),
(7, 8, '/public/images/2095cbb16008afcb125d27d3e477ed79.jpeg', '../public/images/2095cbb16008afcb125d27d3e477ed79.jpeg', '2025-06-21 00:17:07'),
(8, 9, '/public/images/0331e71b8ed0f857cb6035e713d675c2.jpeg', '../public/images/0331e71b8ed0f857cb6035e713d675c2.jpeg', '2025-06-21 00:27:25'),
(9, 10, '/public/images/95ec9a2938b22297bed0c045e900690c.png', '../public/images/95ec9a2938b22297bed0c045e900690c.png', '2025-06-21 00:40:27'),
(10, 11, '/public/images/19dd37155f3d5987eeeb2751d120b2df.jpeg', '../public/images/19dd37155f3d5987eeeb2751d120b2df.jpeg', '2025-06-21 00:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `isi_komentar` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `access_secret` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `access_secret`, `created_at`, `deleted_at`) VALUES
(1, 'CLIENT', 787383722828, '2025-06-07 11:18:53', NULL),
(2, 'ADMIN', 787376522828, '2025-06-07 11:18:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `local_auth` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `google_id`, `email`, `role_id`, `created_at`, `deleted_at`, `password`, `local_auth`) VALUES
(8, 'fithra ahmad', '102425398467732390600', 'fithra.ahmad90@gmail.com', 2, '2025-06-20 03:24:23', NULL, NULL, 0),
(9, 'lol', NULL, 'lol@gmail.com', 1, '2025-06-20 08:57:05', NULL, '$2a$12$CbJ7MX990zqXcqfqYS48b.KouDaFBLc6WQAvbOsfXLoONyJ1GuXf.', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `berita_id` (`Berita_id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_secret` (`access_secret`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `google_id` (`google_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`berita_id`) REFERENCES `berita` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
