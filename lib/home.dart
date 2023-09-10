import 'package:flutter/material.dart';
import 'main.dart';

class MyCardWidget extends StatelessWidget {
  final Article article;

  MyCardWidget({required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5.0), // การเยื้องขอบ
      child: Column(
        children: [
          ListTile(
            title: Text(article.title),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextButton(
                child: const Text('Like'),
                onPressed: () {
                  // ใส่โค้ดการทำงานเมื่อปุ่ม Like ถูกกด
                },
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('Comment'),
                onPressed: () {
                  // ใส่โค้ดการทำงานเมื่อปุ่ม Comment ถูกกด
                },
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Container(
                  color: Colors.green.withAlpha(50),
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: const Text('Share'),
                    onPressed: () {
                      // ใส่โค้ดการทำงานเมื่อปุ่ม Share ถูกกด
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
