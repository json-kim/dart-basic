import 'mixin_musical.dart';

class Musician {
  final String _musicianName;

  Musician(this._musicianName);
}

class MusicalPerformer extends Musician with Musical {
  MusicalPerformer(String musicianName) : super(musicianName);
}
