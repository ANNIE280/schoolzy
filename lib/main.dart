import 'package:flutter/material.dart';
import 'package:schoolzy/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Schoolzy',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final schNode = FocusNode();
  final userNode = FocusNode();
  final passwordNode = FocusNode();

  _nextFocus(FocusNode fNode) {
    FocusScope.of(context).requestFocus(fNode);
  }

  final formKey = GlobalKey<FormState>();
  final schController = TextEditingController();
  final userController = TextEditingController();
  final pssController = TextEditingController();

  @override
  void dispose() {
    schNode.dispose();
    userNode.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/logo.png'),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Empty';
                  }
                  return null;
                },
                controller: schController,
                focusNode: schNode,
                onFieldSubmitted: (String value) => _nextFocus(userNode),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    labelText: 'School Key',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(9))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Empty';
                  }
                  return null;
                },
                controller: userController,
                focusNode: userNode,
                onFieldSubmitted: (String val) {
                  _nextFocus(passwordNode);
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    labelText: 'Username',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(9))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: TextFormField(
                controller: pssController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Empty';
                  }
                  return null;
                },
                focusNode: passwordNode,
                onFieldSubmitted: (String value) => _nextFocus(onSubmit()),
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(9))),
              ),
            ),
            MaterialButton(
                color: Colors.blue,
                height: 50,
                minWidth: 100,
                onPressed: () {
                  onSubmit();
                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    ));
  }

  onSubmit() {
    if (!formKey.currentState!.validate()) {
      return null;
    } else {
      //navigator to next
      //Navigator.push(
      //    context, MaterialPageRoute(builder: (context) => Dashboard()));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Dashboard()));
    }
  }
}
