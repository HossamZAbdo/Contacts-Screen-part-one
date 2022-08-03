import 'dart:ffi';

import 'package:contacts_screen/contact_item.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  int num_of_Contener_visable=0;

  ContactItem item1 =ContactItem();
  ContactItem item2 =ContactItem();
  ContactItem item3 =ContactItem();
  String textname='';
  String textphon='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Contacts Screen',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Column(
          children: [
            TextField(
             onChanged: (value){
               textname =value;
             },

              decoration: InputDecoration(
                hintText: 'Enter Your Name here',
                helperStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                filled: true,
                fillColor: Colors.white,
                suffixIcon: Icon(
                  Icons.drive_file_rename_outline,
                  color: Colors.blue,
                  size: 25,
                ),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value){
                textphon =value;
              },

              decoration: InputDecoration(
                hintText: 'Enter Your Phon here',
                helperStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                filled: true,
                fillColor: Colors.white,
                suffixIcon: Icon(
                  Icons.phone,
                  color: Colors.blue,
                  size: 25,
                ),
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child:
                        ElevatedButton(onPressed: () {
                          addItem();
                        },
                            child: Text(
                          'Add',
                          style: TextStyle(
                              fontSize: 25),
                            ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                            ),
                            padding: EdgeInsets.all(7)
                          ),
                        )
                ),
                SizedBox(width: 5),
                Expanded(
                    child:
                        ElevatedButton(onPressed: () {
                          deletItem();

                        },
                          child: Text(
                            'Dlete',
                            style: TextStyle(
                                fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              padding: EdgeInsets.all(7)
                          ),

                        )
                )
              ],
            ),
            SizedBox(height: 15),
            item1,
            item2,
            item3,
          ],
        ),
      ),
    );
  }
  void addItem(){
    if(num_of_Contener_visable==0){
      item1 =ContactItem(isvasable: true,Name: textname,Phon: textphon);
      num_of_Contener_visable++;

      setState((){});}
    else if(num_of_Contener_visable==1){
      item2 =ContactItem(isvasable: true,Name: textname,Phon: textphon);
      num_of_Contener_visable++;
      setState((){});}
    else if(num_of_Contener_visable==2){
      item3 =ContactItem(isvasable: true,Name: textname,Phon: textphon);
      num_of_Contener_visable++;
      setState((){});}
  }
  void deletItem(){
    if(num_of_Contener_visable==3){
      item1 =ContactItem(isvasable: false);
      num_of_Contener_visable--;
      setState((){});}
    else if(num_of_Contener_visable==2){
      item2 =ContactItem(isvasable: false);
      num_of_Contener_visable--;
      setState((){});}
    else if(num_of_Contener_visable==1){
      item3 =ContactItem(isvasable: false);
      num_of_Contener_visable--;
      setState((){});}
  }
}
