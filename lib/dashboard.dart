import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:schoolzy/view.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(16.0),
              //height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ViewClass()));
                          },
                          child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '30,000',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('MONTHLY FEES',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('COLLECTED',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ])),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '12,750',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('MONTHLY',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text('EXPENSES',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ))
                                ])),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '927',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('NO OF',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text('STUDENTS',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ))
                                ])),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ViewClass()));
                          },
                          child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '42',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('NO OF',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text('TEACHERS',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ))
                                  ])),
                        ),
                      )),
                    ],
                  )
                ],
              )),
          Center(
            child: Text(
              'FEES COLLECTED FOR SEPTEMBER 2021',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 300,
            child: LineChart(
              LineChartData(
                  minX: 0,
                  minY: 0,
                  maxX: 10,
                  maxY: 10,
                  backgroundColor: Colors.white,
                  lineBarsData: [
                    LineChartBarData(
                        colors: [Colors.green], barWidth: 14, colorStops: [2])
                  ]),
              swapAnimationDuration: Duration(milliseconds: 150),
              swapAnimationCurve: Curves.linear,
            ),
          )
        ],
      ),
    );
  }
}
