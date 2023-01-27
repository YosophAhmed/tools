import 'dart:math';

class Tools {
  static const List<String> symbol = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z',
  'a',
  'b',
  'c',
  'd',
  'e',
  'f',
  'g',
  'h',
  'i',
  'j',
  'k',
  'l',
  'm',
  'n',
  'o',
  'p',
  'q',
  'r',
  's',
  't',
  'u',
  'v',
  'w',
  'x',
  'y',
  'z',
  '0',
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '!',
  '@',
  '#',
  r'$',
  '%',
  '^',
  '&',
  '*',
  '(',
  ')',
  '<',
  '>',
  ',',
  '.',
  '/',
  r'\',
  ];

  static Future<String> generate() async {
  String password = '';
  Random random = Random();
  for (int i = 0; i < 16; i++) {
  password += symbol[random.nextInt(symbol.length)];
  }
  return password;
  }


}