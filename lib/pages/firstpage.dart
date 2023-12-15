import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _loginFormKey = GlobalKey<FormState>();
  bool passwordVisible = true;
  bool enableObscureText = true;
  bool showSuffixIcon = true;
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Akkarachai APP"),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _usernameCtrl,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "UserName",
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText:
                    enableObscureText == true ? passwordVisible : false,
                controller: _passwordCtrl,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  suffixIcon: showSuffixIcon
                      ? IconButton(
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        )
                      : null,
                ),
              ),
            ),
            loginButton(),
            Text(_usernameCtrl.text),
          ],
        ),
      ),
    );
  }

  Widget loginButton() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 205, 207, 56))),
            child: Text(
              'Login'.toUpperCase(),
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            onPressed: () {
              onSubmit();
            },
          ),
        ),
      ],
    );
  }

  void onSubmit() {
    // Implement your login logic here
  }
}
