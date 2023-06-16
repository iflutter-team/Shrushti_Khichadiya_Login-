import 'package:flutter/material.dart';
import 'package:login/screens/homescreen/homescreen_api.dart';

import '../../model/model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ProductModel? productList;

  @override
  void initState() {
    getimageList();
    super.initState();
  }

  Future<void> getimageList() async {
    productList = await HomeScreenApi.getData();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeScreen'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        body: productList == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            // : ListView.builder(
            //     itemCount: productList!.length,
            //     itemBuilder: (context, index) {
            //       return ListTile(
            //         leading: CircleAvatar(
            //           backgroundImage: NetworkImage(productList![index].url),
            //         ),
            //       );
            //     },
            //   ),
            : GridView.builder(
                itemCount: productList!.products!.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 2)]),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(productList!
                                .products![index].images!.first
                                .toString()),
                          ),
                        ),
                        Text(
                          productList!.products![index].category.toString(),
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  );
                },
              ));
  }
}
