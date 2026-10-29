/// Kenya's licence plates for the `plate_core` library.
///
/// Three letters, three digits and a letter on one row or stacked, in black on
/// white or yellow, white on green or red, and blue on white, with an advisory
/// validator.
library;

// TODO(py): [D5] one module `plates.countries.kenya`; assets via importlib.resources.
// TODO(ts): [D5] one subpath export `./countries/kenya`; tree-shakable.
// TODO(kt): [D5] package `countries.kenya` in the countries module.
export 'package:plate_alphabet/plate_alphabet.dart' show KenyaAlphabets;

export 'src/kenya_colors.dart';
export 'src/kenya_country.dart';
export 'src/kenya_missions.dart';
export 'src/kenya_plates.dart';
export 'src/kenya_themes.dart';
export 'src/kenya_validators.dart';
