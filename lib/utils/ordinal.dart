String ordinal(int value) {
  int tempValue;
  dynamic templates;
  String finalValue;

  List valueSpecial = [11, 12, 13];

  if (valueSpecial.contains(value % 100)) {
    return "${value}th";
  } else if (value.toString().length == 1) {
    templates = [
      "0",
      "1st",
      "2nd",
      "3rd",
      "4th",
      "5th",
      "6th",
      "7th",
      "8th",
      "9th",
    ];
    finalValue = templates[value];
  } else {
    tempValue = value % 10;
    templates = {
      // Ordinal format when value ends with 0, e.g. 80th
      "$tempValue": "${value}th",
      // Ordinal format when value ends with 1, e.g. 81st, except 11.
      "$tempValue": "${value}st",
      // Ordinal format when value ends with 2, e.g. 82nd, except 12.
      "$tempValue": "${value}nd",
      // Ordinal format when value ends with 3, e.g. 83rd, except 13.
      "$tempValue": "${value}rd",
      // Ordinal format when value ends with 4, e.g. 84th.
      "$tempValue": "${value}th",
      // Ordinal format when value ends with 5, e.g. 85th.
      "$tempValue": "${value}th",
      // Ordinal format when value ends with 6, e.g. 86th.
      "$tempValue": "${value}th",
      // Ordinal format when value ends with 7, e.g. 87th.
      "$tempValue": "${value}th",
      // Ordinal format when value ends with 8, e.g. 88th.
      "$tempValue": "${value}th",
      // Ordinal format when value ends with 9, e.g. 89th.
      "$tempValue": "${value}th",
    };
    finalValue = templates["$tempValue"];
  }
  return finalValue;
}
