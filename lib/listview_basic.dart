import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
class MyApp3 extends StatelessWidget {
  const MyApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewBasic(),
    );
  }
}
class ListViewBasic extends StatefulWidget {
  const ListViewBasic({Key? key}) : super(key: key);

  @override
  _ListViewBasicState createState() => _ListViewBasicState();
}

class _ListViewBasicState extends State<ListViewBasic> {
  var data=generateWordPairs().take(20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Basic - Lecture3"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext content, int index) {
              var wp = data.elementAt(index);
              return Card(
                elevation: 0,
                child: Padding (
                  padding: EdgeInsets.all(10),

                child: ListTile(
                  leading: CircleAvatar(
                      //backgroundImage: Icon(Icons.image),
                      backgroundColor: Colors.green,
                      child: Text("${index+1}", style: TextStyle(fontSize: 15),),
                      ),
                  trailing: Row(
                    mainAxisSize:  MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.favorite_border),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.call),
                      ),
                    ],
                  ) ,
                  title: Text(wp.asSnakeCase,style: TextStyle(color: Colors.red, fontSize: 20),),
                ),
                ),
              );
            })
    )
    );
  }
}
