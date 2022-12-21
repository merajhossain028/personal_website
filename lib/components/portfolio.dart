import 'package:flutter/material.dart';
import 'package:personal_website/components/about.dart';
import 'package:personal_website/components/education.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            print('education');
          },
          child: const Text('Education')),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {}, child: const Text('Projects')),
    ),
  ];

  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Md. Meraj Hossain'),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              children: const [
                About(),
                Education(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
