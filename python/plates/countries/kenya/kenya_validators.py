"""Port of kenya_plate/lib/src/kenya_validators.dart. Hand-ported; codegen never overwrites this file."""
from __future__ import annotations

import re

from plates.core.validators.plate_validator import GatedPlateValidator, PlateEntry, PlateValidation, is_digits_of_length

_NOT_FOUND = "COUNTRY NOT FOUND"
_REFUSED = ("24",)


def _ok(pattern, value):
    return re.fullmatch(pattern, value) is not None


class KenyaValidator(GatedPlateValidator):
    gate_group = "suffix"
    REASON_LETTERS = "The register is three letters."
    REASON_DIGITS = "The number is three digits."
    REASON_SUFFIX = "The number ends in a letter."

    def judge(self, entry: PlateEntry) -> PlateValidation:
        if not _ok("[A-Z]{3}", entry.group("letters")):
            return PlateValidation.invalid(self.REASON_LETTERS)
        if not is_digits_of_length(entry.group("digits"), 3):
            return PlateValidation.invalid(self.REASON_DIGITS)
        if not _ok("[A-Z]", entry.group("suffix")):
            return PlateValidation.invalid(self.REASON_SUFFIX)
        return PlateValidation.valid()


class KenyaDiplomaticValidator(GatedPlateValidator):
    gate_group = "letters"
    REASON_MISSION = "The mission is one to three digits."
    REASON_TYPE = "Pick CD or UN."
    REASON_DIGITS = "The serial is one to three digits."
    REASON_LETTERS = "The register is two letters."

    def validate(self, entry: PlateEntry) -> PlateValidation:
        if entry.group("mission") in _REFUSED:
            return PlateValidation.invalid(_NOT_FOUND)
        return super().validate(entry)

    def judge(self, entry: PlateEntry) -> PlateValidation:
        if not _ok("[0-9]{1,3}", entry.group("mission")):
            return PlateValidation.invalid(self.REASON_MISSION)
        if not entry.group("type"):
            return PlateValidation.invalid(self.REASON_TYPE)
        if not _ok("[0-9]{1,3}", entry.group("digits")):
            return PlateValidation.invalid(self.REASON_DIGITS)
        if not _ok("[A-Z]{2}", entry.group("letters")):
            return PlateValidation.invalid(self.REASON_LETTERS)
        return PlateValidation.valid()
