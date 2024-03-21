import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clinic Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Clinic Profile',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
          leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
            Navigator.pop(context);
          })
        ),
        body: const ClinicProfilePage(),
      )
    );
  }
}

class ClinicProfilePage  extends StatelessWidget {
  const ClinicProfilePage ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Cardiology and thoracology",style: TextStyle(color: Colors.white),),
      ),
      body: const Column(
        children: [
           ProfileHeader(),
           QualificationsSection(),
           BookingSection(),
        ],
      ),
    );
  }
}
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox (
      width: MediaQuery.of(context).size.width,
      child:Container(
        color: Colors.blue,
        child: const Padding(padding: EdgeInsets.all(16.0),child:Column(
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/doctor_image.png'),
          ),
          SizedBox(height: 8.0),
          Text(
            'Dr.Youssef maged',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("2.4K",style: TextStyle(color: Colors.grey,fontSize: 16.0,fontWeight: FontWeight.bold)),SizedBox(width: 8.0),Icon(Icons.location_on_rounded, color: Colors.white)],),
          SizedBox(height: 4.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.red, size: 16.0),
              Icon(Icons.star, color: Colors.red, size: 16.0),
              Icon(Icons.star, color: Colors.red, size: 16.0),
              Icon(Icons.star, color: Colors.red, size: 16.0),
              Icon(Icons.star_half, color: Colors.red, size: 16.0),
              SizedBox(width: 4.0),
              Text(
                '4.5',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 4.0),
          Row(mainAxisAlignment: MainAxisAlignment.center, children:  [Icon(Icons.video_call_rounded, color: Colors.white),SizedBox(width: 8.0), Icon(Icons.message_rounded, color: Colors.white)],
          ),
        ],
      ),
      )
      ,)
      );
  }
}

class QualificationsSection extends StatelessWidget {
  const QualificationsSection({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox (
      width: MediaQuery.of(context).size.width,
      child:const Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Padding(padding: EdgeInsets.all(16.0),child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Card(elevation: 4.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),child: Padding(padding: EdgeInsets.all(16.0),child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.airplane_ticket_rounded, color: Colors.blue),SizedBox(width: 8.0),Text("الشهادات و الخبرات العلمية التي حصلت عليها",style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold))],)),), SizedBox(height: 8.0), Text("Cardiology",style: TextStyle(fontSize: 16.0)), Text("Thoracology",style: TextStyle(fontSize: 16.0)),],
      ),
      )
    )
    );
  }
}
class BookingSection extends StatelessWidget {
  const BookingSection({super.key});
  @override
  Widget build(BuildContext context) {
    return  SizedBox (
      width: MediaQuery.of(context).size.width,
      child:const Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Padding(padding: EdgeInsets.all(16.0),child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Card(elevation: 4.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),child: Padding(padding: EdgeInsets.all(16.0),child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.airplane_ticket_rounded, color: Colors.blue),SizedBox(width: 8.0),Text("أسعار و أيام الكشف في العيادة",style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold))],)),), SizedBox(height: 8.0), Text("كشف عادي:   300ج",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.blue)), Text("كشف مستعجل:   500ج",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.blue)),],
      ),
      )
    )
    );
  }
}
class HospitalHeader extends StatelessWidget {
  const HospitalHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox (
      width: MediaQuery.of(context).size.width,
      child:Container(
        color: Colors.blue,
        child: const Padding(padding: EdgeInsets.all(16.0),child:Column(
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/doctor_image.png'),
          ),
          SizedBox(height: 8.0),
          Text(
            'El_Nobaria',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("1.2K",style: TextStyle(color: Colors.grey,fontSize: 16.0,fontWeight: FontWeight.bold)),SizedBox(width: 8.0),Icon(Icons.location_on_rounded, color: Colors.white)],),
          SizedBox(height: 4.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.red, size: 16.0),
              Icon(Icons.star, color: Colors.red, size: 16.0),
              Icon(Icons.star, color: Colors.red, size: 16.0),
              Icon(Icons.star, color: Colors.red, size: 16.0),
              Icon(Icons.star_half, color: Colors.red, size: 16.0),
              SizedBox(width: 4.0),
              Text(
                '4.5',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 4.0),
          Row(mainAxisAlignment: MainAxisAlignment.center, children:  [Icon(Icons.message_rounded, color: Colors.white)],
          ),
        ],
      ),
      )
      ,)
      );
  }
}

class DivisionsSection extends StatelessWidget {
  const DivisionsSection({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox (
      width: MediaQuery.of(context).size.width,
      child:const Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Padding(padding: EdgeInsets.all(16.0),child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Card(elevation: 4.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),child: Padding(padding: EdgeInsets.all(16.0),child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.airplane_ticket_rounded, color: Colors.blue),SizedBox(width: 8.0),Text("الأقسام المتواجدة في المستشفى",style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold))],)),), SizedBox(height: 8.0), Text("Cardiology",style: TextStyle(fontSize: 16.0)), Text("Thoracology",style: TextStyle(fontSize: 16.0)),],
      ),
      )
    )
    );
  }
}
class ClinicsSection extends StatelessWidget {
  const ClinicsSection({super.key});
  @override
  Widget build(BuildContext context) {
    return  SizedBox (
      width: MediaQuery.of(context).size.width,
      child:const Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Padding(padding: EdgeInsets.all(16.0),child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Card(elevation: 4.0,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),child: Padding(padding: EdgeInsets.all(16.0),child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.airplane_ticket_rounded, color: Colors.blue),SizedBox(width: 8.0),Text("العيادات المتواجدة في المستشفى",style:TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold))],)),), SizedBox(height: 8.0),Text("1-قسم القلب و الصدر",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black)),SizedBox(height: 4.0),Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("الدكتورة. رحمة أحمد",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.black),
        ),
        ],
        ),
        ],
        ),
      ),
      )
    );
  }
}
