import 'package:flutter/material.dart';

class InforPgae extends StatelessWidget {
  const InforPgae({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infor Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                const FlutterLogo(size: 56,),
                const SizedBox(width: 16.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Nguyễn Hoàng Phúc', style: TextStyle(color: Colors.black),),
                    Text('Giới tính: Nam', style: TextStyle(color: Colors.black),),
                    Text('Chuyên ngành: Công nghệ thông tin', style: TextStyle(color: Colors.black),),
                    Text('Trường: Đại học Vinh', style: TextStyle(color: Colors.black),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
