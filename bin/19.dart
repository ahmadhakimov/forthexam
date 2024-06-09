import 'dart:math';

abstract class Playable {
  void play();
}
class Piano implements Playable {
  @override
  void play() {
    print('I m playing piano :)');
  }
}
class Guitar implements Playable {
  @override
  void play() {
    print('I m playing guitar :)');
  }
}
void Raplay(List instruments) {
  Random random = Random();
  int index = random.nextInt(instruments.length);
  instruments[index].play();
}

void main() {
  List instruments = [Piano(), Guitar()];
  Raplay(instruments);
}