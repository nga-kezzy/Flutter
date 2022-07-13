import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/models/video.dart';

class VideoDetail extends StatelessWidget {
  const VideoDetail({Key? key, required this.video}) : super(key: key);
  final Video video;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          // thông tin user vs thông tin video giống tiktok
          // const Text(
          //   "data",
          //   style: TextStyle(color: Colors.white),
          // ),
          // const SizedBox(height: 8),
          // ExpandableText(
          //   video.caption,
          //   style: const TextStyle(color: Colors.white, fontSize: 15),
          //   expandText: 'more',
          //   collapseText: 'less',
          //   expandOnTextTap: true,
          //   maxLines: 3,
          //   linkColor: Colors.grey,
          // )
        ],
      ),
    );
  }
}
