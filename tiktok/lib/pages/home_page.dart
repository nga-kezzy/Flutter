import 'package:flutter/material.dart';
import 'package:tiktok/_mock_data/mock.dart';
import 'package:tiktok/widgets/video_detail.dart';
import 'package:tiktok/widgets/video_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.end,
      //     children: const [
      //       // Text('Following'),
      //       // Text('    |    ', style: TextStyle(color: Colors.grey)),
      //       // Text('For You')
      //     ],
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: SafeArea(
        child: PageView.builder(
          onPageChanged: (int page) => {print('Đây là page số $page')},
          scrollDirection: Axis.vertical,
          itemCount: videos.length,
          itemBuilder: (content, index) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                VideoTitle(video: videos[index]),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      // phần content giống tiktok
                      flex: 3,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 4,
                        // color: Colors.amber,
                        child: VideoDetail(video: videos[index]),
                      ),
                    ),
                    Expanded(
                      // phần side bar giống tiktok
                      child: Container(
                        height: MediaQuery.of(context).size.height / 1.75,
                        // color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
