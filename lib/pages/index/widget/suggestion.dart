import 'package:dd_js_util/api/base.dart';
import 'package:dd_js_util/common/circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waterfall_flow/waterfall_flow.dart';
import 'package:yoloshow/common/string_ext.dart';

@Doc(message: '首页建议')
class IndexSuggesionWidget extends StatelessWidget {
  const IndexSuggesionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Suggestions',
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  'refresh'.svgAssetsPath.svg,
                ],
              ),
              'right'.svgAssetsPath.svg
            ],
          ),
          SizedBox(
            height: 12,
          ),
          WaterfallFlow.count(
            padding: EdgeInsets.zero,
            crossAxisCount: 1,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              ItemCard(),
              ItemCard(
                assetsBg: 's_bg_2',
                avatarUrl: 'https://img.itbug.shop/public%2F2022-08-0107%3A24%3A46%2FGbJBup.jpg',
                account: '@ldd',
                username: 'Yolololo',
              )
            ],
          )
        ],
      ),
    );
  }
}

///卡片布局
class ItemCard extends StatelessWidget {
  final String? assetsBg;
  final String? avatarUrl;
  final String? username;
  final String? account;

  const ItemCard({Key? key, this.assetsBg, this.avatarUrl, this.username, this.account}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: AspectRatio(
        aspectRatio: 356 / 76,
        child: Stack(
          children: [
            Image.asset('assets/bg/${assetsBg ?? 's_bg'}.png'),
            Container(
              padding: EdgeInsets.only(left: 13.w, top: 8.h),
              child: Row(
                children: [
                  Image.network(
                    avatarUrl ?? 'https://img.itbug.shop/public%2F2022-08-0107%3A26%3A52%2FqRAY8P.jpg',
                    width: 53.w,
                    height: 53.w,
                  ).circleWidget,
                  SizedBox(
                    width: 9.w,
                  ),
                  Expanded(
                      child: Container(
                    constraints: BoxConstraints(minHeight: 53.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          username ?? 'Kiera Bernie',
                          style: TextStyle(fontSize: 14.sp, color: Colors.white),
                        ),
                        Text(
                          account ?? '@you_show',
                          style: TextStyle(fontSize: 12.sp, color: const Color(0xffFFFFFF).withOpacity(0.7)),
                        )
                      ],
                    ),
                  )),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.sp)))),
                      onPressed: () {},
                      child: const Text('Follow')),
                  SizedBox(
                    width: 12.w,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
