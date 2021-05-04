extends Control

# signals

# enums

# constants
const DUAL_FORMS := {
	'Envyinyataru':'Two renewers',
	'Ulundu':'Two floods',
	'Eäruilet':'Two pieces of seaweed',
	'Ercassu':'Two pieces of holly',
	'Ohtaru':'Two warriors',
	'Herut':'Two lords',
	'Nehtu':'Two spearheads',
	'Mahalmu':'Two thrones',
	'Hlócet':'Two snakes',
	'Hísiet':'Two mists',
	'Eldu':'Two elves',
	'Valat':'Two angels',
	'Ainut':'Two spirits',
	'Noldu':'Two of the people of Noldo',
	'Valiet':'Two female angels',
	'Elet':'Two stars',
	'Casat':'Two dwarves',
	'Vendu':'Two maidens',
	'Roccot':'Two horses',
	'Arat':'Two kings',
	'Táru':'Two queens',
	'Tasaru':'Two willows',
	'Ciryat':'Two ships',
	'Aiwet':'Two birds',
	'Sart':'Two pebbles',
	'Oront':'Two mountains',
	'Talat':'Two floors',
}
const PLURAL_FORMS := {
	'Envyinyatari':'Renewers',
	'Ulundi':'Floods',
	'Eäruili':'Seaweed (plural)',
	'Ercassi':'Holly (plural)',
	'Ohtari':'Warriors',
	'Herur':'Lords',
	'Nehti':'Spearheads',
	'Mahalmar':'Thrones',
	'Hlóci':'Snakes',
	'Hísier':'Mists',
	'Eldar':'Elves',
	'Valar':'Angels',
	'Ainur':'Spirits',
	'Noldor':'The people of Noldo',
	'Valier':'Female angels',
	'Eleni':'Stars',
	'Casari':'Dwarves',
	'Vendi':'Maidens',
	'Roccor':'Horses',
	'Arani':'Kings',
	'Tárir':'Queens',
	'Tasari':'Willows',
	'Ciryari':'Ships',
	'Aiwer':'Birds',
	'Sardi':'Pebbles',
	'Orondi':'Mountains',
	'Talami':'Floors',
}
const SINGLE_FORMS := {
	'Alcar':'Glory',
	'Alcarinqua':'Glorious',
	'Calima':'Bright',
	'Unótimë':'Uncountable',
	'Envyinyatar':'Renewer',
	'Ulundë':'Flood',
	'Eäruilë':'Seaweed',
	'Ercassë':'Holly',
	'Ohtar':'Warrior',
	'Hrávë':'Flesh',
	'Nahta':'a bite',
	'Heru':'Lord',
	'Nehtë':'Spearhead',
	'Mahalma':'Throne',
	'Hellë':'Sky',
	'Tihtala':'Blinking',
	'Hlócë':'Snake',
	'Hísië':'Mist',
	'Elda':'Elf',
	'Vala':'Angel',
	'Ainu':'Spirit',
	'Noldo':'The name of an elf',
	'Valië':'Female angel',
	'Elen':'Star',
	'Casar':'Dwarf',
	'Minë':'One',
	'Anar':'The sun',
	'Isil':'The moon',
	'Ar':'And',
	'Lië':'People, race',
	'Vendë':'Maiden',
	'Rocco':'Horse',
	'Aran':'King',
	'Tári':'Queen',
	'Tasar':'Willow',
	'Nu':'Under',
	'Ciryar':'Ship',
	'Sar':'Pebble',
	'Aiwë':'Bird',
	'Talan':'Floor',
	'Nér':'Man',
	'Nís':'Woman',
	'Alda':'Tree',
	'Oron':'Mountain',
	'Atta':'Two',
	'Neldë':'Three',
	'Ná':'Is',
	'Nar':'Are',
	'Vanya':'Beautiful',
	'Alta':'Big',
	'Taura':'Mighty',
	'Saila':'Wise',
	'Úmëa':'Evil',
	'Carnë':'Red',
	'Ninquë':'White',
	'Morë':'Black',
	'Firin':'Dead',
}

# exported variables

# variables
var _ignore
var _working_list := {}
var _questions := []

# onready variables
onready var _question_label := $QuestionLabel
onready var _answer_buttons := $AnswerButtons

func _ready()->void:
	randomize()
	_working_list = SINGLE_FORMS
	for question in _working_list:
		_questions.append(question)
	_generate_question()


func _generate_question()->void:
	var index := randi()%_questions.size()
	var question:String = _questions[index]
	var answer:String = _working_list[question]
	_questions.remove(index)
	var answers = [answer]
	var steev := _working_list.keys()
	steev.erase(answer)
	for x in 3:
		index = randi()%steev.size()
		var q:String = steev[index]
		var fake_answer:String = _working_list[q]
		answers.append(fake_answer)
		steev.remove(index)
	answers.shuffle()
	_answer_buttons.set_answers(answers, answer)
	_question_label.text = question



func _on_AnswerButtons_correct_answer_given()->void:
	_generate_question()
