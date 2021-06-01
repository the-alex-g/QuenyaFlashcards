class_name WordList
extends Node

# constants
const LESS_2_WORDS := { # nouns and articles
	'Minë':'One',
	'Anar':'The sun',
	'Isil':'The moon',
	'Ar':'And',
	'I':'The',
	'Elda':'Elf',
	'Lië':'Race (people)',
	'Vendë':'Maiden',
	'Rocco':'Horse',
	'Aran':'King',
	'Tári':'Queen',
	'Tasar':'Willow',
	'Nu':'Under',
}
const LESS_2_EXERCISES := { # plurals
	'Eldar':'Elves',
	'Lier':'Races (peoples)',
	'Vendi':'Maidens',
	'Roccor':'Horses',
	'Arani':'Kings',
	'Tárir':'Queens',
	'Tasari':'Willows',
}
const LESS_2_RULES := 'PLURALS: \nIf the word ends in a vowel or ie, but not just e, \nadd -r to the end of the word. \nIf the word ends in a consonant, add -i. If the word ends in an -ë, replace the -ë with an -i.'
const LESS_3_WORDS := { # more nouns
	'Atta':'Two',
	'Hen (hend-)':'Eye',
	'Ranco':'Arm',
	'Ando':'Gate',
	'Cirya':'Ship',
	'Aiwë':'Bird',
	'Talan (talam-)':'Floor',
	'Nér (ner-)':'Man',
	'Nís (niss-)':'Woman',
	'Sar (sard-)':'Pebble, stone',
	'Alda':'Tree',
	'Oron (oront-)':'Mountain',
}
const LESS_3_EXERCISES := { # dual forms and plurals
	'Hendu':'Hands (dual)',
	'Rancot':'Arms (dual)',
	'Andu':'Gates (dual)',
	'Ciryat':'Ships (dual)',
	'Aiwu':'Birds (dual)',
	'Talamu':'Floors (dual)',
	'Neru':'Men (dual)',
	'Nissu':'Women (dual)',
	'Sardu':'Pebbles, stones (dual)',
	'Aldu':'Trees (dual)',
	'Orontu':'Mountains (dual)',
	'Hendi':'Hands',
	'Ciryar':'Ships',
	'Aiwer':'Birds',
	'Eldu':'Elves (dual)',
	'Aldar':'Trees',
}
const LESS_3_RULES := 'DUAL FORMS: \nDual forms are used to refer to naturally occuring pairs. \nIf the word ends in a vowel and has no Ds or Ts in it, add -t at the end. \nIf the word ends in a vowel but does have Ds or Ts, add -u instead of the final vowel. \nIf the word ends in a constonant, add -u. \nAny Quenya word in parethases is stem that endings are added to. \nFor example, the plural of "nís" would be expected as "nísi".\nHowever, with the different stem it is "níssi" instead.'
const LESS_4_WORDS := { # adjectives
	'Neldë':'Three',
	'Ná':'Is',
	'Nar':'Are',
	'Vanya':'Beautiful',
	'Alta':'Big',
	'Calima':'Bright',
	'Taura':'Mighty',
	'Saila':'Wise',
	'Úmëa':'Evil',
	'Carnë':'Red',
	'Ninquë':'White',
	'Morë':'Black',
	'Firin':'Dead',
}
const LESS_4_EXERCISES := { # adjectives
	'̈́Firini neri':'Dead men',
	'I roccor nar ninqui':'The horses are white',
	'Eldar nar sailë':'Elves are wise',
	'I oron ná alta':'The mountain is big',
	'Vanya aiwë':'Beautiful bird',
	'Anar ná calima':'The sun is bright',
	'Aran taura':'Mighty king',
}
const LESS_4_RULES := 'ADJECTIVES: \nCopulas, like "is" or "are" are not necessary. \nIf the noun the adjective is describing is plural or dual, the adjective will also be plural. \nTo pluralize adjectives that end in -ë, replace the final ë with -i. \nIf the adjective ends in -a but not -ëa, replace the final vowel with -ë.\n If the adjective ends in -ëa, replace it with -ië. \nLast case: if the adjective ends in -in, add -i.\nAdjectives can go either before or after the noun.'
const LESS_5_WORDS := { # verbs
	'Canta':'Four',
	'Nauco':'Dwarf',
	'Parma':'Book',
	'Tiuca':'Thick, fat',
	'Mapa-':'Grasp or seize',
	'Tir-':'Watch or guard',
	'Lala-':'Laugh',
	'Caita-':'Lie, as in "lie down"',
	'Tulta-':'Summon',
	'Linda-':'Sing',
	'Mat-':'Eat',
	'Cenda-':'Read',
}
const LESS_5_EXERCISES := { # verbs
	'I elda céndëa':'The elf is reading',
	'I roccor mátar':'The horses are eating',
	'Neldë naucor tírar aiwë':'Three dwarves are watching a bird',
	'I nauco ná tiuca':'The dwarf is fat',
	'I parma carnë':'The red book',
	'I nér ar i nís lálëar':'The man and the woman are laughing',
	'I aran túltëa i tári':'The king is summoning the queen',
}
const LESS_5_RULES := 'VERBS and PRESENT TENSE:\nAll the words with a "-" at the end are verbs.\nThe present tense is formed by adding an -a if the verb ends in a constonant.\nIf the verb ends in -a, change the a to -ëa.\nIn all cases, lengthen the stem vowel.\nVerbs in Quenya agree with the subject in number.\nVerbs are made plural by adding -r after adding any tense endings.\nVerbs are also plural if there are more than one subject, like so:\n"The king and the queen are eating" would be "I aran ar i tárí mátar" in Quenya.\nThe present tense in Quenya implies a continuing action, similar to the english "subject is verb-ing".'
const LESS_6_WORDS := { # more verbs
	'Lempë':'Five',
	'Elen':'Star',
	'Harma':'Treasure',
	'Sil-':'Shine',
	'Hir-':'Find',
	'Cap-':'Jump',
	'Tec-':'Write',
	'Quet-':'Speak, say',
	'Mel-':'Love as between friends',
	'Cen-':'See',
	'Orta-':'Rise',
	'Harya-':'Possess, have',
}
const LESS_6_EXERCISES := { # past tense
	'I elen síla':'The star is shining',
	'I elda tencë parma':'The elf wrote a book',
	'Lempë naucor campër':'Five dwarves jumped',
	'I harma sillë':'The treasure shone',
	'Elda cennë ninquë aiwë':'An elf saw a white bird',
	'I elda haryëa parma':'The elf has a book',
	'Canta eldar ar neldë naucor lindanër':'Four elves and three dwarves sang',
}
const LESS_6_RULES := 'PAST TENSE:\nThe past tense of a verb is formed by adding -në to the end of the word.\nIf the word does not end in -r, -n, -m, or a vowel, the -n in the ending is switched with the final letter.\nThen, if the displaced consonant was -p, the -n becomes a -m. If it was -l, the -n also becomes -l.'
const LESS_7_WORDS := { # more verbs
	'Enquë':'Six',
	'Ilya':'All, every',
	'Rimba':'Numerous, many',
	'Atan':'Man (as from the race of men)',
	'Ohtar':'Warrior',
	'Rá (ráv-)':'Lion',
	'Ambar':'The world',
	'Hrávë':'Flesh',
	'Macil':'Sword',
	'Fir-':'Die',
	'Tur-':'Control',
	'Or':'Over, above',
}
const LESS_7_EXERCISES := { # future and aorist tenses
	'I ohtar haryëa macil or i rá':'The warrior has a sword over the lion',
	'Rávi matir hrávë':'Lions eat flesh',
	'Ilyë eleni silir':'All stars shine',
	'I atan firuva':'The man will die',
	'Rimbë ohtari firuvar':'Many warriors will die',
	'I elda cenuva enquë aiwer':'The elf will see six birds',
	'I aiwer linduvar':'The birds will sing',
}
const LESS_7_RULES := 'FUTURE and AORIST TENSES:\nThe future tense of a verb is formed by adding -uva to the end of the word.\nIf the verb ends in -a, but that -a is not the only vowel in the stem, remove the final -a.\nThe Aorist tense is used to denote an action such as "eats", instead of the present-tense form "is eating".\nTo form the Aorist tense, verbs ending in -a stay the same. If the verb ends in a consonant but is not plural, add -ë to the end. If the verb does need to be plural, the -ë becomes -i.'
const LESS_8_WORDS := { # more verbs
	'-n':'I',
	'-nyë':'I, long form',
	'-l':'You (plural or singular polite)',
	'-lyë':'You (plural or singular polite), long form',
	'-s':'It',
	'Otso':'Seven',
	'Seldo':'Boy',
	'Mól':'Slave',
	'An':'for, since, because',
	'Tul-':'Come',
	'Lanta-':'Fall',
	'Nurta-':'Hide',
	'Lerya-':'Release',
	'Metya-':'End',
	'Roita-':'Pursue',
	'Laita-':'Bless, praise',
	'Imbë':'Between',
}
const LESS_8_EXERCISES := {
	'Rioteanyes':'I am pursuing it',
	'I aldar alantier':'The trees have fallen',
	'Elérien otso Atan':'I have released seven men',
	'Unúrtien alta harma':'I have hidden a great treasure',
	'Ecénien rimbë aiwi':'I have seen many birds',
	'Ciryat utúlier':'A pair of ships has come',
	'Cendeal i parma':'You are reading the book',
	'Imbë i aldar':'Between the trees',
	'Naucor roitar harma':'Dwarves pursue treasure',
}
const LESS_8_RULES := 'PRESENT PERFECT and PRONOUNS:\nThe present tense of a verb is used to show something that happened and is still true, such as "I have come" (and am still here) as opposed to "I came".\nThe perfect tense is formed by adding -ië at the end, and lengthening the stem vowel if it is not followed by a pair of consonants. If the verb ends in an -a or -ya, remove the -a or -ya before adding any endings. A prefix, known as the augment, is also added, and the augment is the same as the stem vowel but is short.\nPronouns are suffixed onto the verb. More than one can be added, in the order subject-verb. If two pronouns are added, the first one must be in the long form if there is one. The pronouns are listed above.'
const LESSONS := 8
