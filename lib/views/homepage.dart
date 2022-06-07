import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:payroll_app_v2/views/account.dart';
import 'package:payroll_app_v2/views/dashboard.dart';
import 'package:payroll_app_v2/views/wallet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final PageController _pageController = PageController();
  var _selectedIndex = 0;

  Future<void> _showComingSoonDialog() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color(0XFFffffff),
            actionsAlignment: MainAxisAlignment.center,
            alignment: Alignment.center,
            title: const Center(child: Text("Comming Soon", style: TextStyle(
              color: Color(0XFF4684EB)
            ),)),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Lottie.network("https://assets8.lottiefiles.com/packages/lf20_prtzp5wh.json", height: 200),
                        const SizedBox(height: 30),
                        const Text("Untuk fitur absen sedang"),
                        const Text("tahap pengembangan")
                      ],
                    ),
                  )

                ],
              ),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Close")
              )
            ],
          );
        }
    );
  }

  Future _modalBottomSheetMenu() {
    return showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        // backgroundColor: Colors.grey,
        builder: (builder) {
          return Container(
            height: 300,
            decoration: const BoxDecoration(
                color: Color(0XFFF8F9FA),
                // gradient: LinearGradient(colors: [
                //   Color.fromARGB(255, 54, 209, 220),
                //   Color.fromARGB(255, 91, 134, 229),
                // ]),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    focusColor: Colors.red,
                    onTap: () {
                      Navigator.of(context).pushNamed('/leaves');
                    },
                    child: ListTile(

                      leading: ElevatedButton(
                        onPressed: null,
                        child: const Icon(FontAwesomeIcons.planeDeparture, size: 14, color: Colors.black,),
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(15)
                        ),
                      ),
                      title: const Text("Cuti"),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed('/permission');
                    },
                    leading: ElevatedButton(
                      onPressed: null,
                      child: const Icon(FontAwesomeIcons.fileCircleCheck, size: 14,color: Colors.black),
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(15)
                      ),
                    ),
                    title: const Text("Izin"),
                  ),
                  ListTile(
                    leading: ElevatedButton(
                      onPressed: null,
                      child: const Icon(FontAwesomeIcons.moneyCheckDollar,size: 14,color: Colors.black),
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(15)
                      ),
                    ),
                    title: const Text("Kasbon"),
                  ),

                  ListTile(
                    onTap: () {
                      Navigator.of(context).pop();
                      _showComingSoonDialog();
                    },
                    leading: ElevatedButton(
                      onPressed: null,
                      child: const Icon(FontAwesomeIcons.personCircleExclamation,size: 14,color: Colors.black),
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(15)
                      ),
                    ),
                    title: const Text("Absen"),
                  )
                ],
              ),
            ),
          );
        });
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    if(selectedIndex == 1) {
      _modalBottomSheetMenu();
      return;
    }
    _pageController.jumpToPage(selectedIndex);
  }

  final List<Widget> _screens = [
    const DashboardPage(),
    BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return const Scaffold();
        }),
    const WalletPage(),
    const AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        backgroundColor: const Color(0XFFEAF4FF),
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.wallet),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              label: 'Home'
          ),
        ],
        selectedItemColor: const Color(0XFF00A6FB )
      ),
    );
  }
}
