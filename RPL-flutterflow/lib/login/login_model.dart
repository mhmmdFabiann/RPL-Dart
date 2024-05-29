import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  /// State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  // State fields for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex => tabBarController?.index ?? 0;

  // State fields for email and password widgets.
  late FocusNode emailAddressFocusNode;
  late TextEditingController emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  
  late FocusNode passwordFocusNode;
  late TextEditingController passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  
  late FocusNode emailAddressCreateFocusNode;
  late TextEditingController emailAddressCreateTextController;
  String? Function(BuildContext, String?)? emailAddressCreateTextControllerValidator;
  
  late FocusNode passwordCreateFocusNode;
  late TextEditingController passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)? passwordCreateTextControllerValidator;
  
  late FocusNode passwordConfirmFocusNode;
  late TextEditingController passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)? passwordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    super.initState();

    // Initialize visibility
    passwordVisibility = false;
    passwordCreateVisibility = false;
    passwordConfirmVisibility = false;

    // Initialize FocusNodes and TextControllers
    emailAddressFocusNode = FocusNode();
    emailAddressTextController = TextEditingController();

    passwordFocusNode = FocusNode();
    passwordTextController = TextEditingController();

    emailAddressCreateFocusNode = FocusNode();
    emailAddressCreateTextController = TextEditingController();

    passwordCreateFocusNode = FocusNode();
    passwordCreateTextController = TextEditingController();

    passwordConfirmFocusNode = FocusNode();
    passwordConfirmTextController = TextEditingController();
  }

  @override
  void dispose() {
    // Dispose FocusNodes and TextControllers
    unfocusNode.dispose();
    tabBarController?.dispose();

    emailAddressFocusNode.dispose();
    emailAddressTextController.dispose();

    passwordFocusNode.dispose();
    passwordTextController.dispose();

    emailAddressCreateFocusNode.dispose();
    emailAddressCreateTextController.dispose();

    passwordCreateFocusNode.dispose();
    passwordCreateTextController.dispose();

    passwordConfirmFocusNode.dispose();
    passwordConfirmTextController.dispose();

    super.dispose();
  }
}
