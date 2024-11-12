import 'package:flutter/material.dart';

class Pertemuan6 extends StatelessWidget {
  const Pertemuan6({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Pertemuan 6 Membuat ListView'),
            bottom: TabBar(tabs: [
              Tab(
                text: 'ListView',
              ),
              Tab(
                text: 'ListView.builder',
              ),
              Tab(
                text: 'ListView.separated',
              ),
            ]),
          ),
          body: TabBarView(children: [
            ContohListView(),
            ContohListViewBuilder(),
            ContohListViewSeparated(),
          ]),
        ));
  }
}

class ContohListView extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8];
  ContohListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: numberList.map((int number) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Center(
            child: Text(
              '$number',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class ContohListViewBuilder extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8];
  ContohListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 182, 150, 153),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      },
      itemCount: numberList.length,
    );
  }
}

class ContohListViewSeparated extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8];
  ContohListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 151, 108, 112),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          height: 10,
        );
      },
      itemCount: numberList.length,
    );
  }
}