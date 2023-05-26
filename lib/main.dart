// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Uygulama Çercevesi',
      home: iskele(),
    );
  }
}

class iskele extends StatefulWidget {
  const iskele({super.key});

  @override
  State<iskele> createState() => _iskeleState();
}

class _iskeleState extends State<iskele> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blog Uygulaması"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi = "Blog'a Hoşgeldiniz";
  martGoster() {
    setState(() {
      blogYazisi = "Mart Yazısı";
    });
  }

  nisanGoster() {
    setState(() {
      blogYazisi = "Nisan yazısı";
    });
  }

  mayisGoster() {
    setState(() {
      blogYazisi = "Mayıs yazısı";
    });
  }

  haziranGoster() {
    setState(() {
      blogYazisi = "Haziran yazısı";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(blogYazisi),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: martGoster, child: const Text("Mart YAzısı")),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: nisanGoster, child: const Text("Nisan YAzısı")),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: mayisGoster, child: const Text("Mayıs YAzısı")),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: haziranGoster, child: const Text("Haziran YAzısı")),
          ],
        ),
      ),
    );
  }
}
