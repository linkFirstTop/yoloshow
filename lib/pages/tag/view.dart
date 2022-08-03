import 'package:dd_js_util/common/circle.dart';
import 'package:dd_js_util/ext/context.dart';
import 'package:dd_js_util/ext/int.dart';
import 'package:dd_js_util/ext/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yoloshow/common/string_ext.dart';
import 'package:yoloshow/pages/home.dart';
import 'package:yoloshow/wigdet/bg.dart';
import 'package:yoloshow/wigdet/h_btn.dart';

import '../../wigdet/r_btn.dart';

final kMockTag = List.generate(20, (index) => "#Fashion$index");

///获取tag
final _tags = FutureProvider.autoDispose<List<String>>((ref) => kMockTag);

///选择兴趣标签页面
class SelectTagPage extends ConsumerWidget {
  const SelectTagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        const Bg(bg: 'tag_bg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '# Tags',
                  style: context.kTextTheme.titleLarge,
                ),
                19.h,
                Text(
                  'Please select what you are interested in',
                  style: context.kTextTheme.labelMedium,
                ),
                27.h,
                ref.watch(_tags).when(
                    data: (tags) {
                      return Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: tags
                            .map((e) => TagItem(
                                  tag: e,
                                  selected: e == '#Fashion1' || e == '#Fashion14',
                                ))
                            .toList(),
                      );
                    },
                    error: (e, s) => const Text('error'),
                    loading: () => const CupertinoActivityIndicator()),

                161.h,
                DefaultButton(
                  child: [
                    const Text(
                      'Here We',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    6.w,
                    'go'.svgAssetsPath.svg
                  ],
                  onTap: () {
                    context.navToWidget(to: const HomePage());
                  },
                )
              ],
            ).mt(context.paddingTop + kToolbarHeight),
          ),
        ),
      ],
    );
  }
}

///标签item
class TagItem extends StatelessWidget {
  final String tag;
  final bool selected;

  const TagItem({Key? key, required this.tag, this.selected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shader = const LinearGradient(colors: [Color(0xffEC2A83), Color(0xff871CF4)]).createShader(const Rect.fromLTWH(0, 0, 22, 22));
    return UnicornOutlineButton(
      gradient: const LinearGradient(colors: [Color(0xffEC2A83), Color(0xff871CF4)], begin: Alignment.centerLeft, end: Alignment.centerRight),
      radius: 50,
      hasBorder: selected,
      strokeWidth: 2,
      backgroundColor: selected ? Colors.white : const Color.fromRGBO(255, 255, 255, 0.2),
      onPressed: () {},
      child: Text(
        tag,
        style: TextStyle(
            color: selected ? null : Colors.white,
            foreground: selected ? (Paint()..shader = shader) : null,
            fontWeight: FontWeight.bold,
            fontSize: 12),
      ),
    );
  }
}
