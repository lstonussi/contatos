import 'package:contatos/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ContactHelper helper = ContactHelper();


  @override
  void initState() {

    super.initState();
    Contact c = Contact();
    c.name = 'Roberto';
    c.email = 'roberto@gmail.com';
    c.phone = '423423523432';
    c.img = 'teste';
    helper.saveContact(c);

    helper.getAllContacts().then((list){
      print(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
