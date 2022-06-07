import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payroll_app_v2/widgets/wallet/income_item.dart';
import 'package:payroll_app_v2/widgets/wallet/locked_wallet.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = true;
  bool _authenticated = false;
  bool _currencyVisible = false;
  final passwordController = TextEditingController();

  void _toggleVisibleCurrency() {
    setState(() {
      _currencyVisible = !_currencyVisible;
    });
  }

  void _toggleVisiblePassword() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });

    debugPrint(_passwordVisible.toString());
  }

  void _submitPassword(BuildContext ctx) {
    debugPrint("input password");
    debugPrint(passwordController.text);
    setState(() {
      _authenticated = true;
    });
    Navigator.pop(ctx);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return SimpleDialog(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Masukkan Sandi"),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                controller: passwordController,
                                obscureText: _passwordVisible,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  suffixIcon: IconButton(
                                      onPressed: _toggleVisiblePassword,
                                      icon: FaIcon(_passwordVisible ? FontAwesomeIcons.lock : FontAwesomeIcons.lockOpen)),

                                  // border: OutlineInputBorder()
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () => _submitPassword(context),
                                  child: const Text("Masukkan Sandi"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.37,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.3,
                    width: double.infinity,
                    padding: const EdgeInsets.only(bottom: 30, top: 10),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          end: Alignment.topRight,
                          colors: [Color(0xff00b4db), Color(0xff0083b0)]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Gaji Karyawan",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Wrap(
                                      direction: Axis.vertical,
                                      spacing: 10,
                                      children: const [
                                        Text(
                                          "Jenis Penggajian",
                                          style: TextStyle(
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                        // SizedBox(height: 10),
                                        Text(
                                          "Bulanan",
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    // direction: Axis.vertical,
                                    runSpacing: 10,
                                    children: [
                                      const Text(
                                        "Gaji Pokok",
                                        style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                      TextFormField(
                                        readOnly: true,
                                        initialValue: "Rp.142.000.000",
                                        obscuringCharacter: '*',
                                        obscureText: _currencyVisible,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            isDense: true,
                                            contentPadding: EdgeInsets.zero
                                        ),
                                        style: const TextStyle(
                                            color: Colors.white
                                        ),
                                        onTap: () {
                                          setState(() {
                                            _currencyVisible = !_currencyVisible;
                                          });
                                        },
                                      )
                                    ],
                                  )
                                  // Text(
                                  //   "Rp.142.000.000",
                                  //   style: TextStyle(
                                  //       color: Color(0xffFFFFFF),
                                  //       fontSize: 14,
                                  //       fontWeight: FontWeight.bold),
                                  // )
                                ],
                              ))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Card(
                                  margin:
                                      const EdgeInsets.only(left: 0, right: 5),
                                  child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text("20"),
                                          SizedBox(height: 10),
                                          Text("Hadir")
                                        ],
                                      )),
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  margin:
                                      const EdgeInsets.only(left: 0, right: 5),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text("20"),
                                        SizedBox(height: 10),
                                        Text("Hari Kerja")
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  margin:
                                      const EdgeInsets.only(left: 0, right: 0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Rp.142.000.000",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        SizedBox(height: 10),
                                        Text("Gaji Bersih")
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 10,
                    right: 10,
                    child: SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: Card(
                        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                        child: Center(
                          child: ListTile(
                            leading: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.fileInvoice,
                                  color: Color(0xff4684EB),
                                  size: 30,
                                ),
                              ],
                            ),
                            title: const Text("PRATINJAU GAJI"),
                            subtitle: const Text("Pendapatan - Pengurangan"),
                            trailing: const FaIcon(
                              FontAwesomeIcons.chevronRight,
                              color: Color(0xff699BF7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _authenticated ?
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Riwayat Gaji",
                          style: TextStyle(
                              color: Color(0XFF444343),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                        child: ListView(
                      children: const [
                        IncomeItem(),
                        IncomeItem(),
                        IncomeItem(),
                        IncomeItem(),
                        IncomeItem(),
                      ],
                    )),
                  ],
                ),
              ),
            ) : const LockedWalletWidget()
          ],
        ),
      ),
    );
  }
}
