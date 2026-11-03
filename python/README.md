FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the vibrant people of Kenya to view examples:

https://platexample.ir/#/discover/kenya:python

# kenya_plate

Kenya's licence plates for plate_core: three letters, three digits and a letter on one row or stacked, in black on white or yellow, white on green or red, and more.

## Languages

| Language | Folder | Example |
| --- | --- | --- |
| Flutter / Dart | [`flutter/`](https://github.com/ArAd1Beyranvand/kenya_plate/tree/main/flutter) | [platexample](https://platexample.ir/#/discover/kenya:flutter) |
| Kotlin | [`kotlin/`](https://github.com/ArAd1Beyranvand/kenya_plate/tree/main/kotlin) | [platexample](https://platexample.ir/#/discover/kenya:kotlin) |
| Python | [`python/`](https://github.com/ArAd1Beyranvand/kenya_plate/tree/main/python) | [platexample](https://platexample.ir/#/discover/kenya:python) |
| TypeScript | [`typescript/`](https://github.com/ArAd1Beyranvand/kenya_plate/tree/main/typescript) | [platexample](https://platexample.ir/#/discover/kenya:typescript) |

## Quick start

### Install (Python)

Copy `python/plates/countries/kenya/` into `plate_core/python/plates/countries/`.

Then run the tests from `plate_core/python/`: `pytest`.

### Use

```python
from plates.countries.kenya.data import SPECS, THEMES

spec = SPECS["ke.row"]
theme = THEMES["KenyaThemes.white"]
print(spec.id)
```

## Specs

The specs are the same in every language (they come from shared data).

- `ke.row`
- `ke.square`
- `ke.diplomatic`

## Themes

- `KenyaThemes.white`
- `KenyaThemes.yellow`
- `KenyaThemes.electric`
- `KenyaThemes.county`
- `KenyaThemes.diplomatic`

## Change it

- Pick a spec: use another key of `SPECS`.
- Pick a theme: use another key of `THEMES`.
- Validators: `VALIDATORS` maps the names `KenyaValidator`, `KenyaDiplomaticValidator` to classes.

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/kenya_plate/blob/main/LICENSE).
