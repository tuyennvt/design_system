import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // appBar: KvAppBarPage(
        //   onBackPressed: () {
        //     Navigator.pop(context);
        //   },
        //   title: 'Second Page',
        //   content: 'Second content page',
        //   contentIcon: Icon(
        //     Icons.dashboard,
        //     size: 16,
        //   ),
        //   actions: [
        //     KvCircleButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.dashboard,
        //         size: 20,
        //       ),
        //     ),
        //     KvCircleButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.dashboard,
        //         size: 20,
        //       ),
        //     ),
        //   ],
        // ),
        // appBar: AppBar(
        //   title: Text('Second Page'),
        // ),
        );
  }
}
