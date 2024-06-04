import '/flutter_flow/flutter_flow_util.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  /// State fields for stateful widgets in this page.
  final FocusNode unfocusNode;
  final TextEditingController searchController;

  /// Constructor
  HomepageModel() 
      : unfocusNode = FocusNode(),
        searchController = TextEditingController();

  @override
  void initState(BuildContext context) {}

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

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _model.searchController,
              focusNode: _model.unfocusNode,
              decoration: InputDecoration(
                hintText: 'Enter search term',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _search,
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }
}