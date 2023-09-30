import 'package:eventhub/app/modules/SignUp/views/sign_up_view.dart';
import 'package:eventhub/app/modules/Upcoming/views/upcoming_view.dart';
import 'package:eventhub/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key? key}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  // Define a GlobalKey for the Drawer to allow opening and closing.
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  int _buttonIndex = 0; 
  final _scheduleWidgets = [
    UpcomingView(),
    Container(),
  ];// State variable for managing the selected button index.

  // Function to open the Drawer.
  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the GlobalKey to the Scaffold.
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF8A2387),
                Color(0xFFE94057),
                Color(0xFFE94057),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: _openDrawer, // Open the Drawer when the menu icon is pressed.
          icon: Icon(
            Icons.menu, // You can use any icon you prefer here
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                // maxRadius: 20,
                backgroundImage: AssetImage('assets/pic.jpg'), // Replace with your image path
                radius: 18, // Adjust the radius as needed
              ),
            ),
          ),
        ],
      
      ),
      
      // Define the Drawer.
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Center(
              child: UserAccountsDrawerHeader(
                accountName: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("Mr.Allex",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                ),
                accountEmail: Text('mrallex@gmail.com',style: TextStyle(fontSize: 14),),
                currentAccountPicture: CircleAvatar(
                  radius: 36,
                  child: ClipOval(child: Image.asset("assets/pic.jpg",width: 90,height: 90,),
                  
                  ),
                ),
                decoration: BoxDecoration(
                   gradient: LinearGradient(
                      colors: [
                           Color(0xFF8A2387),
                           Color(0xFF8A2387),
                          // Color(0xFFE94057),
                          Color(0xFFE94057),
                  ],
                       begin: Alignment.centerLeft,
                       end: Alignment.centerRight,
               ),
                        image: DecorationImage(
                       image: AssetImage("assets/Images.OIP.jpg"), // Correct the asset path here
                      fit: BoxFit.cover,
                 ),
                      ),
              ),
            ),
            // Add items to the Drawer menu.
          ListTile(
             title: Row(
               children: [
              Icon(Icons.home,size: 30,color:Color(0xFFE94057),),
              SizedBox(width: 20), // Add some spacing between the icon and the text
              Text("My Events",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87),),
             ],
           ),
              onTap: () {
             Get.toNamed(Routes.DASHBOARD);// Add functionality for the ListTile here.
           },
         ),
         SizedBox(height: 10,),
            ListTile(
             title: Row(
               children: [
              Icon(Icons.group,size: 30,color: Color(0xFFE94057),),
              SizedBox(width: 20), // Add some spacing between the icon and the text
              Text("Attendee",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87),),
                ],
             ),
                 onTap: () {
              Get.toNamed(Routes.ATTENDEES);// Add functionality for the ListTile here.
           },
         ),
         SizedBox(height: 10,),
            ListTile(
             title: Row(
               children: [
              Icon(Icons.add,size: 30,color: Color(0xFFE94057),),
              SizedBox(width: 20), // Add some spacing between the icon and the text
              Text("Create Event",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87),),
             ],
           ),
              onTap: () {
              Get.toNamed(Routes.CREATE_EVENT);// Add functionality for the ListTile here.
           },
         ),
         SizedBox(height: 10,),
         ListTile(
             title: Row(
               children: [
              Icon(Icons.email,size: 30,color: Color(0xFFE94057),),
              SizedBox(width: 20), // Add some spacing between the icon and the text
              Text("Organizer Pages",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87),),
             ],
           ),
              onTap: () {
              Get.toNamed(Routes.CREATE_EVENT);// Add functionality for the ListTile here.
           },
         ),
          //  SizedBox(height: 10,),
        //  ListTile(
        //      title: Row(
        //        children: [
        //       Icon(Icons.person,size: 30,color: Color(0xFFE94057),),
        //       SizedBox(width: 20), // Add some spacing between the icon and the text
        //       Text("Inbox",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87),),
        //      ],
        //    ),
        //       onTap: () {
        //       Get.toNamed(Routes.INBOX);// Add functionality for the ListTile here.
        //    },
        //  ),
           SizedBox(height: 10,),
         ListTile(
             title: Row(
               children: [
              Icon(Icons.app_registration_outlined,size: 30,color: Color(0xFFE94057),),
              SizedBox(width: 20), // Add some spacing between the icon and the text
              Text("Registration",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87),),
             ],
           ),
              onTap: () {
              Get.toNamed(Routes.INBOX);// Add functionality for the ListTile here.
           },
         ),
          //  SizedBox(height: 10,),
          SizedBox(height: 10,),
         ListTile(
             title: Row(
               children: [
              Icon(Icons.percent,size: 30,color: Color(0xFFE94057),),
              SizedBox(width: 20), // Add some spacing between the icon and the text
              Text("Venu",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87),),
             ],
           ),
              onTap: () {
              Get.toNamed(Routes.INBOX);// Add functionality for the ListTile here.
           },
         ),
         SizedBox(height:5),
         Divider(  
      color: Colors.grey,
      thickness: 0.6,       
      height: 1.0,          
    ),
     
    SizedBox(height: 5,),
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text("Other",style: TextStyle(color: Colors.grey[400],fontSize: 20,fontWeight: FontWeight.w600),),
    ),
    //  SizedBox(height: 10,),
        //  ListTile(
        //      title: Row(
        //        children: [
        //       Icon(Icons.feedback,size: 30,color: Color(0xFFE94057),),
        //       SizedBox(width: 20), // Add some spacing between the icon and the text
        //       Text("Feedback",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87),),
        //      ],
        //    ),
        //       onTap: () {
        //       Get.toNamed(Routes.FEESBACK);// Add functionality for the ListTile here.
        //    },
        //  ),
           SizedBox(height: 10,),
         ListTile(
             title: Row(
               children: [
              Icon(Icons.report,size: 30,color: Color(0xFFE94057),),
              SizedBox(width: 20), // Add some spacing between the icon and the text
              Text("Report",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87),),
             ],
           ),
              onTap: () {
              Get.toNamed(Routes.INBOX);// Add functionality for the ListTile here.
           },
         ),
          SizedBox(height: 10,),
         ListTile(
             title: Row(
               children: [
              Icon(Icons.logout,size: 30,color: Color(0xFFE94057),),
              SizedBox(width: 20), // Add some spacing between the icon and the text
              Text("Logout",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black87),),
             ],
           ),
              onTap: () {
              Get.toNamed(Routes.FIRST);// Add functionality for the ListTile here.
           },
         ),
          ],
        ),
      ),
      // Add your main content here.
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // padding: EdgeInsets.all(5),
                // margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 0;
                        });
                        // Get.toNamed(Routes.UPCOMING);
                      },
                      child: Container(
                        // margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 45),
                        decoration: BoxDecoration(
                          color:_buttonIndex == 0 ? Color.fromARGB(255, 107, 107, 107): Colors.transparent,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text("Upcoming Events",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color:_buttonIndex == 0 ? Colors.white: Colors.black,
                        ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _buttonIndex = 1;
                        });
                        //  Get.toNamed(Routes.UPCOMING);
                      },
                      child: Container(
                        // margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 45),
                        decoration: BoxDecoration(
                          color: _buttonIndex == 1 ? Color.fromARGB(255, 107, 107, 107) : Colors.transparent,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text("Past Events",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color:_buttonIndex == 1 ? Colors.white: Colors.black,
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              // Depending on _buttonIndex, show the appropriate widget.
              if (_buttonIndex == 0) ...[
                // Content for "Upcoming Events".
              
                Center(
                  child: Container(
                    child: Text("Upcoming Events Content"),
                    //  Get.toNamed(Routes.UPCOMING);
                  ),
                ),
              ] else if (_buttonIndex == 1) ...[
                // Content for "Past Events".
                Center(
                  child: Container(
                     child: Text("No Events Available",
                     style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                     ),
                     ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
