import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gmail/model/emailrepository.dart';
import 'package:intl/intl.dart';

class Gmail extends StatefulWidget {
  const Gmail({super.key});

  @override
  State<Gmail> createState() => _GmailState();
}

class _GmailState extends State<Gmail> {
  final email = Emailrepository.listemail;
  final cores = [
    Colors.blue,
    Colors.green[300],
    Colors.red,
    Colors.yellow,
    Colors.purple,
  ];
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height,
      child: ListView.builder(
        itemCount: email.length,
        itemBuilder: (context, index) {
          final dados = email[index];

          return Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.only(left: 8, bottom: 9),
                    child: CircleAvatar(
                      backgroundColor: cores[Random().nextInt(cores.length)],
                      maxRadius: 25,
                      child: Text(
                        dados.usuario[0],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dados.usuario,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          dados.assunto,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          dados.preview,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(DateFormat('d MMM').format(dados.data)),
                        SizedBox(height: 9),
                        switch (dados.favorito) {
                          false => Icon(Icons.star),
                          true => Icon(Icons.star_border),
                        },
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
