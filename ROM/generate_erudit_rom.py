from PIL import Image
import numpy

def hex_2_rgb(hex):
    binary = bin(int(hex, 16))[2:].zfill(8)
    rgb = [(255,255,255) if x=='1' else (0,0,0) for x in binary]
    return rgb

def getByteChars():
    with open('byte.rom', 'rb') as f:
        contents = f.read()
    byte_hex_dump = ['{:02X}'.format(b) for b in contents]
    byte_rus_chars_data = numpy.array(byte_hex_dump[int('3B00', 16):int('3D00',16)])
    byte_chars = numpy.array_split(byte_rus_chars_data, 64)
    byte_rus_chars_array = numpy.array([hex_2_rgb(x) for x in byte_rus_chars_data])
    byte_rus_chars_array = numpy.array(byte_rus_chars_array)
    img = Image.fromarray(byte_rus_chars_array.astype('uint8'), mode='RGB')
    img.save('byte_rus_chars.png')
    return byte_chars

def getOriginalDump():
    with open('48.bin', 'rb') as f:
        contents = f.read()
    return ['{:02X}'.format(b) for b in contents]

BYTE_CHARS_ORDER = "ЮАБЦДЕФГХИЙКЛМНОПЯРСТУЖВЬЫЗШЭЩЧЪ"
BYTE_CHARS_DICT = dict(zip(BYTE_CHARS_ORDER, getByteChars()))
#Буквы Ё у "Байта" нет, восстановлено по памяти.
BYTE_CHARS_DICT["Ё"] = numpy.array(['00', '14', '7E', '40', '7C', '40', '7E', '00'])

ERUDIT_CHARS_ORDER = "Ё\\Ъ^_ЮАБЦДЕФГХИЙКЛМНОПЯРСТУЖВЬЫЗШЭЩЧ"
ERUDIT_CHARS_START = "3ED8"
ERUDIT_CHARS_START_CODE = 91
ERUDIT_CHARS_CODES = list(range(91,127))
ERUDIT_CHARS_CODES_DICT = dict(zip(ERUDIT_CHARS_ORDER, ERUDIT_CHARS_CODES))
ERUDIT_CODES_CHARS_DICT = dict(zip(ERUDIT_CHARS_CODES, ERUDIT_CHARS_ORDER))

originalRomDump = getOriginalDump()
for i in range(0, len(ERUDIT_CHARS_ORDER)):
    char_start = int(ERUDIT_CHARS_START, 16)+i*8
    char_end = char_start+8
    erudit_char = ERUDIT_CODES_CHARS_DICT.get(i+91)
    print(erudit_char)
    erudit_char_graphics = BYTE_CHARS_DICT.get(erudit_char, numpy.array([]))
    if not erudit_char_graphics.size:
        print('no size')
        continue
    if len(erudit_char_graphics)!=8:
        break
    print(erudit_char_graphics)
    originalRomDump[char_start:char_end] = erudit_char_graphics

ERUDIT_ERROR_MESSAGES = [
    "ВЫПОЛНЕНО",
    "NEXT БЕЗ FOR",
    "ПЕРЕМЕННОЙ НЕТ",
    "НЕПРАВИЛЬНЫЙ ИНДЕКС",
    "НЕ ХВАТАЕТ ПАМЯТИ",
    "ЗА ПРЕДЕЛАМИ ЭКРАНА",
    "ОЧЕНЬ БОЛЬШОЕ ЧИСЛО",
    "RETURN БЕЗ GOSUB",
    "КОНЕЦ ФАЙЛА",
    "ОПЕРАТОР STOP",
    "ПЛОХОЙ АРГУМЕНТ",
    "БОЛЬШОЕ ЦЕЛОЕ ЧИСЛО",
    "ОШИБКА В БЕЙСИКЕ",
    "BREAK: CONT ПОВТОРИТ",
    "ЗА ПРЕДЕЛАМИ DATA",
    "ПЛОХОЕ ИМЯ ФАЙЛА",
    "НЕТ МЕСТА ДЛЯ СТРОКИ",
    "STOP В INPUT'Е",
    "FOR БЕЗ NEXT",
    "?", #Сообщение J не задокументировано, при работе с Эрудитом я его никогда не видела.
    "НЕПРАВИЛЬНЫЙ ЦВЕТ",
    "BREAK В ПРОГРАММЕ",
    "ПЛОХОЙ RAMTOP",
    "НЕТ ОПЕРАТОРА",
    "НЕПРАВИЛЬНЫЙ ПОТОК", #Не задокументировано, восстановлено по памяти.
    "FN БЕЗ DEF",
    "ОШИБКА ПАРАМЕТРА",
    "ОШИБКА ЗАГРУЗКИ"
    ]
ERUDIT_COPYRIGHT_MESSAGE = "ЭРУДИТ      ИЗМАИЛ      1990"
ORIGINAL_COPYRIGHT_MESSAGE = "© 1982 Sinclair Research Ltd"
print(len(ORIGINAL_COPYRIGHT_MESSAGE), len(ERUDIT_COPYRIGHT_MESSAGE))
ORIGINAL_MESSAGES_START = "1392"
ORIGINAL_COPYRIGHT_START = "1539"

def encode_message(message):
    result = []
    for char in message:
        if char in 'ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890:\'?.,\\\/':
            result.append(hex(ord(char))[2:])
        else:
            result.append(hex(ERUDIT_CHARS_CODES_DICT[char])[2:])
    result[-1] = hex(int(result[-1], 16)+128)[2:]
    return result

def replace_hex_data_from_address(dump, data, address):
    dump[int(address, 16):int(address, 16)+len(data)] = data

encoded_copyright = encode_message(ERUDIT_COPYRIGHT_MESSAGE)
print(encoded_copyright)
replace_hex_data_from_address(originalRomDump, encoded_copyright, ORIGINAL_COPYRIGHT_START)

msg_start = ORIGINAL_MESSAGES_START
for message in ERUDIT_ERROR_MESSAGES:
    encoded_message = encode_message(message)
    replace_hex_data_from_address(originalRomDump, encoded_message,
                                  msg_start)
    msg_start = int(msg_start, 16) + len(message)
    msg_start = hex(msg_start)[2:]

encoded_message = encode_message("ДАЛЬШЕ?")
replace_hex_data_from_address(originalRomDump, encoded_message, "CF9")

ORIGINAL_TAPE_MESSAGES_START = "09A2"
ERUDIT_TAPE_MESSAGES = [
    "ВКЛЮЧИТЬ МАГ., НАЖАТЬ КЛАВИШУ.",
    "ПРОГРАММА: ",
    "ЧИСЛА: ",
    "ИМЕНА: ",
    "БАЙТЫ: "
]
msg_start = ORIGINAL_TAPE_MESSAGES_START
encoded_message = encode_message(ERUDIT_TAPE_MESSAGES[0])
replace_hex_data_from_address(originalRomDump, encoded_message,
                              msg_start)
msg_start = int(msg_start, 16) + len(ERUDIT_TAPE_MESSAGES[0])
msg_start = hex(msg_start)[2:]
for message in ERUDIT_TAPE_MESSAGES[1:]:
    encoded_message = encode_message(message)
    replace_hex_data_from_address(originalRomDump, ['A0', '0D']+encoded_message,
                                  msg_start)
    msg_start = int(msg_start, 16) + len(message)+2
    msg_start = hex(msg_start)[2:]

DOLLAR_SIGN_REPLACEMENT = [
    '00000000',
    '01000010',
    '00111100',
    '00100100',
    '00100100',
    '00111100',
    '01000010',
    '00000000'
]
for i, row in enumerate(DOLLAR_SIGN_REPLACEMENT):
    DOLLAR_SIGN_REPLACEMENT[i] = hex(int(row, 2))[2:].zfill(2)
print(DOLLAR_SIGN_REPLACEMENT)
replace_hex_data_from_address(originalRomDump, DOLLAR_SIGN_REPLACEMENT, '3D20')

with open('erudit.rom', 'wb') as f:
    bytes = bytearray.fromhex(''.join(originalRomDump))
    f.write(bytes)
