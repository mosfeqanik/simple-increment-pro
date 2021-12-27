import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/another_page/another_page.dart';
import 'package:provider_practice/provider/data.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(providerData.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${providerData.value}',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 50,
              child: ElevatedButton(
                child:  Text('GO to Another page',),
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Anotherpage()),
                );},
                style: ElevatedButton.styleFrom(
                    textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          providerData.incrementCounter();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
