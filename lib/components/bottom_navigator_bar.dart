import 'package:flutter/material.dart';

class BottomNavigatorBar extends StatefulWidget {
  int selectedIndexPage;
  bool changeColor;
  BottomNavigatorBar(
      {super.key, required this.changeColor, required this.selectedIndexPage});

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      onEnd: () => setState(() {
        widget.changeColor = false;
      }),
      duration: const Duration(
        seconds: 1,
      ),
      height: 60,
      decoration: BoxDecoration(
          color: widget.changeColor ? Colors.green[900] : Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 9,
                color: Colors.black.withOpacity(.35),
                offset: const Offset(0, -6))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: (() => setState(() {
                  widget.selectedIndexPage = 0;
                  widget.changeColor = true;
                })),
            child: AnimatedContainer(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: widget.selectedIndexPage == 0
                      ? Colors.green[700]
                      : Colors.white,
                ),
                height: widget.selectedIndexPage == 0 ? 50 : 40,
                width: widget.selectedIndexPage == 0 ? 50 : 40,
                duration: const Duration(seconds: 1),
                child: Icon(
                  Icons.bolt,
                  size: widget.selectedIndexPage == 0 ? 35 : 25,
                  color: widget.selectedIndexPage == 0
                      ? Colors.white
                      : Colors.green[700],
                )),
          ),
          GestureDetector(
            onTap: (() => setState(() {
                  widget.selectedIndexPage = 1;
                  widget.changeColor = true;
                })),
            child: AnimatedContainer(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: widget.selectedIndexPage == 1
                      ? Colors.green[700]
                      : Colors.white,
                ),
                height: widget.selectedIndexPage == 1 ? 50 : 40,
                width: widget.selectedIndexPage == 1 ? 50 : 40,
                duration: const Duration(seconds: 1),
                child: Icon(
                  widget.selectedIndexPage == 1 ? Icons.add : Icons.home,
                  size: widget.selectedIndexPage == 1 ? 35 : 25,
                  color: widget.selectedIndexPage == 1
                      ? Colors.white
                      : Colors.green[700],
                )),
          ),
          GestureDetector(
            onTap: (() => setState(() {
                  widget.selectedIndexPage = 2;
                  widget.changeColor = true;
                })),
            child: AnimatedContainer(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: widget.selectedIndexPage == 2
                      ? Colors.green[700]
                      : Colors.white,
                ),
                height: widget.selectedIndexPage == 2 ? 50 : 40,
                width: widget.selectedIndexPage == 2 ? 50 : 40,
                duration: const Duration(seconds: 1),
                child: Icon(
                  Icons.attach_money,
                  size: widget.selectedIndexPage == 2 ? 35 : 25,
                  color: widget.selectedIndexPage == 2
                      ? Colors.white
                      : Colors.green[700],
                )),
          ),
        ],
      ),
    );
  }
}
