import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int s = 0;
  TextEditingController controller = TextEditingController();
  List person = ['Ben', 'Jeck', 'Sara', 'Robert', 'Anna', 'Jane'];

  List<Widget> wid = [
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/one.jpg'),
      ),
      title: Text('Ben'),
      subtitle: Text('Hello how are you?'),
      trailing: Text('19:21'),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/two.jpg'),
      ),
      title: Text('Jeck'),
      subtitle: Text('What are you doing?'),
      trailing: Text('19:00'),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/three.jpg'),
      ),
      title: Text('Sara'),
      subtitle: Text('I am playing chess'),
      trailing: Text('19:01'),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/four.jpg'),
      ),
      title: Text('Robert'),
      subtitle: Text('Robert can you help me?'),
      trailing: Text('18:30'),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/five.jpg'),
      ),
      title: Text('Anna'),
      subtitle: Text('Nice to meet you '),
      trailing: Text('18:21'),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/siz.jpg'),
      ),
      title: Text('Jane'),
      subtitle: Text('Yes I speak Uzbek'),
      trailing: Text('18:00'),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/one.jpg'),
      ),
      title: Text('Ben'),
      subtitle: Text('Hello how are you?'),
      trailing: Text('19:21'),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/two.jpg'),
      ),
      title: Text('Jeck'),
      subtitle: Text('What are you doing?'),
      trailing: Text('19:00'),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/three.jpg'),
      ),
      title: Text('Sara'),
      subtitle: Text('I am playing chess'),
      trailing: Text('19:01'),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/four.jpg'),
      ),
      title: Text('Robert'),
      subtitle: Text('Robert can you help me?'),
      trailing: Text('18:30'),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/five.jpg'),
      ),
      title: Text('Anna'),
      subtitle: Text('Nice to meet you '),
      trailing: Text('18:21'),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/siz.jpg'),
      ),
      title: Text('Jane'),
      subtitle: Text('Yes I speak Uzbek'),
      trailing: Text('18:00'),
    ),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            onSubmitted: (value) {
              for (int i = 0; i < person.length; i++) {
                if (person[i].toLowerCase() == controller.text.toLowerCase()) {
                  setState(() {
                    s = i;
                  });
                  break;
                } else
                  setState(() {
                    s = -1;
                  });
                controller:
                controller;
              }
              s != -1
                  ? Container(
                      child: wid[s],
                    )
                  : Center(
                      child: Text('Not found chat'),
                    );
            },
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 19),
                )),
            TextButton(
              child: Text('Friends', style: TextStyle(fontSize: 19)),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Calls', style: TextStyle(fontSize: 19)),
              onPressed: () {},
            )
          ],
        ),
        Container(
            height: 630,
            width: 300,
            // color: Colors.red,
            child: ListView.builder(
              itemCount: wid.length,
              itemBuilder: (context, index) => wid[index],
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_outlined,
              size: 50,
              color: Colors.blue,
            ),
            Icon(
              Icons.person_add,
              color: Colors.blue,
              size: 50,
            ),
            Icon(
              Icons.settings,
              color: Colors.blue,
              size: 50,
            )
          ],
        )
      ]),
    );
  }
}
