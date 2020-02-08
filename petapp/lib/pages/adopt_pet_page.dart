import 'package:flutter/material.dart';
import 'package:petapp/model/pet_model.dart';

class AdoptPetPage extends StatefulWidget {
  final PetModel pet;

  AdoptPetPage({this.pet});

  @override
  _AdoptPetPageState createState() => _AdoptPetPageState();
}

class _AdoptPetPageState extends State<AdoptPetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: widget.pet.id,
                  child: Container(
                    width: double.infinity,
                    height: 350.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          widget.pet.imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 10.0),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    widget.pet.name,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.favorite_border),
                      iconSize: 30.0,
                      color: Colors.red,
                      onPressed: () => print('Favorite ${widget.pet.name}')),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                widget.pet.description,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              height: 120.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: 30.0),
                  _buildInfoCard('Age', widget.pet.age.toString()),
                  _buildInfoCard('Sex', widget.pet.sex),
                  _buildInfoCard('Color', widget.pet.color),
                  _buildInfoCard('Id', widget.pet.id.toString()),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30.0, top: 30.0),
              width: double.infinity,
              height: 90.0,
              decoration: BoxDecoration(
                color: Color(0xFFFFF2D0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                leading: CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      height: 40.0,
                      width: 40.0,
                      image: AssetImage('assets/head.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  'Roselia Drew',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Owner',
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Montserrat',
                  ),
                ),
                trailing: Text(
                  '1.68 km',
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
              child: Text(
                'Introductions....',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                  height: 1.5,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                    width: 60.0,
                    child: IconButton(
                      onPressed: () => print('Share'),
                      icon: Icon(Icons.share),
                    ),
                  ),
                  FlatButton.icon(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.red,
                    onPressed: () => print('Adopt'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    icon: Icon(
                      Icons.pets,
                      color: Colors.white,
                    ),
                    label: Text(
                      'ADOPTION',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String label, String info) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 100.0,
      decoration: BoxDecoration(
        color: Color(0xFFF8F2F7),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            info,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
