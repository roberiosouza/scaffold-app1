import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeStatefull()));
}

class HomeStatefull extends StatefulWidget {
  const HomeStatefull({super.key});

  @override
  State<HomeStatefull> createState() => _HomeStatefullState();
}

class _HomeStatefullState extends State<HomeStatefull> {
  var _texto = "Curso de Flutter";

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: Text("App Scaffold"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Text(_texto),
              Padding(padding: EdgeInsets.only(top: 20)),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      _texto = "Texto alterado pelo statefull";
                    }
                );
              },
                  child: Text("Clique aqui")
              )
            ],
          ),
        )
      )
    );
  }
}

/***
 * Usando Stateless

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return (
        Scaffold(
          appBar: AppBar(
            title: Text("App Scaffold"),
            backgroundColor: Colors.red,
          ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: Text("Corpo do App"),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.red,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Ação 1"),
                  Text("Ação 2")
                ],
              ),
            ),
          ),
        )
    );

  }
}
 */
