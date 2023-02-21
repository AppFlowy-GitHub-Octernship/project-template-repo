import 'package:appflowy_editor/appflowy_editor.dart';
import 'package:appflowy_editor_plugin_template/plugins/horizontal_rule_widget_builder.dart';
import 'package:flutter/material.dart';

SelectionMenuItem horizontalRuleMenuItem = SelectionMenuItem.node(
  name: 'Horizontal rule',
  iconData: Icons.horizontal_rule,
  keywords: ['line', 'horizontalrule'],
  replace: (_, textNode) => textNode.toPlainText().isEmpty,
  nodeBuilder: (editorState) {
    return Node(
      type: HorizontalRuleType,
    );
  },
);
