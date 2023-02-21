import 'package:appflowy_editor/appflowy_editor.dart';
import 'package:flutter/material.dart';

const _fontSize = 14.0;
const _basePadding = 12.0;

EditorStyle customEditorTheme(BuildContext context) {
  var editorStyle = Theme.of(context).brightness == Brightness.dark
      ? EditorStyle.dark
      : EditorStyle.light;
  editorStyle = editorStyle.copyWith(
    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 28),
    textStyle: editorStyle.textStyle?.copyWith(
      fontFamily: 'Poppins',
      fontSize: _fontSize,
    ),
    placeholderTextStyle: editorStyle.placeholderTextStyle?.copyWith(
      fontFamily: 'Poppins',
      fontSize: _fontSize,
    ),
    bold: editorStyle.bold?.copyWith(
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins-Bold',
    ),
    backgroundColor: Theme.of(context).colorScheme.surface,
    selectionMenuItemSelectedIconColor:
        Theme.of(context).textTheme.bodyMedium?.color,
    selectionMenuItemSelectedTextColor:
        Theme.of(context).textTheme.bodyMedium?.color,
  );
  return editorStyle;
}

Iterable<ThemeExtension<dynamic>> customPluginTheme(BuildContext context) {
  const basePadding = 12.0;
  var headingPluginStyle = Theme.of(context).brightness == Brightness.dark
      ? HeadingPluginStyle.dark
      : HeadingPluginStyle.light;
  headingPluginStyle = headingPluginStyle.copyWith(
    textStyle: (EditorState editorState, Node node) {
      final headingToFontSize = {
        'h1': _fontSize + 12,
        'h2': _fontSize + 8,
        'h3': _fontSize + 4,
        'h4': _fontSize,
        'h5': _fontSize,
        'h6': _fontSize,
      };
      final fontSize = headingToFontSize[node.attributes.heading] ?? _fontSize;
      return TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600);
    },
    padding: (EditorState editorState, Node node) {
      final headingToPadding = {
        'h1': _basePadding + 6,
        'h2': _basePadding + 4,
        'h3': _basePadding + 2,
        'h4': _basePadding,
        'h5': _basePadding,
        'h6': _basePadding,
      };
      final padding = headingToPadding[node.attributes.heading] ?? basePadding;
      return EdgeInsets.only(bottom: padding);
    },
  );
  var numberListPluginStyle = Theme.of(context).brightness == Brightness.dark
      ? NumberListPluginStyle.dark
      : NumberListPluginStyle.light;

  numberListPluginStyle = numberListPluginStyle.copyWith(
    icon: (_, textNode) {
      const iconPadding = EdgeInsets.only(left: 5.0, right: 5.0);
      return Container(
        padding: iconPadding,
        child: Text(
          '${textNode.attributes.number.toString()}.',
          style: customEditorTheme(context).textStyle,
        ),
      );
    },
  );
  final pluginTheme = Theme.of(context).brightness == Brightness.dark
      ? darkPlguinStyleExtension
      : lightPlguinStyleExtension;
  return pluginTheme.toList()
    ..removeWhere((element) =>
        element is HeadingPluginStyle || element is NumberListPluginStyle)
    ..add(headingPluginStyle)
    ..add(numberListPluginStyle);
}
