FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the vibrant people of Kenya to view examples:

https://platexample.ir/#/discover/kenya:kotlin

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

### Install (Kotlin)

Copy `kotlin/src/commonMain/kotlin/plates/countries/kenya/` into `plate_core/kotlin/src/commonMain/kotlin/plates/countries/`.

Then run the tests from `plate_core/kotlin/`: `./gradlew jvmTest`.

### Use

```kotlin
import plates.countries.kenya.country

val spec = country.specs["ke.row"]
println(country.pkg)
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

- Specs: `country.specs`, by id.
- Themes: `country.themes`.
- Validators: `country.validators` (`KenyaValidator`, `KenyaDiplomaticValidator`).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/kenya_plate/blob/main/LICENSE).
