import 'package:flutter/material.dart';
import 'package:petukji_stock_utility/screens/performance_history.dart';
import 'package:petukji_stock_utility/screens/trade_lab.dart';
import 'package:petukji_stock_utility/screens/trade_lab_setup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> _pageTitles = [
    'Lab Setup',
    'Lab',
    'Performance',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _pageTitles.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Trade Lab",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: _pageTitles.map((title) => Tab(text: title)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          TradeLabSetup(),
          TradeLab(),
          PerformanceHistory(),
        ],
      ),
    );
  }
}
