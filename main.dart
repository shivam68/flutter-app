import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DOckerBus',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes: {
        // When navigating to the "home" route, build the Myhomepage widget.
        'home': (context) => MyHomePage(title: 'DockerGo'),
        // When navigating to the "first" route, build the FirstScreen widget.
        '/first': (context) => FirstScreen(),
        // When navigating to the "second" route, build the SecondtScreen widget.
        '/second': (context) => SecondScreen(),
        // When navigating to the "third" route, build the ThirdScreen widget.
        '/third': (context) => ThirdScreen(),
        // When navigating to the "fourth" route, build the FourthScreen widget.
        '/fourth': (context) => FourthScreen(),
        // When navigating to the "fifth" route, build the FifthScreen widget.
        '/fifth': (context) => FifthScreen(),
        // When navigating to the "sixth" route, build the SixthScreen widget.
        '/sixth': (context) => SixthScreen(),
        // When navigating to the "seventh" route, build the SeventhScreen widget.
        '/seventh': (context) => SeventhScreen(),
        // When navigating to the "/profile" route, build the ProfileUI widget.
        //'/profile': (context) => ProfileUI(),
      },
      home: MyHomePage(title: 'DockerGo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //var widhtsize = MediaQuery.of(context).size.width;

    var widhtsize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.home_rounded),
          tooltip: 'Open Server',
          onPressed: () {
            // handle the press
            Navigator.pushNamed(context, "/profile");
          },
        ),
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // First three Buttons ////////////////////////////////////////////
            Container(
              height: 150,
              width: widhtsize,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        height: 140.0,
                        minWidth: widhtsize * .30,
                        //color: Theme.of(context).primaryColor,
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        child: new Text("Images"),
                        onPressed: () => {
                          Navigator.pushNamed(context, "/first"),
                          print("Something clciked First!!")
                        },
                        splashColor: Colors.redAccent,
                        hoverColor: Colors.deepPurple,
                      ),
                      MaterialButton(
                        height: 140.0,
                        //minWidth: 70.0,
                        minWidth: widhtsize * .30,
                        color: Theme.of(context).primaryColor,
                        //color: Colors.deepPurple,
                        textColor: Colors.white,
                        child: new Text("Running Container"),
                        onPressed: () => {
                          Navigator.pushNamed(context, "/second"),
                          print("Something clciked second!!")
                        },
                        splashColor: Colors.redAccent,
                      ),
                      MaterialButton(
                        height: 140.0,
                        minWidth: widhtsize * .30,
                        //color: Theme.of(context).primaryColor,
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                        child: new Text("Show all"),
                        onPressed: () => {
                          Navigator.pushNamed(context, "/third"),
                          print("Something clciked Third!!")
                        },
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // 2nd Row of three buttons //////////////////////////////////////
            Container(
              height: 150,
              width: widhtsize,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        height: 140.0,
                        minWidth: widhtsize * .30,
                        color: Colors.blueGrey,
                        //color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: new Text("Launch"),
                        onPressed: () => {
                          Navigator.pushNamed(context, "/fourth"),
                          print("Something clciked Fourth!!")
                        },
                        splashColor: Colors.redAccent,
                      ),
                      MaterialButton(
                        height: 140.0,
                        //minWidth: 70.0,
                        minWidth: widhtsize * .30,
                        //color: Theme.of(context).primaryColor,
                        color: Colors.lightGreen,
                        textColor: Colors.white,
                        child: new Text("Start"),
                        onPressed: () => {
                          Navigator.pushNamed(context, "/fifth"),
                          print("Something clciked Fifth!!")
                        },
                        splashColor: Colors.redAccent,
                      ),
                      MaterialButton(
                        height: 140.0,
                        minWidth: widhtsize * .30,
                        //color: Theme.of(context).primaryColor,
                        color: Colors.blueGrey,
                        textColor: Colors.white,
                        child: new Text("Stop"),
                        onPressed: () => {
                          Navigator.pushNamed(context, "/sixth"),
                          print("Something clciked Sixth!!")
                        },
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // 3rd Row of three buttons //////////////////////////////////////
            Container(
              height: 150,
              width: widhtsize,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        height: 110.0,
                        minWidth: widhtsize * .95,
                        //color: Theme.of(context).primaryColor,
                        color: Colors.redAccent,
                        textColor: Colors.white,
                        child: new Text("Remove Environment"),
                        onPressed: () => {
                          Navigator.pushNamed(context, "/seventh"),
                          print("Something clciked Seventh!!")
                        },
                        splashColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////

//Defining the First screen
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  _FirstScreen createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  late String output = "";

  // ignore: non_constant_identifier_names
  docker_connect() async {
    var cmd = "docker images ";
    var response = await http
        .get(Uri.http("192.168.56.115", "/cgi-bin/dockerps.py", {"x": cmd}));
    print(response.body);
    setState(() {
      output = response.body;
    });
  }

  late String cmd;

  @override
  Widget build(BuildContext context) {
    docker_connect();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("All Images"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              child: Text("$output"),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Going to home");
            Navigator.pushNamed(context, "home");
          },
          tooltip: 'Home',
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////
//Defining the Second screen
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late String output = "";

  // ignore: non_constant_identifier_names
  docker_connect() async {
    var cmd = "docker ps";
    var response = await http
        .get(Uri.http("192.168.56.115", "/cgi-bin/dockerps.py", {"x": cmd}));
    print(response.body);
    setState(() {
      output = response.body;
    });
  }

  late String cmd;
  @override
  Widget build(BuildContext context) {
    docker_connect();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Running Container"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              child: Text("$output"),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Going to home");
            Navigator.pushNamed(context, "home");
          },
          tooltip: 'Home',
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////

//Defining the Thrid screen
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  late String output = "";

  // ignore: non_constant_identifier_names
  docker_connect() async {
    var cmd = "docker ps -a ";
    var response = await http
        .get(Uri.http("192.168.56.115", "/cgi-bin/dockerps.py", {"x": cmd}));
    print(response.body);
    setState(() {
      output = response.body;
    });
  }

  late String cmd;
  @override
  Widget build(BuildContext context) {
    docker_connect();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("All Container"),
          centerTitle: true,
        ),
        body: Column(
          children: [Container(child: Text("$output"))],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Going to home");
            Navigator.pushNamed(context, "home");
          },
          tooltip: 'Home',
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////

//Defining the Fourth screen

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  _FourthScreen createState() => _FourthScreen();
}

class _FourthScreen extends State<FourthScreen> {
  final containerName = TextEditingController();
  final image = TextEditingController();
  final tag = TextEditingController();
  late String output = "";
  // ignore: non_constant_identifier_names
  docker_connect() async {
    cmd = "docker run -itd --name " +
        containerName.text +
        " " +
        image.text +
        ":" +
        tag.text;
    var response = await http
        .get(Uri.http("192.168.56.115", "/cgi-bin/dockerps.py", {"x": cmd}));
    print(response.body);
    setState(() {
      output = response.body;
    });
  }

  late String cmd;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Launch a New Container"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                "Enter Container Name: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 2, fontSize: 25),
              ),
              TextField(
                controller: containerName,
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.print),
                  hintText: "mycentos1",
                ),
              ),
              Text(
                "Enter image name: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 2, fontSize: 25),
              ),
              TextField(
                controller: image,
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.print),
                  hintText: "httpd",
                ),
              ),
              Text(
                "Enter tag name: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 2, fontSize: 25),
              ),
              TextField(
                controller: tag,
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.print),
                  hintText: "latest",
                ),
              ),
              ElevatedButton(
                onPressed: docker_connect,
                child: Text("Launch"),
              ),
              Container(child: Text("$output"))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Going to home");
            Navigator.pushNamed(context, "home");
          },
          tooltip: 'Home',
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////

//Defining the Fifth screen

class FifthScreen extends StatefulWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  _FifthScreen createState() => _FifthScreen();
}

class _FifthScreen extends State<FifthScreen> {
  final containerName = TextEditingController();
  late String output = "";
  // ignore: non_constant_identifier_names
  docker_connect() async {
    cmd = "docker start " + containerName.text;
    var response = await http
        .get(Uri.http("192.168.56.115", "/cgi-bin/dockerps.py", {"x": cmd}));
    //print(r.body);
    setState(() {
      output = response.body;
    });
  }

  late String cmd;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Start the Container"),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              bottom: 150,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Text(
                    "Enter Container Name/Id: ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, height: 2, fontSize: 25),
                  ),
                  TextField(
                    controller: containerName,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.print),
                      hintText: "mycentos1",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: docker_connect,
                    child: Text("Start"),
                  ),
                  Container(child: Text("$output"))
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Going to home");
            Navigator.pushNamed(context, "home");
          },
          tooltip: 'Home',
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////

//Defining the sixth screen
class SixthScreen extends StatefulWidget {
  const SixthScreen({Key? key}) : super(key: key);

  @override
  _SixthScreen createState() => _SixthScreen();
}

class _SixthScreen extends State<SixthScreen> {
  final containerName = TextEditingController();
  late String output = "";
  // ignore: non_constant_identifier_names
  docker_connect() async {
    cmd = "docker stop " + containerName.text;
    var response = await http
        .get(Uri.http("192.168.56.115", "/cgi-bin/dockerps.py", {"x": cmd}));
    //print(r.body);
    setState(() {
      output = response.body;
    });
  }

  late String cmd;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stop the Container"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  Text(
                    "Enter Container Name/Id: ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, height: 2, fontSize: 25),
                  ),
                  TextField(
                    controller: containerName,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.print),
                      hintText: "mycentos1",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: docker_connect,
                    child: Text("Stop"),
                  ),
                  Container(child: Text("$output"))
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Going to home");
            Navigator.pushNamed(context, "home");
          },
          tooltip: 'Home',
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////

//Defining the seventh screen
class SeventhScreen extends StatefulWidget {
  const SeventhScreen({Key? key}) : super(key: key);

  @override
  _SeventhScreenState createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  late String output = "";

  // ignore: non_constant_identifier_names
  docker_connect() async {
    var cmd = "docker rm -f `docker ps -aq`";
    var response = await http
        .get(Uri.http("192.168.56.115", "/cgi-bin/dockerps.py", {"x": cmd}));
    print(response.body);
    setState(() {
      output = response.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    docker_connect();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Reset Environment"),
          centerTitle: true,
        ),
        body: Column(
          children: [Container(child: Text("$output"))],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Going to home");
            Navigator.pushNamed(context, "home");
          },
          tooltip: 'Home',
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////////
// Defining the profile widget
/*
class ProfileUI extends StatefulWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  _ProfileUIState createState() => _ProfileUIState();
}

class _ProfileUIState extends State<ProfileUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("add you image URL here "),
                    fit: BoxFit.cover)),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: Alignment(0.0, 2.5),
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage("Add you profile DP image URL here "),
                  radius: 60.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Rajat Palankar",
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Belgaum, India",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "App Developer at XYZ Company",
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              elevation: 2.0,
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                  child: Text(
                    "Skill Sets",
                    style: TextStyle(
                        letterSpacing: 2.0, fontWeight: FontWeight.w300),
                  ))),
          SizedBox(
            height: 15,
          ),
          Text(
            "App Developer || Digital Marketer",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Project",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "15",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Followers",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "2000",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.pink, Colors.redAccent]),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 100.0,
                      maxHeight: 40.0,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Contact me",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.pink, Colors.redAccent]),
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 100.0,
                      maxHeight: 40.0,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Portfolio",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
*/