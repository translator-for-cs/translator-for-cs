import sys

inputFile = sys.argv[1]
outputFile = sys.argv[2]
lang = sys.argv[3]

terms = []

f = open(inputFile, 'r')
lines = f.readlines()
f.close()


if(lang == 'swe'):
    with open(outputFile, 'r') as r:
        with open(outputFile, 'a') as o:

            for word in lines:
                wordSwe = word.split(',')[1]
                wordEng = word.split(',')[0]
                read = r.read()

                end = ';' + '\n'

                if(wordEng[:2] == 'CN'):
                    if(wordEng.count('_') == 3):
                        indexes = [pos for pos, char in enumerate(wordEng) if char=='_']
                        makeWordEng = wordEng[3:indexes[0]] + '_' + wordEng[indexes[0]+3:indexes[1]] + '_' + wordEng[indexes[1]+3:indexes[2]+1]

                        if(wordSwe[:2] == 'CN'):

                            if(wordSwe.count('_') == 3):
                                index = [pos for pos, char in enumerate(wordSwe) if char=='_']
                                makeWordSweP1 = 'makeCN ' + wordSwe[3:index[0]] + '_1' + wordSwe[index[0]:index[0]+3]
                                makeWordSweP2 = wordSwe[index[0]+3:index[1]] + '_1' +  wordSwe[index[1]:index[1]+3]
                                makeWordSweP3 = wordSwe[index[1]+3:index[2]] + '_1' +  wordSwe[index[2]:-1]
                                writeString = F"{makeWordEng}CN = {makeWordSweP1}{makeWordSweP2}{makeWordSweP3} {end}"
                                if writeString not in read:
                                    o.write(writeString)

                            elif(wordSwe.count('_') == 2):
                                index = [pos for pos, char in enumerate(wordSwe) if char=='_']
                                makeWordSweP1 = 'makeCN ' + wordSwe[3:index[0]] + '_1' + wordSwe[index[0]:index[0]+3]
                                makeWordSweP2 = wordSwe[index[0]+3:index[1]] + '_1' +  wordSwe[index[1]:-1]
                                writeString = F"{makeWordEng}CN = {makeWordSweP1}{makeWordSweP2} {end}"
                                if writeString not in read:
                                    o.write(writeString)

                            else:
                                ind = wordSwe.find('_')
                                makeWordSwe = 'makeCN ' + wordSwe[3:ind+3] + '_1' + wordSwe[ind+3:-1]
                                writeString = F"{makeWordEng}CN = {makeWordSwe} {end}"
                                if writeString not in read:
                                    o.write(writeString)
                        else:
                            wordSwe = 'makeCN ' + wordSwe[:-3] + '_1' + wordSwe[-3:-1]
                            writeString = F"{makeWordEng}CN = {wordSwe} {end}"
                            if writeString not in read:
                                o.write(writeString)

                    else:
                        ind = wordEng.find('_')
                        makeWordEng = wordEng[3:ind] + '_' + wordEng[ind+3:-1] + 'CN'

                        if(wordSwe.count('_') == 2):
                            index = [pos for pos, char in enumerate(wordSwe) if char=='_']
                            makeWordSweP1 = 'makeCN ' + wordSwe[3:index[0]] + '_1' + wordSwe[index[0]:index[0]+3]
                            makeWordSweP2 = wordSwe[index[0]+3:index[1]] + '_1' +  wordSwe[index[1]:-1]
                            writeString = F"{makeWordEng} = {makeWordSweP1}{makeWordSweP2} {end}"
                            if writeString not in read:
                                o.write(writeString)
                        else:
                            if(wordSwe[:2] == 'CN'):
                                ind = wordSwe.find('_')
                                makeWordSwe = 'makeCN ' + wordSwe[3:ind+3] + '_1' + wordSwe[ind+3:-1]
                                writeString = F"{makeWordEng} = {makeWordSwe} {end}"
                                if writeString not in read:
                                    o.write(writeString)
                            else:
                                makeWordSwe = 'makeCN ' + wordSwe[:-3] + '_1'  + wordSwe[-3:-1]
                                writeString = F"{makeWordEng} = {makeWordSwe} {end}"
                                if writeString not in read:
                                    o.write(writeString)


                elif(wordSwe[-3:-2] == '_'):
                    if(wordSwe[-2:-1] == 'N'):
                        makeWordSwe = 'mkN ' + wordSwe[:-3] + '_1' + wordSwe[-3:-1]
                        writeString = F"{wordEng} = mkN \"{wordSwe[:-3]}\" {end}"
                        if writeString not in read:
                            o.write(writeString)

                    elif(wordSwe[-2:-1] == 'A'):
                        makeWordEng = wordEng[:-2] + '_AP'
                        makeWordSwe = 'mkAP ' + wordSwe[:-3] + '_1' + wordSwe[-3:-1]
                        writeString = F"{makeWordEng} = {makeWordSwe} {end}"
                        if writeString not in read:
                            o.write(writeString)

                elif(wordSwe[-4:-3] == '_'):
                    makeWordSwe = 'mkV2 ' + wordSwe[:-4] + '_1' + wordSwe[-4:-1]
                    writeString = F"{wordEng} = {makeWordSwe} {end}"
                    if writeString not in read:
                        o.write(writeString)

                else:
                    if(wordSwe[-5:-1] == '_V2V'):
                        makeWordSwe = 'mkV2V ' + wordSwe[:-5] + '_1' + wordSwe[-5:-1]
                        writeString = F"{wordEng} = {makeWordSwe} {end}"
                        if writeString not in read:
                            o.write(writeString)
                    else:
                        makeWordSwe = 'mkAdv ' + wordSwe[:-5] + '_1' + wordSwe[-5:-1]
                        writeString = F"{wordEng} = {makeWordSwe} {end}"
                        if writeString not in read:
                            o.write(writeString)

        print(F"Writing to {outputFile} completed")

elif (lang == 'eng'):
    with open(outputFile, 'r') as r:
        read = r.read()
        with open(outputFile, 'a') as o:

            for word in lines:
                wordEng = word.split(',')[0]
                beg = wordEng[:-2]
                end = ';' + '\n'

                if(wordEng[:2] == 'CN'):
                    if(wordEng.count('_') == 3):
                        indexes = [pos for pos, char in enumerate(wordEng) if char=='_']
                        makeWordEng = wordEng[3:indexes[0]] + '_' + wordEng[indexes[0]+3:indexes[1]] + '_' + wordEng[indexes[1]+3:indexes[2]+1]
                        writeString = F"{makeWordEng}CN = makeCN {wordEng[3:]} {end}"
                        terms.append(F"{makeWordEng}CN: CN{end}")
                        if writeString not in read:
                            o.write(writeString)

                    else:
                        ind = wordEng.find('_')
                        makeWordEng = wordEng[3:ind] + '_' + wordEng[ind+3:-1]
                        writeString = F"{makeWordEng}CN = makeCN {wordEng[3:]} {end}"
                        terms.append(F"{makeWordEng}CN: CN{end}")
                        if writeString not in read:
                            o.write(writeString)


                elif(wordEng[-2:] == '_N'):
                    writeString = F"{beg}_N = mkN \"{wordEng[:-2]}\" {end}"
                    terms.append(F"{beg}_N: N{end}")
                    if writeString not in read:
                        o.write(writeString)

                elif(wordEng[-2:] == '_A'):
                    writeString = F"{beg}_AP = mkAP {wordEng} {end}"
                    terms.append(F"{beg}_AP: AP{end}")
                    if writeString not in read:
                        o.write(writeString)

                elif(wordEng[-3:-2] == '_'):
                    ending = wordEng[-2:]
                    writeString = F"{wordEng} = mk{ending} {wordEng} {end}"
                    terms.append(F"{wordEng}: {ending}{end}")
                    if writeString not in read:
                        o.write(writeString)

                else:
                    ending = wordEng[-3:]
                    writeString = F"{wordEng} = mk{ending} {wordEng} {end}"
                    terms.append(F"{wordEng}: {ending}{end}")
                    if writeString not in read:
                        o.write(writeString)

            for t in terms:
                o.write(t)
        print(F"Writing to {outputFile} completed")

else:
    print(F"{lang} is not supported. Use 'swe' or 'eng'! ")