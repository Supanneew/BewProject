import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}
class _MapPageState extends State<MapPage> {
  //  Field
  LatLng latLng = LatLng(13.820415, 100.516528);
  //Method
  Marker enetb() {
    return Marker(
      position: latLng,
      markerId: MarkerId('Enetb'),
      infoWindow: InfoWindow(title: 'แขนงวิชาการกระจายเสียงวิทยุและโทรทัศน์',
        snippet: 'อาคาร 62 วิทยาลัยเทคโนโลยีอุตสาหกรรม, มหาวิทยบาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ',),
    );}
  Set<Marker> myMarkers() { return <Marker>[enetb(),].toSet(); }
  Widget showMap() {
    CameraPosition cameraPosition = CameraPosition(
      target: latLng,
      zoom: 16,
    );
    return GoogleMap(
      initialCameraPosition: cameraPosition,
      onMapCreated: (GoogleMapController controller) {},
      markers: myMarkers(),
    );}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แผนที่', style: TextStyle(fontFamily: fontFam,fontWeight: FontWeight.bold,
            fontSize: 25,),),centerTitle: true,),
      body: showMap(),
    );}}
