import 'package:flutter/material.dart';
import 'package:uniru_proyek/pages/register.dart';
import './pages/register.dart';
import './pages/UiPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BackgroundScreen(),
    );
  }
}

class BackgroundScreen extends StatefulWidget {
  const BackgroundScreen({super.key});

  @override
  State<BackgroundScreen> createState() => _BackgroundScreenState();
}

class _BackgroundScreenState extends State<BackgroundScreen> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("UNIVERSAL GURU"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 42, 55, 72),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/HAI.png"),
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
          ),
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
                  label: Text("Username"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  //  prefix: Padding( //klo prefix bisa csotm dan di awal g mncl
                  //    padding: const EdgeInsets.all(20),
                  //    child: Icon(Icons.email),
                  prefixIcon: Icon(Icons.person_outline),
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
            SizedBox(height: 300),
            ElevatedButton(
              onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => UiPage(),));
              },
              child: Text("LOGIN"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 42, 55, 72),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
        
                  )),
            ),
         ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Register(),));
          },
            child:
                 
           
            RichText(
              
              text: TextSpan(
                text: "Belum Daftar? ",

                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                
                     
                children: [
                  
             
                  TextSpan(
                    
                    text: "Daftar disini",
                    style: TextStyle(
                      color: Color.fromARGB(255, 187, 139, 6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
         ),
          ],
        ),
      ),
    );
  }
}
