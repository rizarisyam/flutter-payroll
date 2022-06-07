import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height * 0.45,
              width: double.infinity,
              color: Colors.grey[200],
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: size.height * 0.1,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 60),
                      height: 125,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff00b4db),
                            Color(0xff0083b0)
                          ]
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff00b4db),
                                          Color(0xff0083b0)
                                        ]
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 30,
                                        backgroundImage: NetworkImage(
                                            "https://ui-avatars.com/api/?name=John+Doe"),
                                      ),
                                      const SizedBox(width: 15),
                                      Wrap(
                                        direction: Axis.vertical,
                                        spacing: 5,
                                        children: const <Widget>[
                                          Text(
                                            "Dandi Sashue",
                                            style: TextStyle(
                                                fontSize: 24.0,
                                                color: Colors.white,
                                                letterSpacing: 2.0),
                                          ),
                                          Text(
                                            "Graphic Designer",
                                            style: TextStyle(
                                                fontSize: 16.0, color: Colors.white),
                                          ),
                                          Text(
                                            "IT",
                                            style: TextStyle(
                                                fontSize: 16.0, color: Colors.white),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: const [
                                          Text("test"),
                                          Text("test"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        children: const [
                                          Text("test"),
                                          Text("test"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    right: 15,
                    bottom: 0,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 10,
                              children: const <Widget>[
                                Text(
                                  "Email",
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.grey),
                                ),
                                Text(
                                  "Telepon",
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.grey),
                                ),
                                Text(
                                  "Perusahaan",
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.grey),
                                ),
                                Text(
                                  "Bergabung",
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.grey),
                                ),
                              ],
                            ),
                            Wrap(
                              direction: Axis.vertical,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              spacing: 10,
                              children: const <Widget>[
                                Text(
                                  "dandisashue@gmail.com",
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  "082217826412",
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  "TADS",
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  "18 January 2021",
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: ListView(
                      children: const <Widget>[
                        InkWell(
                          onTap: null,
                          child: Card(
                            color: Colors.white70,
                            child: ListTile(
                              leading: FaIcon(FontAwesomeIcons.userLarge),
                              title: Text(
                                "Data Pribadi",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 2),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: null,
                          child:  Card(
                            color: Colors.white70,
                            child: ListTile(
                              leading: FaIcon(FontAwesomeIcons.userLarge),
                              title: Text(
                                "Rekening & Pajak",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 2),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: null,
                          child:  Card(
                            color: Colors.white70,
                            child: ListTile(
                              leading: FaIcon(FontAwesomeIcons.user),
                              title: Text(
                                "File Karyawan",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    letterSpacing: 2),
                              ),
                            ),
                          ),
                        ),


                        Card(
                          color: Colors.white70,
                          child: ListTile(
                            leading:
                            FaIcon(FontAwesomeIcons.arrowRightFromBracket),
                            title: Text(
                              "Logout",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  letterSpacing: 2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                )
            ),
          ],
        ),
      ),
    );
  }
}
