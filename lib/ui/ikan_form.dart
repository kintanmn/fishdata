import 'package:flutter/material.dart';
import 'package:responsi/model/ikan.dart';

class IkanForm extends StatefulWidget {
  Ikan? ikan;

  IkanForm({Key? key, this.ikan}) : super(key: key);

  @override
  _IkanFormState createState() => _IkanFormState();
  }

class _IkanFormState extends State<IkanForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  String judul = "TAMBAH DATA IKAN";
  String tombolSubmit = "SIMPAN";

  final _idTextboxController = TextEditingController();
  final _namaIkanTextboxController = TextEditingController();
  final _jenisIkanTextboxController = TextEditingController();
  final _warnaIkanTextboxController = TextEditingController();
  final _habitatTextboxController = TextEditingController();

  @override
  void initState() {
    super.initState();
    isUpdate();
  }

  isUpdate() {
    if (widget.ikan != null) {
      setState(() {
        judul = "UBAH DATA IKAN";
        tombolSubmit = "UBAH";
        _namaIkanTextboxController.text = widget.ikan!.namaIkan!;
        _jenisIkanTextboxController.text = widget.ikan!.jenisIkan!;
        _warnaIkanTextboxController.text = widget.ikan!.warnaIkan!;
        _habitatTextboxController.text = widget.ikan!.habitat!;});
    } else {
      judul = "TAMBAH DATA IKAN";
      tombolSubmit = "SIMPAN";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(judul)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _idTextField(),
                _namaIkanTextField(),
                _jenisIkanTextField(),
                _warnaIkanTextField(),
                _habitatTextField(),
                _buttonSubmit()
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Membuat Textbox Kode Ikan
  Widget _idTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "ID Ikan"),
      keyboardType: TextInputType.text,
      controller: _idTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "ID Ikan harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Textbox Nama Ikan
  Widget _namaIkanTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nama Ikan"),
      keyboardType: TextInputType.text,
      controller: _namaIkanTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Nama Ikan harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Textbox Jenis Ikan
  Widget _jenisIkanTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Jenis Ikan"),
      keyboardType: TextInputType.text,
      controller: _jenisIkanTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Jenis Ikan harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Textbox Warna Ikan
  Widget _warnaIkanTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Warna Ikan"),
      keyboardType: TextInputType.text,
      controller: _warnaIkanTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Warna Ikan harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Textbox Habitat
  Widget _habitatTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Habitat"),
      keyboardType: TextInputType.text,
      controller: _habitatTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Habitat harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Tombol Simpan/Ubah
  Widget _buttonSubmit() {
  return OutlinedButton(
  child: Text(tombolSubmit),
  onPressed: () {
  var validate = _formKey.currentState!.validate();
  });
  }
  }

