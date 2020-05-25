import glob
import os
import shutil

koi7_latin = '''[\]^_`abcdefghijklmnopqrstuvwxyz{|}~'''
koi7_russian = '''Ё\\Ъ^_ЮАБЦДЕФГХИЙКЛМНОПЯРСТУЖВЬЫЗШЭЩЧ'''
print(len(koi7_latin), len(koi7_russian))
os.makedirs('backup', exist_ok=True)
trantab = str.maketrans(koi7_russian, koi7_latin)
for file in glob.glob('*.bas'):
    shutil.copy(file, os.path.join('backup', file))
    with open(file, 'r', encoding='utf-8') as f:
        contents = f.read()
    writable = contents.translate(trantab)
    with open(file, 'w+', encoding='utf-8') as f:
        f.write(writable)
    # break