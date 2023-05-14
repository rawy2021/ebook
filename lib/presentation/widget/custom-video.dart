import 'package:ebook/presentation/widget/video-section.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerLesson extends StatelessWidget {
  VideoPlayerLesson({Key? key}) : super(key: key);

  final FlickManager flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset('assets/video/JohnWick.mp4'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child:   AspectRatio(
                  aspectRatio: 16/9,
                  //aspectRatio: _controller.value.aspectRatio,
                  child: FlickVideoPlayer(flickManager: flickManager,),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: VideoSection(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// class CustomVideoPlayer extends StatefulWidget {
//   const CustomVideoPlayer({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
// }
//
// class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
//   late VideoPlayerController _controller;
//   Widget? controls;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
//     )
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {});
//       })
//       ..addListener(() {
//         if (_controller.value.isPlaying) {
//           controls = GestureDetector(
//             onTap: () {
//               setState(() {
//                 _controller.pause();
//               });
//             },
//             child: Image.asset(ImageApp.icPause,
//               height: 50,
//             ),
//           );
//         } else if (_controller.value.position.inMilliseconds -
//             _controller.value.duration.inMilliseconds <
//             1) {
//           setState(() {
//             controls = GestureDetector(
//               onTap: () {
//                 setState(() {
//                   _controller.play();
//                 });
//               },
//               child: Image.asset(
//                 ImageApp.icLearning,
//                 height: 50,
//               ),
//             );
//           });
//         } else {
//           controls = GestureDetector(
//             onTap: () {
//               setState(() {
//                 _controller.play();
//               });
//             },
//             child: Image.asset(
//               ImageApp.icLearning,
//               height: 50,
//             ),
//           );
//         }
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: _controller.value.aspectRatio,
//       child: Stack(
//         children: [
//           VideoPlayer(
//             _controller,
//           ),
//           Positioned.fill(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [controls ?? Container()],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
