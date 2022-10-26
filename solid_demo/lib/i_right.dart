//* RIGHT

abstract class Hero {
  void regularAttack();
}

// !------------------------------------------------------

abstract class IMagicCaster {
  void castMagic();
}

abstract class IHealer {
  void heal();
}

abstract class IStealer {
  void stealMoney();
}

// !------------------------------------------------------

class Thief extends Hero implements IStealer {
  @override
  void regularAttack() {
    // ...
  }

  @override
  void stealMoney() {
    // ...
  }
}

// !------------------------------------------------------

class WhiteMage extends Hero implements IHealer, IMagicCaster {
  @override
  void castMagic() {
    // ...
  }

  @override
  void heal() {
    // ...
  }

  @override
  void regularAttack() {
    // ...
  }
}

// !------------------------------------------------------

class BlackMage extends Hero implements IMagicCaster {
  @override
  void castMagic() {
    // ...
  }

  @override
  void regularAttack() {
    // ...
  }
}