import 'package:flutter/material.dart';
import 'package:schoolzy/list.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({Key? key}) : super(key: key);

  @override
  _ClassPageState createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Column(
          children: [
            InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: Icon(Icons.calendar_today),
                              title: Text('Take Attendance'),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ClassList()));
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.people),
                              title: Text('View Student List'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.add_chart),
                              title: Text('View Result'),
                              onTap: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        );
                      });
                },
                child: ListTile(
                  leading: Text(
                    'Basic One A',
                    style: TextStyle(fontSize: 18),
                  ),
                )),
            ListTile(
                leading: Text(
              'Basic One B',
              style: TextStyle(fontSize: 18),
            )),
          ],
        ));
  }
}
