import 'package:flutter/material.dart';

class AnnouncementItem extends StatefulWidget {
  const AnnouncementItem({Key? key}) : super(key: key);

  @override
  State<AnnouncementItem> createState() => _AnnouncementItemState();
}

class _AnnouncementItemState extends State<AnnouncementItem> {
  var content = "";
  var datetime = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.2, color: Colors.grey),
        ),
      ),
      child: const ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: Text(
          "test",
          style: TextStyle(
              color: Color(0xff404040),
              fontWeight: FontWeight.w500,
              fontSize: 14),
        ),
        trailing: Text(
          "18 Mei 2022",
          style: TextStyle(
              color: Color(0xff404040),
              fontWeight: FontWeight.w500,
              fontSize: 14),
        ),
      ),
    );
  }
}
