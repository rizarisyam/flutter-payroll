
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:intl/intl.dart';

class PermissionCreatePage extends StatefulWidget {
  const PermissionCreatePage({Key? key}) : super(key: key);

  @override
  State<PermissionCreatePage> createState() => _PermissionCreatePageState();
}

class _PermissionCreatePageState extends State<PermissionCreatePage> {
  
  String dropdownvalue = "Item 1";
  File? image;
  DateTime? _dateTimeFrom;
  DateTime? _dateTimeTo;

  final TextEditingController _txtDateTimeFromController = TextEditingController();
  final TextEditingController _txtDateTime2FromController = TextEditingController();

  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    }on PlatformException catch (e) {
      if (kDebugMode) {
        print("Failed to pick image: $e");
      }
    }

  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajukan Izin"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Izin", style: TextStyle(
                        color: Colors.grey[600]
                      ),),
                      DropdownButtonFormField(
                          value: dropdownvalue,
                          items: items.map((String item) {
                            return DropdownMenuItem(
                              child: Text(item),
                              value: item,
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              dropdownvalue = value!;
                            });
                          })
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Upload Surat Sakit", style: TextStyle(
                          color: Colors.grey[600]
                      ),),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.purple),

                            ),
                            onPressed: () => pickImage(),
                            child: Row(
                              children: const [
                                Icon(FontAwesomeIcons.image),
                                SizedBox(width: 10),
                                Text('Pick Gallery')
                              ],
                            )
                        ),
                      ),
                      image != null ? Image.file(image!, width: 160,height: 160,fit: BoxFit.cover) : Container()
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alasan Izin", style: TextStyle(
                          color: Colors.grey[600]
                      ),),
                      TextFormField()
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Tanggal Izin", style: TextStyle(
                          color: Colors.grey[600]
                      ),),
                      TextFormField(
                        controller: _txtDateTimeFromController,
                        onTap: () {
                          showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2099)
                          ).then((date) {
                            setState(() {
                              _dateTimeFrom = date;
                            });
                            _txtDateTimeFromController.text = DateFormat.yMMMMd('en_US').format(_dateTimeFrom!);
                          });
                        },
                      ),

                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sampai", style: TextStyle(
                          color: Colors.grey[600]
                      ),),
                      TextFormField(
                        controller: _txtDateTime2FromController,
                        onTap: () {
                          showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2099)
                          ).then((date) {
                            setState(() {
                              _dateTimeTo = date;
                            });
                            _txtDateTime2FromController.text = DateFormat.yMMMMd('en_US').format(_dateTimeTo!);
                          });
                        },
                      ),

                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blue[900]
                                  )
                              ),
                              onPressed: (){},
                              child: const Text("Kirim")
                          ),),
                        ],
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){},
                        child: const Text("Batal",style: TextStyle(fontWeight: FontWeight.w400),),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
