// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:io';

import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:nawy_app/core/utlis/assets/app_images.dart';
import 'package:nawy_app/core/utlis/widgets/custom_svg_pic_asset.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'audio_Player.dart';

class AudioRecoder extends StatefulWidget {
  final bool willRecording;
  final Function(bool isRecordingCompleted, bool isRecording, String filePath)
      checkMic;
  const AudioRecoder({
    Key? key,
    required this.willRecording,
    required this.checkMic,
  }) : super(key: key);

  @override
  State<AudioRecoder> createState() => AudioRecoderState();
}

class AudioRecoderState extends State<AudioRecoder> {
  final ScrollController scrollController = ScrollController();

  ///audio waves
  late final RecorderController recorderController;

  bool isRecording = false;
  bool isRecordingCompleted = false;

  @override
  void initState() {
    _askMicPermission();
    _initialiseControllers();

    super.initState();
  }

  @override
  void dispose() {
    recorderController.dispose();
    scrollController.dispose();

    super.dispose();
  }

  String? audioFilePath;
  String? playBackAudioPath;

  void _initialiseControllers() {
    recorderController = RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..updateFrequency = const Duration(milliseconds: 50)
      ..sampleRate = 44100
      ..bitRate = 48000;
  }

  _askMicPermission() async {
    await Permission.microphone.request();
  }

  AudioPlayerState? _currentlyPlaying;

  void _handleAudioPlayed(AudioPlayerState player) {
    if (_currentlyPlaying != null && _currentlyPlaying != player) {
      _currentlyPlaying!.stop();
    }
    _currentlyPlaying = player;
  }

  Future<void> stopRecorder() async {
    final path = await recorderController.stop(false);
    if (path != null) {
      isRecordingCompleted = true;
      playBackAudioPath = path;
      debugPrint(path);
      debugPrint("Recorded file size: ${File(path).lengthSync()}");
      widget.checkMic(isRecordingCompleted, false, path);
    }
  }

  Future<void> cancelRecording() async {
    await stopRecorder();

    setState(() {
      isRecording = false;
    });
  }

  void closeRecorder() {
    setState(() {
      isRecording = false;
      isRecordingCompleted = false;
    });
  }

  Widget build(BuildContext context) {
    return _buildTextField(widget.checkMic);
  }

  _buildTextField(
      Function(bool isRecordingCompleted, bool isRecording, String filePath)
          checkMic) {
    return Container(
      //  color: Colors.amber,
      padding: isRecording || isRecordingCompleted
          ? EdgeInsets.symmetric(horizontal: 0.0, vertical: 0)
          : null,
      child: Row(
        children: [
          SizedBox(
            width: isRecording || isRecordingCompleted ? 16 : 0,
          ),
          if (!isRecordingCompleted)
            isRecording
                ? btnStop(checkMic)
                : isRecordingCompleted
                    ? btnStop(checkMic)
                    : GestureDetector(
                        onTap: () => checMic(checkMic),
                        child: CustomSvgPicAsset(
                          image: AppImages.recordIcon,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
          SizedBox(
            width: isRecording || isRecordingCompleted ? 16 : 0,
          ),
          isRecording || isRecordingCompleted
              ? Flexible(
                  child: Stack(
                      alignment: Alignment.centerRight,
                      clipBehavior: Clip.none,
                      children: [
                        AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            child: isRecording
                                ? Container(
                                    height: 60,
                                    padding: EdgeInsets.all(10),
                                    child: AudioWaveforms(
                                      key: const Key("audio"),
                                      enableGesture: true,
                                      size: const Size(double.infinity, 25),
                                      recorderController: recorderController,
                                      waveStyle: const WaveStyle(
                                        waveColor: Color(0xff00B9A0),
                                        extendWaveform: true,
                                        showMiddleLine: false,
                                        scaleFactor: 100,
                                        waveThickness: 2,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        color: Colors.white,
                                      ),
                                      padding: const EdgeInsets.only(left: 4),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                    ),
                                  )
                                : isRecordingCompleted
                                    ? playBackAudioPath != null
                                        ? Container(
                                            child: AudioPlayer(
                                              showDelet: true,
                                              download: false,
                                              onPlay: _handleAudioPlayed,
                                              source: playBackAudioPath!,
                                              onDelete: () {
                                                isRecording
                                                    ? cancelRecording()
                                                    : closeRecorder();
                                                checkMic(isRecordingCompleted,
                                                    isRecording, "");
                                              },
                                            ),
                                          )
                                        : const SizedBox(
                                            width: double.infinity,
                                            child: Text("audio recorded"),
                                          )
                                    : Container()),
                      ]),
                )
              : Container(),
        ],
      ),
    );
  }

  Future<void> checMic(
      Function(bool isRecordingCompleted, bool isRecording, String filePath)
          checkMic) async {
    try {
      if (isRecording) {
        recorderController.reset();
        final path = await recorderController.stop(false);
        if (path != null) {
          isRecordingCompleted = true;
          playBackAudioPath = path;

          debugPrint(path);
          debugPrint("Recorded file size: ${File(path).lengthSync()}");
        }
      } else {
        final Directory tempDir = await getTemporaryDirectory();
        audioFilePath = tempDir.path;

        await recorderController.record(
            path:
                "$audioFilePath/chat${DateTime.now().toString().replaceAll(" ", "_").replaceAll(":", "_").replaceAll(".", "_")}.aac");
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setState(() {
        isRecording = !isRecording;
      });
      checkMic(isRecordingCompleted, isRecording, playBackAudioPath ?? "");
    }
  }

  Widget btnStop(
      Function(bool isRecordingCompleted, bool isRecording, String filePath)
          checkMic) {
    return GestureDetector(
      onTap: () => checMic(checkMic),
      child: CircleAvatar(
        backgroundColor: isRecording
            ? Colors.greenAccent
            : Theme.of(context).primaryColor.withOpacity(0.1),
        radius: 18,
        child: Icon(
          isRecording ? Icons.stop : Icons.check,
          size: 18,
        ),
      ),
    );
  }
}
