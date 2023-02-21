import 'package:appflowy_editor/appflowy_editor.dart';
import 'package:appflowy_editor_plugin_template/plugins/horizontal_rule_widget_builder.dart';
import 'package:flutter/material.dart';

ShortcutEvent insertHorizontalRule = ShortcutEvent(
  key: 'insert_horizontal_rule',
  command: 'Minus',
  handler: (editorState, event) {
    final selection =
        editorState.service.selectionService.currentSelection.value;
    final textNodes = editorState.service.selectionService.currentSelectedNodes
        .whereType<TextNode>();
    if (textNodes.length != 1 || selection == null) {
      return KeyEventResult.ignored;
    }
    final textNode = textNodes.first;
    final path = textNode.path;
    if (textNode.toPlainText() == '--') {
      final transaction = editorState.transaction
        ..deleteNode(textNode)
        ..insertNode(
          path.next,
          Node(type: HorizontalRuleType),
        )
        ..afterSelection = Selection.single(
          path: path,
          startOffset: 0,
        );
      editorState.apply(transaction);
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  },
);
