import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:full_webview/webview/blog.dart';
import 'package:full_webview/webview/contact.dart';
import 'package:full_webview/webview/courses.dart';
import 'package:full_webview/webview/member.dart';
import 'package:full_webview/webview/website.dart';
import 'package:full_webview/webview/youtube.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:full_webview/check_internet.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    "https://sacmi.com/SacmiCorporate/media/Corporate/Default%20Pict/CS_Academy_2-2.jpg",
    "https://www.cost.eu/uploads/2021/02/Academy-photo.jpg",
    "https://mediacdn.acciona.com/media/zckh4yqj/programa-academy-acciona-que-ofrecemos.jpg",
  ];
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  String _url = "https://www.facebook.com/PakAcademy79/";
  int checkInt = 0;

  var options = InAppBrowserClassOptions(
    crossPlatform: InAppBrowserOptions(
        hideUrlBar: false, toolbarTopBackgroundColor: Colors.blue),
    inAppWebViewGroupOptions: InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        javaScriptEnabled: true,
        cacheEnabled: true,
        transparentBackground: true,
      ),
    ),
  );

  @override
  void initState() {
    super.initState();
    Future<int> a = CheckInternet().checkInternetConnection();
    a.then((value) {
      if (value == 0) {
        setState(() {
          checkInt = 0;
        });

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('No internet connection!'),
        ));
      } else {
        setState(() {
          checkInt = 1;
        });

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Connected to the internet'),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('PakAcademy79'),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("PakAcademy79"),
              accountEmail: Text("Muhammad Abdullah"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/img.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("All Courses"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Courses(url: _url),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Contact(url: _url),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Members"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Member(url: _url),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Blog"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Blog(url: _url),
                    ));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(3, 6, 3, 6),
        child: RichText(
          text: TextSpan(
            text: 'Visit Us at Facebook - ',
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: '@PakAcademy79',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                recognizer: TapGestureRecognizer()..onTap = () => _launchURL(),
              )
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                ),
                items: imageList
                    .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(9),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.network(
                                e,
                                width: 1000,
                                height: 200,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Website(url: _url),
                          ));
                    },
                    child: Text(
                      'Visit Website',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  ),
                  SizedBox(height: 12),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Youtube(url: _url),
                          ));
                    },
                    child: Text(
                      'Visit Youtube',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.purple[600],
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
