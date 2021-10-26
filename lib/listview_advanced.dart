import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nhom2_hao/photo.dart';

class MyApp4 extends StatelessWidget {
  const MyApp4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewAdvanced(),
    );
  }
}


class ListViewAdvanced extends StatefulWidget {
  const ListViewAdvanced({Key? key}) : super(key: key);

  @override
  _ListViewAdvanced createState() => _ListViewAdvanced();
}

class _ListViewAdvanced extends State<ListViewAdvanced> {
  get itemBuilder => null;

  void initState() {
    super.initState();
    lsPhoto = Photo.fetchData();
  }

  late Future<List<Photo>> lsPhoto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Nâng cao"),
      ),
      body: FutureBuilder(
        future: lsPhoto,
        builder: (BuildContext context, AsyncSnapshot<List<Photo>> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (BuildContext context, int index) {
                Photo p = data[index];
                return ListTile(
                  leading: Image.network(p.thumbnailUrl),
                  title: Text(p.title),
                );
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
