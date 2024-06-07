// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'package:audioplayers/audioplayers.dart' as ap;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AudioPlayer extends StatefulWidget {
  final String source;

  final bool showDelet;
  final Function(AudioPlayerState) onPlay;
  final VoidCallback onDelete;
  final bool download;

  const AudioPlayer({
    Key? key,
    required this.source,
    required this.showDelet,
    required this.onPlay,
    required this.onDelete,
    required this.download,
  }) : super(key: key);

  @override
  AudioPlayerState createState() => AudioPlayerState();
}

class AudioPlayerState extends State<AudioPlayer> {
  static const double _controlSize = 56;
  static const double _deleteBtnSize = 24;

  final _audioPlayer = ap.AudioPlayer()..setReleaseMode(ap.ReleaseMode.stop);
  late StreamSubscription<void> _playerStateChangedSubscription;
  late StreamSubscription<Duration?> _durationChangedSubscription;
  late StreamSubscription<Duration> _positionChangedSubscription;
  Duration? _position;
  Duration? _duration;

  @override
  void initState() {
    _playerStateChangedSubscription =
        _audioPlayer.onPlayerComplete.listen((state) async {
      await stop();
      setState(() {});
    });
    _positionChangedSubscription = _audioPlayer.onPositionChanged.listen(
      (position) => setState(() {
        _position = position;
      }),
    );
    _durationChangedSubscription = _audioPlayer.onDurationChanged.listen(
      (duration) => setState(() {
        _duration = duration;
      }),
    );
    loadAudio();
    super.initState();
  }

  @override
  void dispose() {
    _playerStateChangedSubscription.cancel();
    _positionChangedSubscription.cancel();
    _durationChangedSubscription.cancel();
    //_audioPlayer.dispose();

    super.dispose();
  }

  bool cancel = false;
  double prograss = 0.0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return buildControllerWidget(constraints.maxWidth);
      },
    );
  }

  Widget buildControllerWidget(double? maxWidth) {
    var textDirection = Directionality.of(context);

    return Stack(
      alignment: textDirection == TextDirection.rtl
          ? Alignment.bottomLeft
          : Alignment.bottomRight,
      children: [
        if (_audioPlayer.state == ap.PlayerState.playing ||
            _audioPlayer.state == ap.PlayerState.paused)
          Text(
            formatDuration(_position),
            style: TextStyle(fontSize: 11),
          )
        else
          Text(
            formatDuration(_duration),
            style: TextStyle(fontSize: 11),
          ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  children: [
                    SizedBox(
                      height: widget.showDelet == false ? 5 : 10,
                    ),
                    Container(
                        width: 40,
                        height: 40,
                        child: Container(
                            width: 40, height: 40, child: _buildControl())),
                    SizedBox(
                      height: widget.showDelet == false ? 5 : 10,
                    ),
                  ],
                ),
                Expanded(child: _buildSlider()),
                widget.showDelet == false
                    ? Container()
                    : IconButton(
                        icon: const Icon(Icons.delete,
                            color: Color(0xFF73748D), size: _deleteBtnSize),
                        onPressed: () {
                          if (_audioPlayer.state == ap.PlayerState.playing) {
                            stop().then((value) => widget.onDelete());
                          } else {
                            widget.onDelete();
                          }
                        },
                      ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildControl() {
    Icon icon;
    Color color;
    final theme = Theme.of(context);
    if (_audioPlayer.state == ap.PlayerState.playing) {
      icon = const Icon(Icons.pause, color: Colors.red, size: 30);
      color = Colors.red.withOpacity(0.1);
    } else if (widget.download == true) {
      icon = Icon(cancel == false ? Icons.download : Icons.cancel_outlined,
          color: cancel ? Colors.red : theme.primaryColor, size: 25);
      color = theme.primaryColor.withOpacity(0.1);
    } else {
      icon = Icon(Icons.play_arrow, color: theme.primaryColor, size: 30);
      color = theme.primaryColor.withOpacity(0.1);
    }
    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          child: SizedBox(
              width: _controlSize,
              height: _controlSize,
              child: widget.download == false
                  ? icon
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        icon,
                        cancel == true
                            ? CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.red),
                                strokeWidth: 2,
                              )
                            : Container(),
                      ],
                    )),
          onTap: () async {
            if (_audioPlayer.state == ap.PlayerState.playing) {
              pause();
              setState(() {
                _audioPlayer.state = ap.PlayerState.paused;
              });
            } else {
              play();
            }
          },
        ),
      ),
    );
  }

  Widget _buildSlider() {
    bool canSetValue = false;
    final duration = _duration;
    final position = _position;
    if (duration != null && position != null) {
      canSetValue = position.inMilliseconds > 0;
      canSetValue &= position.inMilliseconds < duration.inMilliseconds;
    }

    double width =
        MediaQuery.of(context).size.width - _controlSize - _deleteBtnSize;
    width -= _deleteBtnSize;

    return SizedBox(
      width: width,
      child: Slider(
        activeColor: Theme.of(context).primaryColor,
        inactiveColor: Theme.of(context).colorScheme.secondary,
        onChanged: (v) {
          if (duration != null) {
            final position = v * duration.inMilliseconds;
            _audioPlayer.seek(Duration(milliseconds: position.round()));
            setState(() {
              _duration = Duration(milliseconds: position.round());
            });
          }
        },
        value: canSetValue && duration != null && position != null
            ? position.inMilliseconds / duration.inMilliseconds
            : 0.0,
      ),
    );
  }

  Future<void> play() {
    widget.onPlay(this);

    return _audioPlayer.play(
      kIsWeb ? ap.UrlSource(widget.source) : ap.DeviceFileSource(widget.source),
    );
  }

  Future<void> pause() {
    return _audioPlayer.pause();
  }

  Future<void> stop() {
    return _audioPlayer.stop();
  }

  String formatDuration(Duration? duration) {
    if (duration == null) return "00:00";

    String twoDigits(int n) => n.toString().padLeft(2, "0");
    //String hours = twoDigits(duration.inHours);
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));

    return "$minutes:$seconds";
  }

  Future<void> loadAudio() async {
    try {
      await _audioPlayer.setSource(ap.DeviceFileSource(widget.source));
      var duration = await _audioPlayer.getDuration();
      setState(() {
        _duration = duration;
      });
    } catch (e) {
      // يمكنك التعامل مع الأخطاء هنا
      print("خطأ في تحميل الملف الصوتي: $e");
    }
  }
}
