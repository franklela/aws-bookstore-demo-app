from pathlib import Path
import sys

for path in Path('src').rglob('*.ts'):
    with open(path.resolve(), 'r') as f:
        line1 = f.readline()
        #print(line1)
    if len(line1) == 0 or line1 != "//1334161Frank":
        print('0')
        sys.exit(0)
print('1')
sys.exit(0)