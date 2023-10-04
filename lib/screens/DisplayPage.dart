import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sept13_provider_next_page_display/providers/UserProvider.dart';

class DisplayPage extends StatelessWidget {
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider One Page To Another'),
        centerTitle: true,
      ),
      body: ListTile(
        //title: Text(userProvider.getUsername),
        //subtitle: Text(userProvider.email),
      ),
    );
  }
}
