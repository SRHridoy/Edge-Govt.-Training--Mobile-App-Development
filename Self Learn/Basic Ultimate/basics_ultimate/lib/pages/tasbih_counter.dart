// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TasbihCounter extends StatefulWidget {
  const TasbihCounter({super.key});

  @override
  State<TasbihCounter> createState() => _TasbihCounterState();
}

class _TasbihCounterState extends State<TasbihCounter> {
  //variable
  int _counter = 0;

  //method
  void _incrementCounter() {
    //setState() rebuilds the widget
    setState(() {
      _counter++;
      if (_counter == 33) _counter = 0;
    });
  }

  //UI

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          'Tasbih App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.av_timer,
          size: 40,
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(color: Colors.greenAccent[100],borderRadius: BorderRadius.circular(10),),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage('assets/tasbih_icon/tasbih.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Center(
          //     child: Text(
          //   'You said \nSubhan Allah (Arabic: سبحان الله),\nAl-hamdu lillah (Arabic: الحمد لله),\nAllahu Akbar (Arabic: الله أكبر ) \nthis many times : ',
          //   textAlign: TextAlign.center,
          // )),
          SizedBox(
            height: 50,
          ),
          Center(
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    children: [
                      TextSpan(
                        text: 'You said \n\n',
                      ),
                      TextSpan(
                        text: 'Subhan Allah ',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold), // Different color
                      ),
                      TextSpan(text: '(Arabic: سبحان الله),\n'),
                      TextSpan(
                        text: 'Al-hamdu lillah ',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 25,
                            fontWeight: FontWeight.bold), // Different color
                      ),
                      TextSpan(text: '(Arabic: الحمد لله),\n'),
                      TextSpan(
                        text: 'Allahu Akbar ',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 25,
                            fontWeight: FontWeight.bold), // Different color
                      ),
                      TextSpan(
                          text: '(Arabic: الله أكبر ) \nthis many times : '),
                    ])),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _counter.toString(),
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  _incrementCounter();
                 // AudioPlayer().play(AssetSource('assets/audios/tasbih_click.wav'));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.white,
                    minimumSize: Size(120, 120)),
                child: Icon(
                  Icons.add,
                  size: 50,
                )),
          ),
        ],
      ),
    );
  }
}
