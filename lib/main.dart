import 'package:flutter/material.dart';
import 'package:chapter_4_demo/both_direction_page.dart';
import 'package:chapter_4_demo/drag_page.dart';
import 'package:chapter_4_demo/event_page.dart';
import 'package:chapter_4_demo/gesture_detector_page.dart';
import 'package:chapter_4_demo/gesture_recognizer_page.dart';
import 'package:chapter_4_demo/listener_page.dart';
import 'package:chapter_4_demo/pointer_event_ignore_page.dart';
import 'package:chapter_4_demo/scale_page.dart';
import 'package:chapter_4_demo/scroll_status_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter事件處理',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/Listener': (context) => ListenerPage(),
        '/PointerEvent': (context) => PointerEventIgnorePage(),
        '/GestureDetector': (context) => GestureDetectorPage(),
        '/Drag': (context) => DragPage(),
        '/Scale': (context) => ScalePage(),
        '/GestureRecognizer': (context) => GestureRecognizerPage(),
        '/BothDirection': (context) => BothDirectionPage(),
        '/NotificationListener': (context) => ScrollStatusPage()
      },
      home: FlutterEventPage(title: 'Flutter事件處理'),
    );
  }
}
