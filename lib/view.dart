import 'package:flutter/material.dart';
import 'package:schoolzy/admin.dart';

class ViewClass extends StatefulWidget {
  const ViewClass({Key? key}) : super(key: key);

  @override
  _ViewClassState createState() => _ViewClassState();
}

class _ViewClassState extends State<ViewClass> {
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
                                Navigator.pop(context);
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
                child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Junior Secondary School One A',
                        style: TextStyle(fontSize: 18),
                      ),
                    )))),
            SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AdminPage()));
                  },
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Senior Secondary School Three B',
                      style: TextStyle(fontSize: 18),
                    ),
                  )),
                )),
          ],
        ));
  }
}
