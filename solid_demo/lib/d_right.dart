//* RIGHT

class User {
  // User related things
}

class UserManager {
  final IDatastorage datastorage;

  UserManager(this.datastorage);

  void saveUserData(User user, int option) {
    datastorage.saveData(user);
  }
}

abstract class IDatastorage {
  void saveData(User user);
}

class FirebaseStorage implements IDatastorage {
  @override
  void saveData(User user) {
    // connect to firebase
    // save data
  }
}

class LocalStorage implements IDatastorage {
  @override
  void saveData(User user) {
    // connect to local storage
    // save data
  }
}

void main(List<String> args) {
  UserManager(FirebaseStorage()).saveUserData(User(), 0);
  UserManager(LocalStorage()).saveUserData(User(), 1);
}
