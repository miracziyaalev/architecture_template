


part of "custom_login_button.dart";



mixin _CustomLoginButtonMixin on State<CustomLoginButton>{

  final ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);

  void _onPressed() {
    _isLoadingNotifier.value = true;
    Future.delayed(const Duration(seconds: 2), () {
      _isLoadingNotifier.value = false;
    });
  }

  @override
  void initState() {
    _isLoadingNotifier.value = false;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}