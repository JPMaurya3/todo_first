import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  final List<List<Map<String, dynamic>>> _todoData = [
    [
      {
        'title': 'interiver at google',
        'isCompleted': true,
        'timeStamp': 'today 3:45 am'
      },
      {
        'title': 'pick up the kids',
        'isCompleted': true,
        'timeStamp': 'today 3:45 am'
      },
    ],
    [
      {
        'title': "Brain's' birthday party",
        'isCompleted': true,
        'timeStamp': 'today 3:45 am'
      },
      {
        'title': 'first project due and start second project',
        'isCompleted': false,
        'timeStamp': 'today 3:45 am'
      },
    ],
    [
      {
        'title': 'finish the first iteration',
        'isCompleted': true,
        'timeStamp': 'today 3:45 am'
      },
      {
        'title': 'Dinner at the partycity',
        'isCompleted': false,
        'timeStamp': 'today 3:45 am'
      },
      {
        'title': 'Bring laptop to the meeting',
        'isCompleted': true,
        'timeStamp': 'today 3:45 am'
      },
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ),
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xfff96060),
            elevation: 0,
            title: const Text(
              "TODO LIST",
              style: TextStyle(fontSize: 20),
            ),
            actions: const [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
              )
            ]),
        body: ListView.builder(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            itemCount: _todoData.length,
            itemBuilder: (_, index) => Card(
                  margin: const EdgeInsets.symmetric(vertical: 18),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 16),
                        height: 25,
                        color: Colors.greenAccent,
                        width: 5,
                      ),
                      Expanded(
                          child: ListView.builder(
                              padding: const EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                              ),
                              shrinkWrap: true,
                              itemCount: _todoData[index].length,
                              itemBuilder: (_, i) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        _todoData[index][i]['isCompleted'] =
                                            !_todoData[index][i]['isCompleted'];
                                      });
                                    },
                                    child: Padding(
                                      // padding: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(_todoData[index][i]['title']),
                                            _todoData[index][i]['isCompleted']
                                                ? const Icon(
                                                    Icons.check_circle,
                                                    size: 30.0,
                                                    color: Colors.blue,
                                                  )
                                                : const Icon(
                                                    Icons.circle_outlined,
                                                    size: 30.0,
                                                    color: Colors.blue,
                                                  ),
                                          ]),
                                    ),
                                  )))
                    ],
                  ),
                )));
  }
}
