import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Whatsapp'),
            centerTitle: false,
            bottom: const TabBar(tabs: [
              Icon(Icons.camera_alt),
              Text('Chats'),
              Text('Status'),
              Text('Calls'),
            ]),
            actions: [
              const Icon(Icons.search),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        const PopupMenuItem(
                          value: '1',
                          child: Text('New Group'),
                        ),
                        const PopupMenuItem(
                          value: '2',
                          child: Text('Settings'),
                        ),
                        const PopupMenuItem(
                          value: '3',
                          child: Text('Logout'),
                        ),
                      ]),
            ],
          ),
          body: TabBarView(children: [
            Text('camera'),
            ListView.builder(
              itemCount: 15,
              itemBuilder: ( context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  title: Text('Talha iqbal'),
                  subtitle: Text('Where is Talha iqbal?'),
                  trailing: Text('12:53'),
                ) ;
              },
            ),
             ListView.builder(
              itemCount: 15,
              itemBuilder: ( context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color:Colors.green,
                         width: 3,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=600'),

                    ),
                  ),
                  title: Text('Talha iqbal'),
                  subtitle: Text('30 min ago'),
                );
              },
            ),
             ListView.builder(
              itemCount: 15,
              itemBuilder: ( context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
                  ),
                  title: Text('Talha iqbal'),
                  subtitle: Text('Missed audio call!'),
                  trailing: Icon(Icons.phone)
                ) ;
              },
            ),
             
          ]),
        ));
  }
}
