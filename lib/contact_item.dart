import 'package:contacts_screen/contact_item.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
 // const ContactItem({Key? key}) : super(key: key);
  bool isvasable;
  String Name;
  String Phon;
  ContactItem({
     this.isvasable= false,
     this.Name = '',
     this.Phon=''});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isvasable,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
           color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $Name' ,style: TextStyle(fontSize: 20),),
            Text('Phon: $Phon' ,style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
