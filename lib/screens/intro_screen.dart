import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/video/intro.mp4')
      ..initialize().then((value) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          Center(
              child: Text(
            'Mercado Fácil',
            style: textTheme.displayLarge!.copyWith(
                color: colorTheme.onPrimary, fontWeight: FontWeight.bold),
          )),
          Positioned(
            bottom: 58,
            left: 16,
            right: 16,
            child: Column(
              children: [
                FilledButton(style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(48)
                ),
                  onPressed: () {},
                  child: Text('Entrar ou Registrar'),
                ),SizedBox(height: 15,),
                OutlinedButton(style: FilledButton.styleFrom(
                  minimumSize:  Size.fromHeight(48),side: BorderSide(color:colorTheme.background,width: 2)
                ),
                    onPressed: () {}, child: Text('Comprar como visitante',style: textTheme.titleMedium!.copyWith(
color: colorTheme.background,
fontWeight: FontWeight.bold,

                    )),
                    
                    )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
