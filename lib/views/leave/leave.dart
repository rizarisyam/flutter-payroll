//Cuti Screen

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app_v2/widgets/leave/leave_item.dart';

class LeavePage extends StatefulWidget {
  const LeavePage({Key? key}) : super(key: key);

  @override
  State<LeavePage> createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuti"),
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text("Oktober 2021", style: TextStyle(
                            fontSize: 16
                        ),),
                      ),
                      decoration: const BoxDecoration(
                        // color: Colors.red
                      ),
                    ),
                    const LeaveItem(),
                    const LeaveItem(),
                    const LeaveItem(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text("Oktober 2021", style: TextStyle(
                            fontSize: 16
                        ),),
                      ),
                      decoration: const BoxDecoration(
                        // color: Colors.red
                      ),
                    ),
                    const LeaveItem(),
                    const LeaveItem(),
                    const LeaveItem(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text("Oktober 2021", style: TextStyle(
                            fontSize: 16
                        ),),
                      ),
                      decoration: const BoxDecoration(
                        // color: Colors.red
                      ),
                    ),
                    const LeaveItem(),
                    const LeaveItem(),
                    const LeaveItem(),
                  ],
                ),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/leaves/create');
        },
        child: const Icon(FontAwesomeIcons.plus),
        tooltip: "Ajukan Izin",
      ),
    );
  }
}

