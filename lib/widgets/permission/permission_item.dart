import 'package:flutter/material.dart';

class PermissionItem extends StatelessWidget {
  const PermissionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/permission/show');
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text("26 Oktober 2021"),
                  Text("|"),
                  Text("Sakit")
                ],
              ),
              ElevatedButton(

                  onPressed: () {}, child: const Text("waiting")),

            ],
          ),
        ),
      ),
    );
  }
}
