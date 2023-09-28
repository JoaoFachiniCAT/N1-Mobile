import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();

  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 48, 48, 48),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined, color: Colors.black54,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black54,), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black54,), label: ''),
          ]),
      drawer: Drawer(
      child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Seu Nome'),
          accountEmail: Text('seu.email@example.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/profile_picture.jpg'),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Página Inicial'),
          onTap: () {
            // Adicione aqui a ação que deseja realizar quando o item for selecionado.
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configurações'),
          onTap: () {
            // Adicione aqui a ação que deseja realizar quando o item for selecionado.
            Navigator.pop(context);
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Sair'),
          onTap: () {
            // Adicione aqui a ação que deseja realizar quando o item for selecionado.
            Navigator.pop(context);
          },
        ),
      ],
      ),
      ),


      backgroundColor: const Color.fromARGB(255, 48, 48, 48),
        body: SafeArea(
          child:Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                height: 250,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    color: const Color.fromARGB(255, 255, 192, 0)
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('Home',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 35,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                            child: Icon(Icons.notifications_none_outlined, color: Colors.black54,),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('Welcome back,',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Text('User',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text('What would you like to order today?',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        )
    );
  }}