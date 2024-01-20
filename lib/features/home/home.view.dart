import 'package:flutter/material.dart';
import 'package:flutter_learn/features/account/account.view.dart';
import 'package:flutter_learn/features/home/widget/location.data.dart';
import 'package:flutter_learn/core/utils/global.colors.dart';
import 'package:flutter_learn/features/vehicles/vehicles.view.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  void _ontItemTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  List<Widget>bodyBottomBar = [
    MapScreen(),
    VehicleView(),
    AccountView(), 
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyBottomBar[currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      fixedColor: Colors.white,
      showSelectedLabels: true,
      selectedLabelStyle: GoogleFonts.workSans(
          color: Colors.white, fontWeight: FontWeight.bold),
      unselectedLabelStyle: GoogleFonts.workSans(color: Colors.white),
      showUnselectedLabels: false,
      backgroundColor: GlobalColor.mainColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/map-icon.svg',
            color: Colors.white,
          ),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/car-icon.svg',
            color: Colors.white,
          ),
          label: 'Kendaraan',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/profile-icon.svg',
            color: Colors.white,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: currentIndex,
      onTap: _ontItemTap ,
    
    ));
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  List<Marker> getMarkers() {
    return List<Marker>.from(LocationData.dataLocation.map((e) => Marker(
          point: LatLng(e.latitude, e.longitude),
          child: Icon(Icons.navigation_rounded, size: 40),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Map',
          style: TextStyle(
            color: GlobalColor.textColor,
          ),
        ),
        backgroundColor: GlobalColor.mainColor,
      ) ,
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(-6.2088, 106.8456),
              initialZoom: 12.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(markers: getMarkers()),
            ],
          ),
        ],
      )
    );
  }
}