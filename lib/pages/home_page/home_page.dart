import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[800],
          title: const Text("Minhas Despesas")),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              // width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width - 20,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.green[700]!, width: 3),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                blurRadius: 5,
                                offset: const Offset(5, 5)),
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                blurRadius: 5,
                                offset: const Offset(-5, -5))
                          ],
                          color: Colors.white),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            costBar('S'),
                            costBar('T'),
                            costBar('Q'),
                            costBar('Q'),
                            costBar('S'),
                            costBar('S'),
                            costBar('D')
                          ]))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: ((context, index) {
                  return Container(
                    padding: const EdgeInsets.all(5),
                    margin:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 9),
                    height: 80,
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.green[700]!, width: 3),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.green.withOpacity(0.8),
                              blurRadius: 2,
                              offset: const Offset(2, 2)),
                          BoxShadow(
                              color: Colors.green.withOpacity(0.8),
                              blurRadius: 2,
                              offset: const Offset(-2, -2))
                        ],
                        color: Colors.green[900],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 35,
                          child: Container(
                            height: 26,
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    "R\$139,90",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        overflow: TextOverflow.clip),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: const [
                            Text(
                              "Presente para a bebê",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  overflow: TextOverflow.clip),
                            ),
                            SizedBox(height: 5),
                            Icon(
                              Icons.cake,
                              color: Colors.white,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "22/02/23",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                  overflow: TextOverflow.clip),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: (() {}),
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  );
                })),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.green[700],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.attach_money,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.attach_money, color: Colors.white)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.attach_money, color: Colors.white))
          ],
        ),
      ),
    );
  }

  Widget costBar(String weekday) {
    return Column(
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.green, width: 1)),
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.all(10),
            height: 120,
            width: 15,
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              height: Random().nextDouble() * 80,
              width: 13,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(weekday,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}
