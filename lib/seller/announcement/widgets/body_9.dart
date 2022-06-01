import 'package:picco/seller/announcement/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


class NinthBody extends StatelessWidget {
  const NinthBody({Key? key}) : super(key: key);
  static const List<String> images = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => AnnouncementProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<AnnouncementProvider>();
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Готово всё в порядке',
                      style: TextStyle(fontSize: 18),
                    ),
                    MaterialButton(
                      child: Row(
                        children: const [
                          Icon(Icons.cloud_upload_outlined),
                          SizedBox(width: 8.0),
                          Text(
                            'Загрузить',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      elevation: 0.0,
                      color: const Color.fromRGBO(187, 183, 183, 0.6),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 14.0),
                Container(
                    width: 1.sw,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Image(
                      image: AssetImage(images.first),
                      fit: BoxFit.cover,
                    )),
                const Divider(color: Colors.transparent),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Image(
                            image: AssetImage(images[1]),
                            fit: BoxFit.cover,
                          )),
                    ),
                    const VerticalDivider(color: Colors.transparent),
                    Expanded(
                      child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Image(
                            image: AssetImage(images.last),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Color(0xff7842D0),
            thickness: 2,
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  child: const Text(
                    'Назад',
                    style: TextStyle(fontSize: 18),
                  ),
                  color: Colors.transparent,
                  elevation: 0.0,
                  onPressed: () {
                    provider.navigate(7);
                  },
                ),
                MaterialButton(
                  child: const Text(
                    'Далее',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  color: const Color(0xff7842D0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                    provider.navigate(9);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

