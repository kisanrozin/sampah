import 'package:flutter/material.dart';

class SaldoRiwayatPage extends StatefulWidget {
  const SaldoRiwayatPage({super.key});

  @override
  State<SaldoRiwayatPage> createState() => _SaldoRiwayatPageState();
}

class _SaldoRiwayatPageState extends State<SaldoRiwayatPage> {
  final List<String> _riwayatTransaksi = []; // Placeholder untuk riwayat transaksi kosong
  final int _saldo = 0; // Placeholder saldo awal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Saldo & Riwayat Anda",
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: const Color(0xFF00BFA5),
      ),
      body: Column(
        children: [
          _buildSaldoSection(),
          const Divider(thickness: 2),
          _buildRiwayatSection(),
        ],
      ),
    );
  }

  // Bagian Saldo
  Widget _buildSaldoSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          leading: const Icon(Icons.account_balance_wallet, size: 40, color: Colors.green),
          title: const Text(
            "Saldo Anda :",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text(
            "Rp. $_saldo", // Menampilkan saldo
            style: const TextStyle(fontSize: 18, color: Colors.green),
          ),
          trailing: const Icon(Icons.account_circle, size: 40, color: Colors.orangeAccent),
        ),
      ),
    );
  }

  // Bagian Riwayat Transaksi
  Widget _buildRiwayatSection() {
    return Expanded(
      child: _riwayatTransaksi.isEmpty
          ? const Center(
              child: Text(
                "Riwayat transaksi kosong.",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            )
          : ListView.builder(
              itemCount: _riwayatTransaksi.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.history, color: Colors.blueAccent),
                  title: Text(_riwayatTransaksi[index]),
                );
              },
            ),
    );
  }
}
