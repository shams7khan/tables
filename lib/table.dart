import 'package:flutter/material.dart';

class Tables extends StatefulWidget {
  int consNum = 0;
  Tables({Key? key, required this.consNum}) : super(key: key);

  @override
  _TablesState createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Table of ${widget.consNum} ")),
      ),
      body: SafeArea(
        child: Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - AppBar().preferredSize.height,
          child: Column(
              children: List.generate(10, (index) {
            return Expanded(
              child: Center(
                child: Text(
                    "${widget.consNum} * ${(index + 1)} = ${(widget.consNum * (index + 1))}",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        // wordSpacing: 25,
            
                      ),
                    ),
              ),
            );
          })),

          // color: Colors.amber,
        ),
        // child: GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
      ),
    );
  }
}
