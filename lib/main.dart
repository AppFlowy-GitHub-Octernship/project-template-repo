import 'package:appflowy_editor_plugin_template/plugins/horizontal_rule_widget_builder.dart';
import 'package:appflowy_editor_plugin_template/selection_menu_items/horizaontal_rult_menu_item.dart';
import 'package:appflowy_editor_plugin_template/shortcut_events/horizaontal_rule_shortcut_event.dart';
import 'package:appflowy_editor_plugin_template/theme/editor_style.dart';
import 'package:flutter/material.dart';
import 'package:appflowy_editor/appflowy_editor.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppFlowy Editor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppFlowyEditorLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', 'US')],
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'AppFlowy Editor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var editorState = EditorState.empty();

  void _reloadEditor() {
    setState(() {
      editorState = EditorState.empty();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: EditorPage(
        editorState: editorState,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _reloadEditor,
        tooltip: 'Reload Editor',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class EditorPage extends StatelessWidget {
  const EditorPage({
    super.key,
    required this.editorState,
  });

  final EditorState editorState;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppFlowyEditor(
      editorState: editorState,
      editable: true,
      themeData: theme.copyWith(
        extensions: [
          ...theme.extensions.values,
          customEditorTheme(context),
          ...customPluginTheme(context),
        ],
      ),
      shortcutEvents: [
        insertHorizontalRule,
      ],
      toolbarItems: const [],
      selectionMenuItems: [
        horizontalRuleMenuItem,
      ],
      customBuilders: {
        HorizontalRuleType: HorizontalRuleWidgetBuilder(),
      },
    );
  }
}
