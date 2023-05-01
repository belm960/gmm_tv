import 'dart:async';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const VideoPlayerApp());

class VideoPlayerApp extends StatelessWidget {
  const VideoPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Video Player Demo',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;
  final String _channelImage = 'https://images.unsplash.com/photo-1618347991384-a4e195e722c5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGplc3VzJTIwY2hyaXN0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60';



  @override
  void initState() {
    super.initState();
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    _chewieController = ChewieController(videoPlayerController: _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    ),
    aspectRatio: 16/9,);

  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();
    _chewieController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('GMM TV LIVE',
        style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: AspectRatio(aspectRatio: 16/9,
            child: Chewie(controller: _chewieController)),
    ));
  }
}
