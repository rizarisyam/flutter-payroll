import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LockedWalletWidget extends StatelessWidget {
  const LockedWalletWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.network(
               "https://assets2.lottiefiles.com/packages/lf20_hvzjb7o5.json",
            width: 250,
            height: 250
          ),
          const Text("Coba buka ini nanti", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
          const SizedBox(height: 5),
          Text("Slip gaji ini masih dikunci oleh Admin Kantor Anda", style: TextStyle(
            color: Colors.grey[700]
          ),)
        ],
      ),
    );
  }
}
