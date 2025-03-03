import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media/Option/option1.dart';
import 'package:social_media/Option/option2.dart';
import 'package:social_media/Option/option3.dart';


class Homepage extends StatefulWidget {

  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _fontsize = 20.0;
  Color _textColor = Colors.black;

  void _changeTextStyle(){
    setState(() {
      _fontsize = _fontsize == 20.0 ? 25.0 : 20.0;
      _textColor = _textColor == Colors.black ? Colors.white : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(188, 0, 0, 0),
        title: GestureDetector(
          onTap: _changeTextStyle,
          child: AnimatedDefaultTextStyle(
            duration: Duration(seconds: 1),
            style: TextStyle(
              fontSize: _fontsize,
              color: _textColor,
              fontWeight: FontWeight.bold,
            ),
            child: Text('whatsapp'),
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/Icons/three_dots.svg',
              height: 20,
              width: 20,
              ),
            onPressed: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(100.0,80.0,0.0,0.0),
                color: const Color.fromARGB(188, 0, 0, 0),
                items: [
                  PopupMenuItem(
                    value: 'option 1',
                    child: Text(
                      'coming soon',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                  ),
                  PopupMenuItem(
                    value: 'option 2',
                    child: Text(
                      'Setting',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 'option 3',
                    child: Text(
                      'Grup baru',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ],
              ).then((value){
                if (value != null){
                  if (value == 'option 1'){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Option1()),
                    ).then((_){
                      print('kembali ke option 1');
                    });
                  } else if (value == 'option 2'){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Option2()),
                    ).then((value){
                      print('kembali ke option 2');
                    });
                  } else if (value == 'option 3'){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Option3()),
                    ).then((value){
                      print('option 3');
                    });
                  }
                }
              });
            },
          ),
        ],
      ),
    );
  }
}