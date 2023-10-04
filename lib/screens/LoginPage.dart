import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sept13_provider_next_page_display/providers/UserProvider.dart';
import 'package:sept13_provider_next_page_display/screens/DisplayPage.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  //final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Consumer<UserProvider>(
        
          builder: (context, up, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: usernameController,
                    decoration: InputDecoration(labelText: 'Enter Username'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    final enteredUsername = usernameController.text;
                    up.setUsername(enteredUsername);
              
                    print(enteredUsername);
                  },
                  child: Text('Submit'),
                ),
                SizedBox(height: 20), // Add some spacing
                Text(
                  'Entered Username: ${up.username}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
