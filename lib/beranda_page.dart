import 'package:flutter/material.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Tombol Chat
      floatingActionButton: Container(
        width: 58,
        height: 58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 8, 28, 65),
              Color(0xFF0A58CA),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF0A4DA2).withValues(alpha: 0.35),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(22),
            onTap: () {},
            child: const Center(
              child: Icon(
                Icons.chat_bubble_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 40),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          'assets/images/header.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SafeArea(
                        bottom: false,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18, 30, 18, 56),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Selamat Datang',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF5A6B82),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'FIKI SULISTIAWAN',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xFF072A5E),
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 0.3,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDCE6F2),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xFFC4D4E8),
                                    width: 1,
                                  ),
                                ),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.notifications_none_rounded,
                                    color: Color(0xFF1F2937),
                                    size: 24,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Saldo Signal
                Positioned(
                  left: 18,
                  right: 18,
                  bottom: 0,
                  child: Container(
                    height: 68,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: const Color(0xFFE5E7EB),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        // Ikon Dompet Biru
                        Container(
                          width: 24,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF7CA7E8),
                                Color(0xFF1E56A0),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 4),
                          child: Container(
                            width: 4,
                            height: 4,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Text(
                            'Saldo Signal',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1F2937),
                            ),
                          ),
                        ),
                        Container(
                          width: 1.5,
                          height: 34,
                          color: const Color(0xFF1E3A8A),
                        ),
                        const SizedBox(width: 28),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F6F9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'Segera',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1F2937),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 28),

            // Menu Utama
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildFeatureMenuItem(
                    icon: Icons.two_wheeler_rounded,
                    badgeText: '%',
                    label: 'Pajak\nKendaraan\nTerdaftar',
                  ),
                  _buildFeatureMenuItem(
                    icon: Icons.directions_car_filled_rounded,
                    badgeIcon: Icons.check_circle,
                    label: 'Cek\nRanmor',
                  ),
                  _buildFeatureMenuItem(
                    icon: Icons.description_rounded,
                    badgeText: '%',
                    label: 'Cek\nPajak',
                  ),
                  _buildFeatureMenuItem(
                    icon: Icons.credit_card_rounded,
                    accentYellow: true,
                    label: 'Lapor\nJual',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Banner Cek Pajak Kendaraan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFECF3FC),
                      Color(0xFFF7F8FC),
                      Color(0xFFFDF5E6),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Cek Pajak Kendaraan',
                      style: TextStyle(
                        fontSize: 15.5,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF072A5E),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0A4DA2),
                        foregroundColor: Colors.white,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 26,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Cek',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 26),

            // E-Dokumen
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'E-Dokumen',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Expanded(
                    child: _buildEDokumenCard(
                      title: 'E-TBPKP',
                      subtitle: 'STNK Digital\nKendaraan',
                      imagePath: 'assets/images/etbpkp.png',
                      gradientColors: const [
                        Color(0xFF7CB0ED),
                        Color(0xFFFDFBF7),
                        Color(0xFFF6D27A),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _buildEDokumenCard(
                      title: 'E-Pengesahan',
                      subtitle: 'Bukti\nPengesahan',
                      imagePath: 'assets/images/epengesahan.png',
                      gradientColors: const [
                        Color(0xFFB3B6BE),
                        Color(0xFFFDFCF8),
                        Color(0xFFF5D27B),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: _buildEDokumenCard(
                      title: 'E-KD',
                      subtitle: 'Asuransi\nJasa Raharja',
                      imagePath: 'assets/images/ekd.png',
                      gradientColors: const [
                        Color(0xFF73B6EE),
                        Color(0xFFF7FBFE),
                        Color(0xFFCDECFB),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 26),

            // Fitur Lainnya 
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'Pilihan Fitur Lainnya',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF111827),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 28),
              child: Column(
                children: [
                  _buildFiturLainnyaImage(
                    imagePath: 'assets/images/fitur1.png',
                    showIndicator: true,
                  ),
                  const SizedBox(height: 16),
                  _buildFiturLainnyaImage(
                    imagePath: 'assets/images/fitur2.jpeg',
                    showIndicator: true,
                  ),
                  const SizedBox(height: 16),
                  _buildFiturLainnyaImage(
                    imagePath: 'assets/images/fitur3.jpeg',
                    showIndicator: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureMenuItem({
    required IconData icon,
    required String label,
    String? badgeText,
    IconData? badgeIcon,
    bool accentYellow = false,
  }) {
    return SizedBox(
      width: 78,
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0xFFD6E4F7),
                width: 1.2,
              ),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFCCE0FA),
                  Color(0xFFEAF2FC),
                  Color(0xFFFDF6E4),
                ],
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  icon,
                  size: 34,
                  color: const Color(0xFF0A4DA2),
                ),
                if (badgeText != null)
                  Positioned(
                    bottom: 18,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      color: const Color(0xFF0A4DA2),
                      child: Text(
                        badgeText,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFACC15),
                        ),
                      ),
                    ),
                  ),
                if (badgeIcon != null)
                  Positioned(
                    top: 14,
                    left: 14,
                    child: Icon(
                      badgeIcon,
                      size: 15,
                      color: const Color(0xFF0A4DA2),
                    ),
                  ),
                if (accentYellow)
                  Positioned(
                    right: 14,
                    child: Container(
                      width: 14,
                      height: 11,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF59E0B),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13,
              height: 1.35,
              color: Color(0xFF1F2937),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEDokumenCard({
    required String title,
    required String subtitle,
    required String imagePath,
    required List<Color> gradientColors,
  }) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFF1F5F9), width: 1.2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 54,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: gradientColors,
              ),
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                height: 38,
                width: 38,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.image_outlined,
                    color: Color(0xFF0A4DA2),
                    size: 26,
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 14),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 13.5,
              fontWeight: FontWeight.w700,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              height: 1.4,
              color: Color(0xFF9CA3AF),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFiturLainnyaImage({
    required String imagePath,
    required bool showIndicator,
  }) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            imagePath,
            width: double.infinity,
            height: 155,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: double.infinity,
                height: 155,
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF6FF),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xFFDBEAFE)),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.image_outlined,
                      color: Color(0xFF2563EB),
                      size: 36,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      imagePath,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64748B),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        if (showIndicator) ...[
          const SizedBox(height: 6),
          Container(
            width: 24,
            height: 5,
            decoration: BoxDecoration(
              color: const Color(0xFF2563EB),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ],
    );
  }
}