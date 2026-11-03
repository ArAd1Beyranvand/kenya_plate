import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';
import 'package:kenya_plate/kenya_plate.dart';

void main() =>
    runApp(PlateExampleApp(spec: KenyaPlates.row, theme: KenyaThemes.white));
