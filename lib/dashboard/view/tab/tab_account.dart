import 'package:flutter/material.dart';

class TabAccount extends StatefulWidget {
  const TabAccount({Key? key}) : super(key: key);

  @override
  State<TabAccount> createState() => _TabAccountState();
}

class _TabAccountState extends State<TabAccount> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 150, top: 20),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
        ),
        const CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              'https://play-lh.googleusercontent.com/QxlTPunu6bn6vKrvwO68XOWhSEIqUqVC7SqxPFJhc5i-cs8JLADtrpEyrB7ecMRdaZU=w240-h480-rw'),
        ),
        const SizedBox(height: 20),
        const Text(
          'John Doe',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const ListTile(
          leading: Icon(Icons.email),
          title: Text('john.doe@example.com'),
        ),
        const ListTile(
          leading: Icon(Icons.phone),
          title: Text('(123) 456-7890'),
        ),
        const ListTile(
          leading: Icon(Icons.location_on),
          title: Text('123 Main St, Anytown USA'),
        ),
        ButtonBar(
          children: [
            ElevatedButton(
              onPressed: () {
                // Code to edit user's profile
              },
              child: const Text('Edit Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                // Code to log out user
              },
              child: const Text('Log Out'),
            ),
          ],
        ),
      ],
    );
  }
}
