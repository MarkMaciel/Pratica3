import "package:flutter/material.dart";
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink[50],
        title: const Text('Novo Cadastro', style: TextStyle(color: Colors.redAccent)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.redAccent),
              cursorColor: Colors.redAccent,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.redAccent,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Email"),
                  labelStyle: TextStyle(color: Colors.redAccent)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.redAccent),
              cursorColor: Colors.redAccent,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(prefixIcon: Icon(Icons.phone, color: Colors.redAccent), enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)), focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyanAccent, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))), label: Text("Telefone"), labelStyle: TextStyle(color: Colors.redAccent)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.redAccent),
              cursorColor: Colors.redAccent,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.redAccent,
                  ),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Senha"),
                  labelStyle: TextStyle(color: Colors.redAccent)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              style: TextStyle(color: Colors.redAccent),
              cursorColor: Colors.redAccent,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.redAccent,
                  ),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 1), borderRadius: BorderRadius.all(Radius.circular(15))),
                  label: Text("Repita a Senha"),
                  labelStyle: TextStyle(color: Colors.redAccent)),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.pop(context)
                },
                child: Text('CADASTRAR', style: TextStyle(color: Colors.redAccent)),
                style: ElevatedButton.styleFrom(primary: Colors.red[100], padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10), textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18), shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))),
              )),
        ],
      ),
    );
  }
}
