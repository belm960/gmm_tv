import 'package:flutter/material.dart';
import 'videoViewPage.dart';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  final String _channelName = 'GMM TV';
  final String _channelImage = 'https://images.unsplash.com/photo-1618347991384-a4e195e722c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGplc3VzJTIwY2hyaXN0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('GMM TV Live'),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: Container(
          color: Color.fromARGB(150, 29, 142, 255),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 200.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://picsum.photos/500/500?random=1',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.network('https://th.bing.com/th/id/R.f1e7f41b0360af4b63e80c4d58108b98?rik=I30yQYiRXc813Q&riu=http%3a%2f%2fimg1.wikia.nocookie.net%2f__cb20150725193611%2flogopedia%2fimages%2fd%2fd4%2fGMM_CH_1.png&ehk=93Rpjkf28%2b%2bUopauOj2Q6ZjjdKxEsG3lNKarqEfvyi8%3d&risl=&pid=ImgRaw&r=0',),
                        radius: 50.0,
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'GMM TV',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,

                        )
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'We are here for you!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          
                        )
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              ListTile(
                hoverColor: Color.fromARGB(255, 186, 215, 230),
                leading: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                title: Text(
                  'ieecihm@gmail.com',
                  style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          
                        )
                ),
                onTap: () {
                  // TODO: Navigate to the Home page
                  Navigator.pop(context);
                },
              ),
              ListTile(
                hoverColor: Color.fromARGB(255, 186, 215, 230),
                leading: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                title: Text(
                  '202-726-8529',
                  style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          
                        )
                ),
                onTap: () {
                  // TODO: Navigate to the Search page
                  Navigator.pop(context);
                },
              ),
              ListTile(
                hoverColor: Color.fromARGB(255, 186, 215, 230),
                leading: Icon(
                  Icons.fax,
                  color: Colors.white,
                ),
                title: Text(
                  '1.800.555.67800',
                  style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          
                        )
                ),
                onTap: () {
                  // TODO: Navigate to the Profile page
                  Navigator.pop(context);
                },
              ),
              ListTile(
                hoverColor: Color.fromARGB(255, 186, 215, 230),
                leading: Icon(
                  Icons.location_city,
                  color: Colors.white,
                ),
                title: Text(
                  '7930 Eastern Ave. N.W. Washington, DC 20012',
                  style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          
                        )
                ),
                onTap: () {
                  // TODO: Navigate to the Profile page
                  Navigator.pop(context);
                },
              ),
              Expanded(
        child: Container(),
      ),
      SizedBox(height: 50,),
      Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: <Widget>[
            Text(
              'Developed by Filagot and Samuel',
              style: TextStyle(
                color: Color.fromARGB(255, 189, 189, 189),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 5.0),
            Text(
              '© 2023 All rights reserved',
              style: TextStyle(
                color: Color.fromARGB(255, 189, 189, 189),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              )
            ),
          ],
        ),
      ),
      ],
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => VideoPlayerScreen(),
));
        },
        child: Hero(
          tag: 'channel_image',
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.network(
                  _channelImage,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.4),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        _channelName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      GestureDetector(
                        onTap: () {
                          // Do something when the text is tapped
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Text(
                            'Watch Live Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Global Miracle Ministries (GMM)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        SizedBox(height: 100.0),
                        
                        
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
