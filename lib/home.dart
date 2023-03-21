import 'package:flutter/material.dart';
import 'package:identity_detai_flutter/detailpage.dart';
import 'package:identity_detai_flutter/identity.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Main Page"),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              final dataId = listIdentity[index];
              return Card(
                  child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(
                      identitasTerima: dataId,
                    );
                  }));
                },
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.network(dataId.fotoUrls, width: 80, height: 80),
                      ],
                    ),
                    Text(dataId.name),
                  ],
                ),
              ));
            },
            itemCount: listIdentity.length,
          )),
    );
  }
}
