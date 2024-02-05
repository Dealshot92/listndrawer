import 'package:flutter/material.dart';

class PagerViewPage extends StatefulWidget {
  const PagerViewPage({super.key});

  @override
  State<PagerViewPage> createState() => _PagerViewPageState();
}

class _PagerViewPageState extends State<PagerViewPage> {
  PageController? _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pager View"),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Container(
            color: Colors.white70,
            child: Center(
              child: Text(
                "Page one",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.cyan,
            child: Center(
              child: Text(
                "Page two",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: Text(
                "Video",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Container(
            color: Colors.deepPurple,
            child: Center(
              child: Text(
                  "Notifications",
                  style: TextStyle(fontSize: 20, color: Colors.white)
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 15),
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp),label: "Home", backgroundColor: Colors.pinkAccent),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: "Message", backgroundColor: Colors.yellowAccent),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video_rounded),label: "Video", backgroundColor: Colors.purple),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications", backgroundColor: Colors.red)
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            _pageController!.animateToPage(index,
                duration: Duration(milliseconds: 200), curve: Curves.easeInOutCubicEmphasized);
          });
        },
      ),
    );
  }
}
