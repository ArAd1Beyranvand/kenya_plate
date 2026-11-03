import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kenya_plate/kenya_plate.dart';
import 'package:plate_core/plate_core.dart';
import 'package:plate_core/testing.dart';

/// One golden per category, drawn with a real bold face so the ink can be
/// measured against the flattened references.
///
/// Regenerate with `flutter test --update-goldens` after a deliberate change.
void main() {
  setUpAll(() async {
    final FontLoader loader = FontLoader('Roboto');
    for (final String path in const <String>[
      '/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf',
    ]) {
      final File face = File(path);
      if (!face.existsSync()) continue;
      loader.addFont(face.readAsBytes().then((b) => ByteData.view(b.buffer)));
    }
    await loader.load();
  });

  const Size wide = Size(780, 165);
  const Size boxy = Size(500, 400);

  /// category id -> (spec, theme, one value per slot, size)
  final Map<String, (PlateSpec, PlateTheme, String, Size)> cases =
      <String, (PlateSpec, PlateTheme, String, Size)>{
        'front': (KenyaPlates.row, KenyaThemes.white, 'KDK101A', wide),
        'rear': (KenyaPlates.row, KenyaThemes.yellow, 'KBX194M', wide),
        'county': (KenyaPlates.row, KenyaThemes.county, 'CGX001V', wide),
        'electric': (KenyaPlates.row, KenyaThemes.electric, 'EVA001A', wide),
        'square': (KenyaPlates.square, KenyaThemes.yellow, 'KDK102A', boxy),
        'square_electric': (
          KenyaPlates.square,
          KenyaThemes.electric,
          'EMA001A',
          boxy,
        ),
        'diplomatic': (
          KenyaPlates.diplomatic,
          KenyaThemes.diplomatic,
          '1 CD 1 AK',
          wide,
        ),
      };

  for (final MapEntry<String, (PlateSpec, PlateTheme, String, Size)> c
      in cases.entries) {
    testWidgets(c.key, (tester) async {
      final (PlateSpec spec, PlateTheme theme, String text, Size size) =
          c.value;
      final PlateController controller = PlateController.fromValues(
        spec,
        text.contains(' ') ? text.split(' ') : text.split(''),
      );
      await pumpPlateGolden(
        tester,
        controller,
        'goldens/ke_${c.key}.png',
        theme: theme,
        country: KenyaCountry.kenya,
        stage: Size(size.width, size.height),
      );
    });
  }

  test('mission 24 is refused by the spec and the validator', () {
    final PlateSpec spec = KenyaPlates.diplomatic;
    final List<String?> israel = <String?>['24', 'CD', '1', 'AK'];
    expect(spec.restrictions, contains(KenyaMissions.restriction));
    expect(spec.restrictionViolatedBy(israel)?.reason, KenyaMissions.notFound);
    expect(
      () => spec.checkRestrictions(israel),
      throwsA(isA<PlateRestrictionException>()),
    );
    expect(
      const KenyaDiplomaticValidator()
          .validate(PlateEntry(spec: spec, values: israel))
          .reason,
      KenyaMissions.notFound,
    );
    expect(spec.restrictionViolatedBy(<String?>['1', 'CD', '1', 'AK']), isNull);
  });
}
