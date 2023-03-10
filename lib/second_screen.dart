
import 'package:flutter/material.dart';
import 'package:untitled/kpi_res.dart';
import 'package:untitled/resdata.dart';

class SecondScreen extends StatefulWidget {

  final KPI? kpi;
  final String tittle;

  const SecondScreen({super.key, this.kpi, required this.tittle});



  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.tittle.toString()),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('totalTrade: ${ResponseData.kpi!.totalTrade.toString()}'),
          Text('tradeSteak: ${ResponseData.kpi!.tradeSteak.toString()}'),
          Text('contractSteak: ${ResponseData.kpi!.contractSteak.toString()}'),
          Text('projectCount: ${ResponseData.kpi!.projectCount.toString()}'),
          Text('totalContract: ${ResponseData.kpi!.totalContract.toString()}'),

        ],
      ),
    );
  }
}
