import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id ='home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(

            title: const Text('Talk with'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),

                Tab(
                  child: Text('chats'),
                ),
                Tab(
                  child: Text('status'),
                ),
                Tab(
                  child: Text('call'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(width: 10,),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,) =>
                  const[
                    PopupMenuItem(
                        value: '1',
                        child: Text('new group')
                    ),
                    PopupMenuItem(
                        value: '2',
                        child: Text('setting')
                    ),
                    PopupMenuItem(
                        value: '3',
                        child: Text('logout')
                    ),
                  ]
              ),
              SizedBox(width: 18,)
            ],
          ),
          body: TabBarView(
              children: [
                Text('Camera'),
                ListView.builder(
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/4946515/pexels-photo-4946515.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                        ),
                        title: Text('Raj Aryan'),
                        subtitle: Text('when i get internship'),
                        trailing: Text('8.40 pm'),

                      );
                    }
                ),
            ListView.builder(
                itemBuilder: (context, index) {
                  if(index ==0){
                    return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                      child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('New update'),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.teal,
                                  width: 5,
                                )
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://images.pexels.com/photos/4946515/pexels-photo-4946515.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                            ),
                          ),
                          title: Text('john wick'),
                          subtitle: Text('35m ago'),


                        ),
                      ],
                  ),
                    );
                  }else{
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New update'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.teal,
                                    width: 5,
                                  )
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('https://images.pexels.com/photos/4946515/pexels-photo-4946515.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                              ),
                            ),
                            title: Text('john wick'),
                            subtitle: Text('35m ago'),


                          ),
                        ],
                      ),
                    );


                  }

                }
            ),
                ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(

                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.pexels.com/photos/4946515/pexels-photo-4946515.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                        ),
                        title: Text('john wick'),
                        subtitle: Text(index/2==0?'you missed call':'call time is 12.30'),
                        trailing: Icon(index /2==0? Icons.phone : Icons.video_call),

                      );
                    }
                ),
              ]
          ),
        )
    );
  }
}

