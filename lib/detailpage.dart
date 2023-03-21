import 'package:flutter/material.dart';
import 'package:identity_detai_flutter/identity.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final Identity identitasTerima;
  const DetailPage({Key? key, required this.identitasTerima}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Detail Page"),
          ),
          body: Center(
            child: Column(
              children: [
                Text("Ini Detail Page ${widget.identitasTerima.name}"),
                Text(widget.identitasTerima.username),
                Image.network(widget.identitasTerima.fotoUrls),
                Text("Email : "),
                Text(widget.identitasTerima.email[0]),
                Text(widget.identitasTerima.email[1]),
                Text("Company : "),
                Text(widget.identitasTerima.company[0][0]),
                Text(widget.identitasTerima.company[0][1]),
                Text(widget.identitasTerima.company[1][0]),
                Text(widget.identitasTerima.company[1][1]),
                // OutlinedButton(
                //   child: Text('Kembali'),
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                // ),
                // ElevatedButton(
                //   child: Text('Pindah Screen tanpa Stack'),
                //   onPressed: () {
                //     Navigator.pushReplacement(context,
                //         MaterialPageRoute(builder: (context) {
                //       return HomePage();
                //     }));
                //   },
                // ),
              ],
            ),
          )),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
