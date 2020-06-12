import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Pages/Addpage.dart';
import 'package:sayrtk/Pages/Chatpage.dart';
import 'package:sayrtk/Pages/Homepage.dart';
import 'package:sayrtk/Pages/Notificationpage.dart';
import 'package:sayrtk/Pages/Profilepage.dart';

// import 'package:keyboard_visibility/keyboard_visibility.dart';
class TabbingPage extends StatefulWidget {
  @override
  TabbingPageState createState() => new TabbingPageState();
}

class TabbingPageState extends State<TabbingPage> with SingleTickerProviderStateMixin {
  int cateId;
  String homeSearchtext;
  TabController _tabController;
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  
  changeTab(index, id, homesrchtxt) {
    _tabController.index = index;
    setState(() {
      cateId = id;
      homeSearchtext = homesrchtxt;
    });
  }

  
  void _handleTabSelection() {
    setState(() {
      cateId = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("ds"),),
        extendBody: true,
        body: new TabBarView(
          controller: _tabController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[Homepage(), Chatpage(),Addpage(),Notificationpage(),Profilepage()],
        ),
        bottomNavigationBar: BottomAppBar(
          // shape: CircularNotchedRectangle(),
          color:Colors.white,
          notchMargin: 6.0,
          clipBehavior: Clip.antiAlias,
          child: TabBar(
            indicatorColor:Colors.white,
            controller: _tabController,
            tabs: <Widget>[
              Tab(icon:_tabController.index == 0?SgImages.activeHome:SgImages.deactiveHome),
               Tab(icon:_tabController.index == 1?SgImages.activeMessage:SgImages.deactiveMessage),
              Tab(icon:_tabController.index == 2?SgImages.activeAdd:SgImages.deactiveAdd,),
              Tab(icon:_tabController.index == 3?SgImages.activeNotification:SgImages.deactiveNotification,),
              Tab(icon:_tabController.index == 4?SgImages.activeProfile:SgImages.deactiveProfile),
              // Tab(
              //     child: Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: <Widget>[
              //     _tabController.index == 0
              //         ? Icon(Icons.home)
              //         : Icon(Icons.access_time),
              //   ],
              // )),
              // Tab(
              //     child: Row(
              //         mainAxisAlignment: MainAxisAlignment.start,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: <Widget>[
              //       _tabController.index == 1
              //           ? Icon(Icons.map)
              //           : Icon(Icons.account_balance)
              //     ])),
            ],
          ),
        ));
  }
}
