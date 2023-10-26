class Ikan {
  int? id;
  String? namaIkan;
  String? jenisIkan;
  String? warnaIkan;
  String? habitat;

  Ikan({this.id, this.namaIkan, this.jenisIkan, this.warnaIkan, this.habitat});

  factory Ikan.fromJson(Map<String, dynamic> obj) {
    return Ikan(
      id: obj['id'],
      namaIkan: obj['nama_ikan'],
      jenisIkan: obj['jenis_ikan'],
      warnaIkan: obj['warna_ikan'],
      habitat: obj['habitat']
    );
  }
}
