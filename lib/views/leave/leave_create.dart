import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LeaveCreatePage extends StatefulWidget {
  const LeaveCreatePage({Key? key}) : super(key: key);

  @override
  State<LeaveCreatePage> createState() => _LeaveCreatePageState();
}

class _LeaveCreatePageState extends State<LeaveCreatePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _dropdownValue = "Cuti Tahunan";
  DateTime? _dateTimeFrom;
  DateTime? _dateTimeTo;

  final TextEditingController _txtDateTimeFromController = TextEditingController();
  final TextEditingController _txtDateTime2FromController = TextEditingController();

  final List<String> _leaves = [
    "Cuti Tahunan",
    "Cuti Sakit",
    "Cuti Bersalin/Melahirkan",
    "Cuti Besar",
    "Cuti karena alasan penting"
  ];

  void dropdownCallback(String? selectedValue) {
    setState(() {
      _dropdownValue = selectedValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajukan Cuti"),
      ),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "test",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        DropdownButtonFormField(
                            hint: const Text("please select"),
                            value: _dropdownValue,
                            items: _leaves.map((String item) {
                              return DropdownMenuItem(
                                  child: Text(item),
                                  value: item
                              );
                            }).toList(),
                            onChanged: dropdownCallback)
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
                        Text("Tanggal Izin", style: TextStyle(
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
              ))
        ],
      ),
    );
  }
}
