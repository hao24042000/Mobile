import 'package:flutter/material.dart';
import 'package:nhom2_hao/Products1.dart';

class MyApp7 extends StatelessWidget {
  const MyApp7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListProduct(),
    );
  }
}
class ListProduct extends StatefulWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  _ListProductState createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  get itemBuilder => null;

  void initState() {
    super.initState();
    lsProduct = Products1.fetchData();
  }

  late Future<List<Products1>> lsProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: FutureBuilder(
        future: lsProduct,
        builder: (BuildContext context, AsyncSnapshot<List<Products1>> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (BuildContext context, int index) {
                Products1 p = data[index];
                return Row(
                  children: [

                  ],
                );
                return ListTile(
                  leading: Image.network(p.image, width: 100, height: 100,),
                  title: Text(p.title),
                  subtitle: Text(p.description, maxLines: 2),
                  trailing: Icon(Icons.add_shopping_cart, size:35,color: Colors.green,),
                  onTap: () {

                  },
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

