import 'package:flutter/material.dart';

import 'package:learning_api/models/user.dart';
import 'package:learning_api/services/user_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Rest API'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, index) {
          final user = users[index];
          return ListTile(
            title: Text(
              user.name.last,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
            subtitle: Text(
              user.phone,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
