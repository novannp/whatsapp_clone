import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.blueGrey,
          radius: 26,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Novan Noviansyah Pratama',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        subtitle: Row(
          children: const [
            Icon(
              Icons.done_all,
              size: 18,
              color: Colors.blue,
            ),
            SizedBox(width: 3),
            Text('Hallooo....'),
          ],
        ),
        trailing: const Text('12:00'),
      ),
    );
  }
}
