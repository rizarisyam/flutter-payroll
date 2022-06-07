import 'package:flutter/material.dart';

class LeaveDetailPage extends StatelessWidget {
  const LeaveDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detail Cuti"),
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0XFFF8F9FA)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "26 Oktober 2021",
                  style: TextStyle(color: Color(0XFF212529)),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Jenis Sakit", style: TextStyle(
                              color: Color(0XFF6C757D)
                          ),),
                          Text("Sakit")
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [Text("Persetujuan", style: TextStyle(
                              color: Color(0XFF6C757D)
                          ),), Text("Approved")],
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Alasan Izin", style: TextStyle(
                        color: Color(0XFF6C757D)
                    ),),
                    Text(
                        "Lorem ipsum dolor sit amet, adipiscing elit. Sed vestibulum, volutpat consec mattis suspendisse. Molestie eget nulla sollicitudin tempor.")
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Alasan Ditolak", style: TextStyle(
                        color: Color(0XFF6C757D)
                    ),),
                    Text(
                        "Lorem ipsum dolor sit amet, adipiscing elit. Sed vestibulum, volutpat consec mattis suspendisse. Molestie eget nulla sollicitudin tempor.")
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Wrap(
                        direction: Axis.vertical,
                        children: const [Text("Dari", style: TextStyle(
                            color: Color(0XFF6C757D)
                        ),), Text("27 Oktober 2021")],
                      ),
                    ),
                    Expanded(
                      child: Wrap(
                        direction: Axis.vertical,
                        children: const [
                          Text("Sampai", style: TextStyle(
                              color: Color(0XFF6C757D)
                          ),),
                          Text("27 Oktober 2021")
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [Text("Di Setujui Oleh", style: TextStyle(
                      color: Color(0XFF6C757D)
                  ),), Text("Sakti")],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          }, child: const Text("Kembali")),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
