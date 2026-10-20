import 'package:flutter/material.dart';

class TransaksiPage extends StatelessWidget {
  const TransaksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Transaksi',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color(0xFF262626),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          // Baris Filter Dropdown
          Row(
            children: [
              Expanded(
                child: _buildFilterDropdown('Semua Status'),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: _buildFilterDropdown('Semua Kendaraan'),
              ),
            ],
          ),
          const SizedBox(height: 18),

          // Daftar Kartu Transaksi
          _buildTransactionCard(
            date: '28 Juli 2026',
            status: 'Selesai',
            isSuccess: true,
            vehicleModel: 'HONDA X1H02N32L1 A/T',
            plateNumber: 'BE 5405 KK',
            amount: 'Rp 291.685',
            taxYear: 'Pajak 2026',
          ),
          const SizedBox(height: 16),
          _buildTransactionCard(
            date: '28 Juli 2026',
            status: 'Gagal',
            isSuccess: false,
            vehicleModel: 'HONDA X1H02N32L1 A/T',
            plateNumber: 'BE 5405 KK',
            amount: 'Rp 269.185',
            taxYear: 'Pajak 2026',
          ),
          const SizedBox(height: 16),
          _buildTransactionCard(
            date: '17 Juli 2025',
            status: 'Selesai',
            isSuccess: true,
            vehicleModel: 'HONDA X1H02N32L1 A/T',
            plateNumber: 'BE 5405 KK',
            amount: 'Rp 294.010',
            taxYear: 'Pajak 2025',
          ),
        ],
      ),
    );
  }

  Widget _buildFilterDropdown(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFD1D5DB), width: 1.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              label,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14.5,
                color: Color(0xFF1F2937),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Color(0xFF1F2937),
            size: 22,
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionCard({
    required String date,
    required String status,
    required bool isSuccess,
    required String vehicleModel,
    required String plateNumber,
    required String amount,
    required String taxYear,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFF1F5F9)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF52525B),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: isSuccess
                      ? const Color(0xFFE6ECF4)
                      : const Color(0xFFF9EBEB),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: isSuccess
                        ? const Color(0xFF0A2E5C)
                        : const Color(0xFF993B3B),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(height: 1, color: Color(0xFFF1F5F9)),
          const SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vehicleModel,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    plateNumber,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF52525B),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    amount,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF111827),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    taxYear,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF52525B),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}