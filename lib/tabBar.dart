import 'package:flutter/material.dart';

import 'gridView.dart';
import 'listPage.dart';

class MyTab extends StatelessWidget {
  const MyTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My tab bar"),
          actions:  [
            const Icon(Icons.search),
            const SizedBox(width: 20,),
            const Icon(Icons.camera_alt),
            const SizedBox(width: 10,),
            PopupMenuButton(itemBuilder: (context){
              return [
                const PopupMenuItem(child: Text('New group')),
                const PopupMenuItem(child: Text('New broadcast')),
                const PopupMenuItem(child: Text('settings')),
              ];
            })
          ],
          bottom: TabBar(
            labelPadding: EdgeInsets.zero,
            indicatorWeight: 2,
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width* .1,
                child: const Tab(icon: Icon(Icons.people)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width* .3,
                child: const Tab(text: "Chats"),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width* .3,
                  child: const Tab(text: "Status")),
              SizedBox(
                  width: MediaQuery.of(context).size.width* .3,
                  child: const Tab(text: "Call")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Center(
              child: Text("community"),
            ),
            const Center(
              child: Text("chat"),
            ),
            const ListPage(),
            GridVieww(),
          ],
        ),
      ),
    );
  }
}
