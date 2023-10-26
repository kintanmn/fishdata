import 'package:flutter/material.dart';
import 'package:responsi/model/ikan.dart';
import 'package:responsi/ui/ikan_detail.dart';
import 'package:responsi/ui/ikan_form.dart';

class IkanPage extends StatefulWidget {
  const IkanPage({Key? key}) : super(key: key);

  @override
  _IkanPageState createState() => _IkanPageState();
  }

class _IkanPageState extends State<IkanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data Ikan'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              child: const Icon(Icons.add, size: 26.0),
              onTap: () async {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IkanForm()));
              },
            ))
        ],
      ),
       drawer: Drawer(
        child: ListView(
          children: [
            ListTile()
          ],
        ),
       ),
        body: ListView(
          children: [
            ItemIkan(
              ikan: Ikan(
                id: 1,
                namaIkan: 'Marlin',
                jenisIkan: 'Ikan tang biru pasifik',
                warnaIkan: 'Oren',
                habitat: 'Air Laut')),
            ItemIkan(
                ikan: Ikan(
                    id: 3,
                    namaIkan: 'Dori',
                    jenisIkan: 'Ikan tang biru pasifik',
                    warnaIkan: 'Biru',
                    habitat: 'Air Laut')),
              ],
            ));
    }
  }

class ItemIkan extends StatelessWidget {
  final Ikan ikan;

  const ItemIkan({Key? key, required this.ikan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IkanDetail(
              ikan: ikan,
          )));
      },
      child: Card(
        child: ListTile(
          title: Text(ikan.namaIkan!),
          subtitle: Text(ikan.jenisIkan!),
        ),
      ),
    );
  }
}
