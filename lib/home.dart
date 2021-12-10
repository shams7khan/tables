import 'package:app3_table/table.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // var number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Tables"),
            
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1
            ),
            itemCount: 20,
            itemBuilder: (context,index){
              
              return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Tables(consNum: index + 1,)));
      },
      child: Container(
        color: Colors.indigo[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            
            Text("${index + 1}",
                style: TextStyle(color: Colors.white, fontSize: 50))
          ],
        ),
      ),
    );
            }
            ),
        
      ),
    );
  }

}