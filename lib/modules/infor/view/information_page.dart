import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Thông tin khác',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                      child: Icon(Icons.whatshot, color: Colors.blueAccent, size: 48.0,),),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Chi tiết về ứng dụng',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Text(
                          'Tên ứng dụng: FLUTTER ASSISTANT',
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Text(
                          'Version: 1.0.0',
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Text(
                          'Chức năng: Là một ứng dụng trên thiết bị \ndi động nhằm giúp người dùng có thể \nquản lý thời gian, lên kế hoạch, quản lý \nthu chi của cá nhân và đồng thời giúp \nhọ theo dõi sức khoẻ của bản thân \nmột cách tiện lợi hơn.',
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Text(
                          'Nhà phát triển: Nguyễn Hoàng Phúc',
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Text(
                          'Nền tảng: Ứng dụng trên thiết bị di động',
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Text(
                          'Được viết bởi Flutter framework \nvào ngày 6/12/2021.',
                          style: TextStyle(color: Colors.black, fontSize: 14.0),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Thông tin nhà phát triển',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      'Họ và tên: Nguyễn Hoàng Phúc',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      'Giới tính: Nam',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      'Ngày sinh: 20/07/1998',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      'Trình độ: Đã học tại Đại học Vinh - Ngành Công nghệ thông tin',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ),
                  const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    child: Text(
                      'Sở thích: Học viết mã, đạp xe, ngắm nhìn bầu trời, đọc sách, nghe Podcast, học ngoại ngữ....',
                      style: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ),
                  const SizedBox(height: 16.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4.0),
                    child: ExpandablePanel(
                      header: const Text(
                        'Đôi lời tâm sự:',
                        style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      collapsed: const Text(
                        'Chào các bạn, sau đây mình có một đôi lời muốn tâm sự với các bạn. Đầu tiên, mình cảm thấy mình là một người sống khá hướng nội. Mình yêu thích các môn học như Toán, Lý và Thiên văn, bởi vì nó giúp mình tăng sự nhanh nhạy trong suy nghĩ và cách giải quyết vấn đề. Đáng lý ra, mình tính theo nghề gỉảng viên Toán á nhưng không biết sao lại bén duyên với ngành công nghệ thông tin, đặc biệt là mảng phát triển ứng dụng di động này. Lúc đầu thì cũng bỡ ngỡ nhuưng rồi sau cũng quen và bây giờ thì mình cảm thấy nghề này cũng thú vị và rất chi là có ích trong bối cảnh thế giới đang tiến vào ngành công nghiệp 4.0 này. Mình mong là mình có thể tiến xa hơn trong nghề và đồng thời cũng có thể giúp được một ai đó muốn tìm hiểu hay gắn bó với công nghệ thông tin nói chung và mảng lập trình ứng dụng di động nói riêng. Chúc các bạn may mắn !!!',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                        softWrap: true,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      expanded: const Text(
                        'Chào các bạn, sau đây mình có một đôi lời muốn tâm sự với các bạn. Đầu tiên, mình cảm thấy mình là một người sống khá hướng nội. Mình yêu thích các môn học như Toán, Lý và Thiên văn, bởi vì nó giúp mình tăng sự nhanh nhạy trong suy nghĩ và cách giải quyết vấn đề. Đáng lý ra, mình tính theo nghề gỉảng viên Toán á nhưng không biết sao lại bén duyên với ngành công nghệ thông tin, đặc biệt là mảng phát triển ứng dụng di động này. Lúc đầu thì cũng bỡ ngỡ nhuưng rồi sau cũng quen và bây giờ thì mình cảm thấy nghề này cũng thú vị và rất chi là có ích trong bối cảnh thế giới đang tiến vào ngành công nghiệp 4.0 này. Mình mong là mình có thể tiến xa hơn trong ngành và đồng thời cũng có thể giúp được một ai đó muốn tìm hiểu hay gắn bó với ngành công nghệ thông tin nói chung và mảng lập trình ứng dụng di động nói riêng. Chúc các bạn may mắn !!!',
                        style: TextStyle(color: Colors.black, fontSize: 14.0),
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
