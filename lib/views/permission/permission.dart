import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app_v2/widgets/permission/permission_item.dart';


class PermissionPage extends StatelessWidget {
  const PermissionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // void _showModal() {
    //   showModalBottomSheet(
    //     isScrollControlled: true,
    //
    //       context: context,
    //       builder: (BuildContext context) {
    //         return const PermissionCreatePage();
    //       });
    // }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Izin"),
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
                   const PermissionItem(),
                   const PermissionItem(),
                   const PermissionItem(),
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
                    const PermissionItem(),
                    const PermissionItem(),
                    const PermissionItem(),
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
                    const PermissionItem(),
                    const PermissionItem(),
                    const PermissionItem(),
                  ],
                ),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/permission/create');
        },
        child: const Icon(FontAwesomeIcons.plus),
        tooltip: "Ajukan Izin",
      ),
    );
  }
}
