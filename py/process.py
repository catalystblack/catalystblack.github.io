#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import csv
import secrets
from PIL import Image

for image in os.listdir('./img/pre'):

    # generate hash

    while True:
        hash = secrets.token_hex(16)
        if not os.path.exists('./img/post/' + hash + '.jpg'):
            break

    # open image

    img = Image.open('./img/pre/' + image)
    img = img.convert('RGB')
    ratio = img.size[1] / img.size[0]
    img = img.resize((1080, round(1080 * ratio)),
                     Image.Resampling.LANCZOS)
    img.show()

    # compile data

    row = [input('\nName: '), hash]
    mode = 0
    print('1. Slayer\n2. Hydra\n3. Colosseum\n4. Eventide\n' +
          '5. Capture the Flag\n6. Flag Hunters\n7. Core Rush')
    while mode < 1 or mode > 7:
        try:
            mode = int(input())
        except ValueError:
            pass
    if mode == 2:
        row.append('Hydra')
        row.append(input('Cores Returned: '))
        row.append(input('Paragon Kills: '))
        row.append(input('Damage to Boss: '))
        row.append(input('Kills: '))
        row.append(input('Assists: '))
        row.append(input('Damage to Players: '))
    elif mode == 3:
        row.append('Colosseum')
        row.append(input('Damage Dealt: '))
        row.append(input('Kills: '))
    else:
        if mode == 1:
            row.append('Slayer')
        elif mode == 4:
            row.append('Eventide')
        elif mode == 5:
            row.append('Capture the Flag')
        elif mode == 6:
            row.append('Flag Hunters')
        elif mode == 7:
            row.append('Core Rush')
        row.append(input('Score: '))
        row.append(input('Kills: '))
        row.append(input('Assists: '))
        row.append(input('Kill Streak: '))
        row.append(input('Score per Minute: '))

    # append data

    data = open('./csv/data.csv', mode='a', newline='')
    write = csv.writer(data)
    write.writerow(row)
    data.close()

    # save image

    img.save('./img/post/' + hash + '.jpg', optimize=True, quality=80)
    os.remove('./img/pre/' + image)