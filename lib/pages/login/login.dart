import 'package:flutter/material.dart';
import 'package:maitri/pages/homeScreen/home.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Image.asset('assets/bmu.png'),
        title: const Padding(
          padding: EdgeInsets.only(left: 0.0),
          child: Text("BML MUNJAL UNIVERSITY"),
        ),
        backgroundColor: const Color.fromRGBO(50, 21, 107, 0.8),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/bmu2.jpeg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            width: double.infinity,
            color: const Color.fromRGBO(0, 0, 0, 0.58),
          ),
          const loginForm(),
        ],
      ),
    );
  }
}

// now the login form -->
class loginForm extends StatefulWidget {
  const loginForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<loginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(52, 255, 255, 255),
        body: SingleChildScrollView(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                height: 140,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(40),
                // padding: EdgeInsets.all(40),
                child: const Text(
                  "Welcome! Please login to continue",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 250,
                height: 62,
                child: TextField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.white, fontSize: 20,
                      fontWeight: FontWeight.bold, //<-- SEE HERE
                    ),
                    // hintText: 'Enter valid email id as abc@gmail.com'
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const SizedBox(
                width: 250,
                height: 57,
                child: TextField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: '*******',
                    labelStyle: TextStyle(
                      color: Colors.white, fontSize: 20,
                      fontWeight: FontWeight.bold, //<-- SEE HERE
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ));
                },
                height: 40.0,
                minWidth: 200.0,
                hoverColor: const Color.fromARGB(255, 216, 185, 243),
                color: const Color.fromARGB(228, 157, 136, 197),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white, fontSize: 17,
                    // fontWeight: FontWeight.bold, //<-- SEE HERE
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
