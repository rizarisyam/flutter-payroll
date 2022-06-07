import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IncomeItem extends StatefulWidget {
  const IncomeItem({Key? key}) : super(key: key);

  @override
  State<IncomeItem> createState() => _IncomeItemState();
}

class _IncomeItemState extends State<IncomeItem> {
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Card(
          margin: const EdgeInsets.all(0),
          color: const Color(0XFF4684EB),
          child: SizedBox(
            height: 50,
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                FaIcon(FontAwesomeIcons.eye, size: 18, color: Color(0xffFFFFFF),),
                Text("View", style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffFFFFFF)
                ),)
              ],
            ),
          )
      ),
      title: const Text("Oktober 2021"),
      subtitle: const Text("Bulanan"),
      trailing: const Card(
        color: Color(0XFF1ED69E),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text("Paid", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500
          ),),
        ),
      ),
    );
  }
}
