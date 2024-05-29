import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  /// State fields for stateful widgets in this page.
  final FocusNode unfocusNode;
  final TextEditingController searchController;

  /// Constructor
  HomepageModel() 
      : unfocusNode = FocusNode(),
        searchController = TextEditingController();

  @override
  void initState(BuildContext context) {
    // Add initialization code here if needed
  }

  @override
  void dispose() {
    // Dispose the focus node and search controller to free up resources
    unfocusNode.dispose();
    searchController.dispose();
    super.dispose();
  }
}

// Main Widget
class HomepageWidget extends StatefulWidget {
  @override
  _HomepageWidgetState createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  final HomepageModel _model = HomepageModel();

  void _search() {
    final query = _model.searchController.text;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Search Result'),
          content: Text('You searched for: $query'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }