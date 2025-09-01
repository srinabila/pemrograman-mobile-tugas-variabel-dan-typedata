import 'dart:io';

void main() {
  stdout.write("Masukkan nama karyawan: ");
  String? nama = stdin.readLineSync();

  stdout.write("Masukkan jumlah jam kerja dalam seminggu: ");
  int jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan upah per jam: ");
  double upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write("Status karyawan (true = tetap, false = kontrak): ");
  bool statusTetap = stdin.readLineSync()!.toLowerCase() == "true";

  double gajiKotor = jamKerja * upahPerJam;

  double persentasePajak = statusTetap ? 0.10 : 0.05;

  double pajak = gajiKotor * persentasePajak;

  double gajiBersih = gajiKotor - pajak;

  print("\n=== Data Gaji Karyawan ===");
  print("Nama Karyawan : $nama");
  print("Gaji Kotor    : Rp${gajiKotor.toStringAsFixed(2)}");
  print(
    "Pajak (${(persentasePajak * 100).toStringAsFixed(0)}%): Rp${pajak.toStringAsFixed(2)}",
  );
  print("Gaji Bersih   : Rp${gajiBersih.toStringAsFixed(2)}");
}
