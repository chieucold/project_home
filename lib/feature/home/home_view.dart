import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: const [
          Text("Home Page"),
          Text('Edit home'),
          SizedBox(height: 1,),
          Text('Chỉnh sửa home'),
          Text('Chỉnh sửa home'),
        ],
      ),
    );
  }
}
