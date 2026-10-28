FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the vibrant people of Kenya to view examples:

https://platexample.ir/#/discover/kenya

# kenya_plate

Kenya's licence plates for the `plate_core` library. Three letters, three digits and a letter on one row or stacked, in black on white or yellow, white on green or red, and blue on white, with an advisory validator.

## Install

```yaml
dependencies:
  plate_core: ^0.12.0
  kenya_plate: ^0.1.0
```

## Use

```dart
import 'package:plate_core/plate_core.dart';
import 'package:kenya_plate/kenya_plate.dart';

PlateCanvas(
  spec: KenyaPlates.row,
  theme: KenyaThemes.white,
  validator: const KenyaValidator(),
  autoValidate: true,
  onChooseCharacter: noCharacterChooser,
);
```

## Contains

- `KenyaCountry` — country panel: `kenya`.
- `KenyaPlates` — 3 plate specs: `row`, `square`, `diplomatic`.
- `KenyaThemes` — 5 themes: `white`, `yellow`, `electric`, `county`, `diplomatic`.
- `KenyaValidator` — advisory validator; flags the frame, never blocks a keystroke.
- `KenyaDiplomaticValidator` — advisory validator; flags the frame, never blocks a keystroke.
- `KenyaMissions` — code table.

## Plates

Three letters, three digits and a letter (`KDK 101A`), on one row (`row`,
520×110) or stacked (`square`, 250×200), with a small flag decal. Colour
belongs to the theme, not the spec.

`diplomatic` is `1 CD 1 AK`: a mission number, `CD` or `UN`, a serial and
two letters, white on red. Mission `24` is Israel in the article's table and
is refused by `KenyaMissions.restriction`.

Not implemented: the 1920–2007 formats, the 2026 `KE` series (announced, no
reference), motorcycle `KMCA`, `GK` government and the NGO plate.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

