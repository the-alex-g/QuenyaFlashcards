class_name WordList
extends Node

# constants
const LESS_2_WORDS := { # Plurals
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
const LESS_2_EXERCISES := { # Plurals
	'Eldar':'Elves',
	'Lier':'Races (peoples)',
	'Vendi':'Maidens',
	'Roccor':'Horses',
	'Arani':'Kings',
	'Tárir':'Queens',
	'Tasari':'Willows',
}
const LESS_2_RULES := 'PLURALS: \nIf the word ends in a vowel or ie, but not just e, \nadd -r to the end of the word. \nIf the word ends in a consonant, add -i.'
const LESS_3_WORDS := { # Dual forms
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
const LESS_3_EXERCISES := { # Dual forms and plurals
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
const LESS_4_WORDS := { #Adjectives
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
const LESS_4_EXERCISES := {
	'̈́Firini neri':'Dead men',
	'I roccor nar ninqui':'The horses are white',
	'Eldar nar sailë':'Elves are wise',
	'I oron ná alta':'The mountain is big',
	'Vanya aiwë':'Beautiful bird',
	'I elen ná calima':'The star is bright',
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
const LESS_5_RULES := 'Verbs:\nAll the words with a "-" at the end are verbs.\nThe present tense is formed by adding an -a if the verb ends in a constonant.\nIf the verb ends in -a, change the a to -ëa.\nIn all cases, lengthen the stem vowel.\nVerbs in Quenya agree with the subject in number.\nVerbs are made plural by adding -r after adding any tense endings.\nVerbs are also plural if there are more than one subject, like so:\n"The king and the queen are eating" would be "I aran ar i tárí mátar" in Quenya.\nThe present tense in Quenya implies a continuing action, similar to the english "subject is verb-ing".'
