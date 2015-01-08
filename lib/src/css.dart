// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library dartdoc.css;

import 'dart:convert';
import 'dart:io';

class CSS {

  // The bootstrap css file
  final String cssFilePath = '/packages/bootstrap/css/bootstrap.css';

  final String cssHeader =
      'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css';

  final String theme =
      'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css';

  final String jsScript =
      'https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js';

  String getCssName() => 'bootstrap.css';

  String getCssContent() {
    var script = new File(Platform.script.toFilePath());
    var cssFile = new File('${script.parent.path}$cssFilePath');
    String text = cssFile.readAsStringSync(encoding: ASCII);
    return text;
  }

}