<<<<<<< HEAD
import 'package:flutter/material.dart';

void main() {
  runApp(const Register());
}

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 254, 187, 0),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(30),
      //     child: TextField(
      //       autocorrect: true, //true agar otomatis terkoreksi

      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 42, 55, 72),
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
                autocorrect: false,
                obscureText: isHidden,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  label: Text("nama"),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  //  prefix: Padding( //klo prefix bisa csotm dan di awal g mncl
                  //    padding: const EdgeInsets.all(20),
                  //    child: Icon(Icons.email),
                  prefixIcon: Icon(Icons.person_sharp),
                )),
            SizedBox(
              height: 20,
            ),
            TextField(
                autocorrect: false,
                obscureText: isHidden,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  label: Text("Username"),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  //  prefix: Padding( //klo prefix bisa csotm dan di awal g mncl
                  //    padding: const EdgeInsets.all(20),
                  //    child: Icon(Icons.email),
                  prefixIcon: Icon(Icons.person_sharp),
                )),
            SizedBox(
              height: 20,
            ),
            TextField(
                autocorrect: false,
                obscureText: isHidden,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  label: Text("NO HP"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  //  prefix: Padding( //klo prefix bisa csotm dan di awal g mncl
                  //    padding: const EdgeInsets.all(20),
                  //    child: Icon(Icons.email),
                  prefixIcon: Icon(Icons.call_end_sharp),
                )),
            SizedBox(height: 20),
            TextField(
                autocorrect: false,
                obscureText: isHidden,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  label: Text("Email"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  //  prefix: Padding( //klo prefix bisa csotm dan di awal g mncl
                  //    padding: const EdgeInsets.all(20),
                  //    child: Icon(Icons.email),
                  prefixIcon: Icon(Icons.email),
                )),
            SizedBox(
              height: 20,
            ),
            TextField(
              autocorrect: false,
              obscureText: isHidden, //obs untuk agar titiktitik
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                label: Text("Password"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                prefixIcon: Icon(Icons.vpn_key_outlined),
                suffixIcon: IconButton(
                    onPressed: () {
                      if (isHidden == true) {
                        isHidden = false;
                      } else {
                        isHidden = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.remove_red_eye_outlined)),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                print("LOGIN DENGAN : EMIAL() & PASS()");
              },
              child: Text("REGISTER"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 254, 187, 0),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 254, 187, 0),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(30),
      //     child: TextField(
      //       autocorrect: true, //true agar otomatis terkoreksi

      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 42, 55, 72),
        ),
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
                autocorrect: false,
                obscureText: isHidden,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  label: Text("nama"),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  //  prefix: Padding( //klo prefix bisa csotm dan di awal g mncl
                  //    padding: const EdgeInsets.all(20),
                  //    child: Icon(Icons.email),
                  prefixIcon: Icon(Icons.person_sharp),
                )),
            SizedBox(
              height: 20,
            ),
            TextField(
                autocorrect: false,
                obscureText: isHidden,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  label: Text("Username"),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  //  prefix: Padding( //klo prefix bisa csotm dan di awal g mncl
                  //    padding: const EdgeInsets.all(20),
                  //    child: Icon(Icons.email),
                  prefixIcon: Icon(Icons.person_sharp),
                )),
            SizedBox(
              height: 20,
            ),
            TextField(
                autocorrect: false,
                obscureText: isHidden,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  label: Text("NO HP"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  //  prefix: Padding( //klo prefix bisa csotm dan di awal g mncl
                  //    padding: const EdgeInsets.all(20),
                  //    child: Icon(Icons.email),
                  prefixIcon: Icon(Icons.call_end_sharp),
                )),
            SizedBox(height: 20),
            TextField(
                autocorrect: false,
                obscureText: isHidden,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  label: Text("Email"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  //  prefix: Padding( //klo prefix bisa csotm dan di awal g mncl
                  //    padding: const EdgeInsets.all(20),
                  //    child: Icon(Icons.email),
                  prefixIcon: Icon(Icons.email),
                )),
            SizedBox(
              height: 20,
            ),
            TextField(
              autocorrect: false,
              obscureText: isHidden, //obs untuk agar titiktitik
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                label: Text("Password"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                prefixIcon: Icon(Icons.vpn_key_outlined),
                suffixIcon: IconButton(
                    onPressed: () {
                      if (isHidden == true) {
                        isHidden = false;
                      } else {
                        isHidden = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.remove_red_eye_outlined)),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                print("LOGIN DENGAN : EMIAL() & PASS()");
              },
              child: Text("REGISTER"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 254, 187, 0),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
>>>>>>> ed93a8ce3303af1b829b218ce3321d47581744a9
