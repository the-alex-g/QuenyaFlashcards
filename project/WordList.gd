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
const LESS_2_RULES := 'PLURALS: \nIf the word ends in a vowel or ie, but not just e, \nadd -r to the end of the word. \nIf the word ends in a consonant, add -i.'
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
	'I elda céndaë':'The elf is reading',
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
	'I elen sila':'The star is shining',
	'I elda tencë parma':'The elf wrote a book',
	'Lempë naucor campër':'Five dwarves jumped',
	'I harma sillë':'The treasure shone',
	'Elda cennë ninquë aiwë':'An elf saw a white bird',
	'Naucor haryëar harma':'Dwarves have treasure',
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
	'I elda cenuva enquë aiwer':'The elf will be seeing six birds',
	'I aiwer linduvar':'The birds will sing',
}
const LESS_7_RULES := 'FUTURE and AORIST TENSES:\nThe future tense of a verb is formed by adding -uva to the end of the word.\nIf the verb ends in -a, but that -a is not the only vowel in the stem, remove the final -a.\nThe Aorist tense is used to denote an action such as "eats", instead of the present-tense form "is eating".\nTo form the Aorist tense, verbs ending in -a stay the same. If the verb ends in a consonant but is not plural, add -ë to the end. If the verb does need to be plural, the -ë becomes -i.'
