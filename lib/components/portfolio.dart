import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [
    ElevatedButton(onPressed: () {}, child: const Text('Education')),
    ElevatedButton(onPressed: () {}, child: const Text('Projects')),
  ];

  bool isMobile = false;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
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
      body: const Center(
        child: Text('My Portfolio Website'),
      ),
    );
  }
}
