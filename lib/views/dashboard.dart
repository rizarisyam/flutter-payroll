import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app_v2/widgets/announcement/announcement_item.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: size.height * 0.3,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    end: Alignment.topRight,
                    colors: [Color(0xff00b4db), Color(0xff0083b0)]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://ui-avatars.com/api/?name=John+Doe"),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Riza Nurfat Risyam",
                                style: TextStyle(
                                    color: Color(0XFFF8F9FB),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Text(
                                "Full-Stack Developer",
                                style: TextStyle(
                                    color: Color(0XFFE1ECF7), fontSize: 13),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(FontAwesomeIcons.bell),
                            padding: const EdgeInsets.all(5),
                            color: const Color(0XFFF8F9FB),
                          ),
                          const Text(
                            "10",
                            style: TextStyle(
                                color: Color(0XFFE1ECF7),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0XFFDEE2E6),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            "Profil Perusahaan",
                            style: TextStyle(color: Color(0XFFF495057)),
                          ),
                          Text(
                            "TADS",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0XFF343A40)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Card(
                          color: const Color(0XFFF8FBFF),
                          margin: const EdgeInsets.only(left: 0, right: 5),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Kasbon",
                                  style: TextStyle(
                                      color: Color(0XFF212529),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 6),
                                Text("Rp.14.000.000",style: TextStyle(
                                  color: Color(0XFF6C757D),
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          color: const Color(0XFFF8FBFF),
                          margin: const EdgeInsets.only(right: 0, left: 5),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Cuti",
                                  style: TextStyle(
                                      color: Color(0XFF212529),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  "12 Hari",
                                  style: TextStyle(
                                    color: Color(0XFF6C757D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Expanded(
            child: Container(
                width: double.infinity,
                height: size.height * 0.35,
                decoration: const BoxDecoration(color: Color(0XFFE9ECEF)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Pengumuman",
                        style: TextStyle(
                            color: Color(0xFF4684EB),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(height: 15),
                      Expanded(
                        child: ListView(
                          children: const [
                            AnnouncementItem(),
                            AnnouncementItem(),
                            AnnouncementItem(),
                            AnnouncementItem(),
                            AnnouncementItem(),
                            AnnouncementItem(),
                            AnnouncementItem(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
