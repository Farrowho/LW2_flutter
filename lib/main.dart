import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'КубГАУ',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КубГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: false,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'image/amogus.jpg',
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              fit: BoxFit.cover,
            ),

            //after image block
            Container(
              margin: const EdgeInsets.fromLTRB(40, 30, 40, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'Общежитие №20',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\nКраснодар, ул. Калинина, 13',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ]),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text('27'),
                      ],
                    )
                  ]),
            ),

            //icon block
            Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(children: const <Widget>[
                      Icon(
                        Icons.call,
                        color: Colors.green,
                      ),
                      Text(
                        'ПОЗВОНИТЬ',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ]),
                    Column(children: const <Widget>[
                      Icon(
                        Icons.near_me,
                        color: Colors.green,
                      ),
                      Text(
                        'МАРШРУТ',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ]),
                    Column(children: const <Widget>[
                      Icon(
                        Icons.share,
                        color: Colors.green,
                      ),
                      Text(
                        'ПОДЕЛИТЬСЯ',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ]),
                  ]),
            ),

            //text block
            Container(
              margin: const EdgeInsets.fromLTRB(40, 30, 40, 30),
              child: Row(children: const [
                Flexible(
                  child: Text("Студенческий городок или так называемый "
                      "кампус Кубанского ГАУ состоит из "
                      "двадцати общежитий, в которых проживает более 8000 студентов, "
                      "что составляет 96% от всех нуждающихся. "
                      "Студенты первого курса обеспечены местами в общежитии полностью. "
                      "В соответствии с Положением о студенческих общежитиях университета, "
                      "при поселении между администрацией и студентами заключается договор найма жилого помещения. "
                      "Воспитательная работа в общежитиях направлена на улучшение быта, "
                      "соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. "
                      "Условия проживания в общежитиях университетского кампуса "
                      "полностью отвечают санитарным нормам и требованиям: наличие оборудованных "
                      "кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, "
                      "помещений для заседаний студенческихсоветов и наглядной агитации. "
                      "С целью улучшения условий быта студентов активно работает "
                      "система студенческого самоуправления - студенческие советы "
                      "организуют всю работу по самообслуживанию."),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
