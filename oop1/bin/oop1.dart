void main(List<String> arguments) {
  Monster m = Serigala();

  if (m is Serigala) {
    m.pukul();
  }
}

abstract class IMakhlukAir {
  void bergerakDiAir();
  void bernapasDiAir();
}

abstract class IJenius {
  void mikir();
}

mixin NyebelinMixin {
  void pukul() {
    // ...
  }

  void nabok();
}

abstract class Monster with NyebelinMixin {
  int hp = 0;

  void jalan();
}

class Serigala extends Monster implements IMakhlukAir, IJenius {
  void makan() {}

  @override
  void jalan() {
    // ...
  }

  @override
  void bergerakDiAir() {
    // ...
  }

  @override
  void bernapasDiAir() {
    // ...
  }

  @override
  void mikir() {
    // ...
  }

  @override
  void nabok() {
    // TODO: implement nabok
  }
}

class Apapun implements Serigala {
  @override
  int hp = 5;

  @override
  void bergerakDiAir() {
    // ...
  }

  @override
  void bernapasDiAir() {
    // ...
  }

  @override
  void jalan() {
    // ...
  }

  @override
  void makan() {
    // ...
  }

  @override
  void mikir() {
    // ...
  }

  @override
  void pukul() {
    // ...
  }

  @override
  void nabok() {
    // TODO: implement nabok
  }
}
