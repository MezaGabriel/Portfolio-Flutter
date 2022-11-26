import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal[200],
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text(
              'Card Example',
              style: TextStyle(
                color: AppTheme.primary,
              ),
            ),
            subtitle: Text(
              'The pain of labor and the fault of the least will be followed by the exception of us. In the same way, the smallest thing that comes out of it will be followed by a lot of results. A great deal of fury has fallen out of it, or it is ready to be bred at any time.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
