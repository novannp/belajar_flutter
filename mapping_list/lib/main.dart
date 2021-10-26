import 'package:flutter/material.dart';

void main() {
  runApp(const MappingList());
}

class MappingList extends StatelessWidget {
  const MappingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapping List',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      'nama': 'Novan Noviansyah Pratama',
      'age': 19,
      'favColor': <String>['Red', 'Blue', 'Green', 'Grey'],
    },
    {
      'nama': 'Fachrul Ramdaniar Hidayatno',
      'age': 20,
      'favColor': <String>['Black', 'White', 'Green', 'Grey'],
    },
    {
      'nama': 'Novan Noviansyah Pratama',
      'age': 19,
      'favColor': <String>['Red', 'Blue', 'Green', 'Grey'],
    },
    {
      'nama': 'Fachrul Ramdaniar Hidayatno',
      'age': 20,
      'favColor': <String>['Black', 'White', 'Green', 'Grey'],
    },
    {
      'nama': 'Novan Noviansyah Pratama',
      'age': 19,
      'favColor': <String>['Red', 'Blue', 'Green', 'Grey'],
    },
    {
      'nama': 'Fachrul Ramdaniar Hidayatno',
      'age': 20,
      'favColor': <String>['Black', 'White', 'Green', 'Grey'],
    }
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('Mapping List'),
        ),
      ),
      body: ListView(
          children: myList.map((data) {
        List myFavColor = data['favColor'];
        return Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama\t: ${data['nama']}',
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Umur\t: ${data['age']}',
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: myFavColor.map((color) {
                    return Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        color,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        );
      }).toList()),
    );
  }
}
