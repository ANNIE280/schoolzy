import 'package:flutter/material.dart';
import 'package:schoolzy/class.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: Icon(Icons.calendar_today),
                                title: Text('View Courses'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.people),
                                title: Text('View Class groups'),
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
                            ]);
                      });
                },
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Kindergarten',
                    style: TextStyle(fontSize: 18),
                  ),
                )),
              )),
          SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Basic One',
                  style: TextStyle(fontSize: 18),
                ),
              ))),
          SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Basic Two',
                  style: TextStyle(fontSize: 18),
                ),
              ))),
          SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Basic Three',
                  style: TextStyle(fontSize: 18),
                ),
              ))),
          SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Basic Four',
                  style: TextStyle(fontSize: 18),
                ),
              ))),
          SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Basic Five',
                  style: TextStyle(fontSize: 18),
                ),
              ))),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ClassPage()));
            },
            child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Junior Secondary One',
                    style: TextStyle(fontSize: 18),
                  ),
                ))),
          ),
          SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Junior Secondary Two',
                  style: TextStyle(fontSize: 18),
                ),
              ))),
          SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Junior Secondary Three',
                  style: TextStyle(fontSize: 18),
                ),
              ))),
        ],
      ),
    );
  }
}
