import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {

  final String inpuTex;
  const MyTab({Key? key, required this.inpuTex}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Text(inpuTex, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 16),),
    );
  }
}
