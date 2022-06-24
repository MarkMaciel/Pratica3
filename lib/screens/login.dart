import 'package:flutter/material.dart';
export 'login.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('HUMMMMM', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.redAccent)),
        const Text('App Cultura adocicada', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.redAccent)),
        const Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.redAccent,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent, width: 1, style: BorderStyle.solid),
                ),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 1, style: BorderStyle.solid), borderRadius: BorderRadius.all(Radius.circular(15))),
                label: Text("Digite seu E-mail"),
                labelStyle: TextStyle(color: Colors.redAccent)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.redAccent,
                ),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 1.0, style: BorderStyle.solid)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.redAccent, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                label: Text("Digite sua Senha"),
                labelStyle: TextStyle(color: Colors.redAccent)),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ElevatedButton(
              onPressed: () => {
                Navigator.pushReplacementNamed(context, "/home")
              },
              child: Text('Entrar'),
              style: ElevatedButton.styleFrom(primary: Colors.redAccent, padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10), textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18), shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: OutlinedButton(
            child: const Text('Cadastre-se'),
            onPressed: () => {
              Navigator.pushNamed(context, "/cadastro")
            },
            style: OutlinedButton.styleFrom(primary: Colors.redAccent, backgroundColor: Colors.pink[50], shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))), side: const BorderSide(color: Colors.redAccent, width: 1, style: BorderStyle.solid)),
          ),
        ),
      ]),
    );
  }
}
