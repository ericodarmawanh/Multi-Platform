class Button {
  String Function(String text)? onPressed;

  Button({this.onPressed});

  void buttonDitekan() {
    if (onPressed != null) {
      onPressed!('ini text');
    }
  }
}
