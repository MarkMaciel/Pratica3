import "package:flutter/material.dart";
export 'lista.dart';

class Lista extends StatelessWidget {
  Lista({Key? key}) : super(key: key);

  final List lista = List.generate(16, (index) {
    return {
      "id": index,
      "title": "*Receita do Doce*",
      "subtitle": "*Modo de preparo*",
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink[50],
        title: const Text('Receitas adocicadas', style: TextStyle(color: Colors.redAccent)),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app, color: Colors.red),
              onPressed: () => {
                    Navigator.pushReplacementNamed(context, "/")
                  }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.redAccent),
        backgroundColor: Colors.red[100],
        onPressed: () => {
          Navigator.pushNamed(context, "/novaReceitaD")
        },
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) => index < 15
                ? Card(
                    elevation: 6,
                    margin: EdgeInsets.all(8),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(lista[index + 1]['id'].toString(), style: TextStyle(color: Colors.pink[50])),
                        backgroundColor: Colors.redAccent,
                      ),
                      title: Text(lista[index]["title"]),
                      subtitle: Text(lista[index]["subtitle"]),
                      trailing: Icon(
                        Icons.cookie_outlined,
                        color: Colors.redAccent,
                      ),
                    ),
                  )
                : Card(
                    elevation: 6,
                    margin: EdgeInsets.all(16),
                    child: ListTile(
                      title: Text('Chegamos ao fim'),
                      subtitle: Text('Adicione mais receitas de doces!'),
                    ),
                  )),
      ),
    );
  }
}
