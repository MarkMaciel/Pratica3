import 'package:flutter/material.dart';
export 'novaReceitaD.dart';

class NovaReceita extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Receita', style: TextStyle(color: Colors.redAccent)),
        backgroundColor: Colors.pink[50],
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () => {
                    Navigator.pop(context)
                  },
              child: const Text(
                'Adicionar',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text("Coloque uma nova Receita", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.redAccent)),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text("Aprender sobre aquilo que gosta, nunca é demais!", style: TextStyle(fontSize: 18, color: Colors.redAccent)),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              cursorColor: Colors.redAccent,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.cookie_outlined,
                    color: Colors.redAccent,
                  ),
                  label: Text("Receita de Doces"),
                  labelStyle: TextStyle(color: Colors.redAccent),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.redAccent)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 1, style: BorderStyle.solid))),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              cursorColor: Colors.redAccent,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.description_outlined,
                    color: Colors.redAccent,
                  ),
                  label: Text("Características da Receita"),
                  labelStyle: TextStyle(color: Colors.redAccent),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)), borderSide: BorderSide(color: Colors.redAccent)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 1, style: BorderStyle.solid))),
            ),
          ),
        ],
      ),
    );
  }
}
