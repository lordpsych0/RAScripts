// Corpse Party
// #ID = 3541

//#region Variables
//---Chapters start at 0, end at 0xe (14)
_ch1 = 0
_ch2 = 1
_ch3 = 2
_ch4 = 3
_ch5 = 4
_chEX1 = 5
_chEX2 = 6
_chEX3 = 7
_chEX4 = 8
_chEX5 = 9
_chEX6 = 10
_chEX7 = 11
_chEX8 = 12
_chEX9 = 13
_chEX10 = 14

//-Endings
_edCH1T = 0
_edCH1W1 = 1
_edCH1W2 = 2

_edCH2T = 3
_edCH2W1 = 4
_edCH2W2 = 5
_edCH2W3 = 6
_edCH2W4 = 7

_edCH3T = 8
_edCH3W1 = 9
_edCH3W2 = 10
_edCH3W3 = 11
_edCH3W4 = 12

_edCH4T = 13
_edCH4W1 = 14
_edCH4W2 = 15
_edCH4W3 = 16
_edCH4W4 = 17
_edCH4A = 18

_edCH5T = 19
_edCH5A = 20
_edCH5W1 = 21
_edCH5W2 = 22
_edCH5W3 = 23
_edCH5W4 = 24
_edCH5W5 = 25
_edCH5W6 = 26

_edExtraCH = [0xcf095f, 0xcf096e, 0xcf097d, 0xcf098c,
			0xcf099b, 0xcf09aa, 0xcf09b9, 0xcf09c8,
			0xcf09d7, 0xcf09e6]
			
_xxGlitchedNametagxx = byte(0xcf08d3)

//#endregion

//#region Dictionaries
_dictCorpses = {
	_ch1: [0xcf08b2, 0xcf08b3, 0xcf08ac, 0xcf08ad, 
		0xcf08ae, 0xcf08af],
	_ch2: [0xcf0888, 0xcf0889, 0xcf088a, 0xcf088b, 
		0xcf089d, 0xcf08a6],
	_ch3: [0xcf0885, 0xcf088c, 0xcf0897, 0xcf0898,
		0xcf089e, 0xcf089f, 0xcf08aa, 0xcf08b0,
		0xcf08b6, 0xcf08b8, 0xcf08b9, 0xcf08ba,
		0xcf08bb, 0xcf08bd, 0xcf08c1, 0xcf08c7],
	_ch4: [0xcf088f, 0xcf0895, 0xcf0896, 0xcf089a,
		0xcf089b, 0xcf089c, 0xcf08a0, 0xcf08a3,
		0xcf08b5, 0xcf08b7, 0xcf08bc, 0xcf08bf,
		0xcf08c0, 0xcf08c8, 0xcf08ca, 0xcf08cb],
	_ch5: [0xcf0886, 0xcf0887, 0xcf088d, 0xcf088e, 
		0xcf0890, 0xcf0891, 0xcf0892, 0xcf0893,
		0xcf0894, 0xcf08a1, 0xcf08a2, 0xcf08a4,
		0xcf08a7, 0xcf08a8, 0xcf08a9, 0xcf08ab,
		0xcf08b1, 0xcf08b4, 0xcf08be, 0xcf08c2,
		0xcf08c3, 0xcf08c4, 0xcf08c5, 0xcf08c6,
		0xcf08c9, 0xcf08cc, 0xcf08cd, 0xcf08ce,
		0xcf08cf, 0xcf08d0, 0xcf08d1, 0xcf08d2,
		0xcf08d4, 0xcf08d5, 0xcf08d6, 0xcf08d7,
		0xcf08d8, 0xcf08d9, 0xcf08da]
}

//----------------Name-----,--Address--,Val,Ch
_dictEndings = {
	_edCH1T: ["True End 1", 0xcf0914, 1, _ch1],
	_edCH1W1: ["Wrong End 2", 0xcf0915, 2, _ch1],
	_edCH1W2: ["Wrong End 3", 0xcf0916, 2, _ch1],

	_edCH2T: ["True End 1", 0xcf0923, 1, _ch2],
	_edCH2W1: ["Wrong End 2", 0xcf0924, 2, _ch2],
	_edCH2W2: ["Wrong End 3", 0xcf0925, 2, _ch2],
	_edCH2W3: ["Wrong End 4", 0xcf0926, 2, _ch2],
	_edCH2W4: ["Wrong End 5", 0xcf0927, 2, _ch2],

	_edCH3T: ["True End 1", 0xcf0932, 1, _ch3],
	_edCH3W1: ["Wrong End 2", 0xcf0933, 2, _ch3],
	_edCH3W2: ["Wrong End 3", 0xcf0934, 2, _ch3],
	_edCH3W3: ["Wrong End 4", 0xcf0935, 2, _ch3],
	_edCH3W4: ["Wrong End 5", 0xcf0936, 2, _ch3],

	_edCH4T: ["True End 1", 0xcf0941, 1, _ch4],
	_edCH4W1: ["Wrong End 2", 0xcf0942, 2, _ch4],
	_edCH4W2: ["Wrong End 3", 0xcf0943, 2, _ch4],
	_edCH4W3: ["Wrong End 4", 0xcf0944, 2, _ch4],
	_edCH4W4: ["Wrong End 5", 0xcf0945, 2, _ch4],
	_edCH4A: ["Extra End 6", 0xcf0946, 3, _ch4],

	_edCH5T: ["True End 1", 0xcf0950, 1, _ch5],
	_edCH5A: ["Other End 2", 0xcf0951, 3, _ch5],
	_edCH5W1: ["Wrong End 3", 0xcf0952, 2, _ch5],
	_edCH5W2: ["Wrong End 4", 0xcf0953, 2, _ch5],
	_edCH5W3: ["Wrong End 5", 0xcf0954, 2, _ch5],
	_edCH5W4: ["Wrong End 6", 0xcf0955, 2, _ch5],
	_edCH5W5: ["Wrong End 7", 0xcf0956, 2, _ch5],
	_edCH5W6: ["Wrong End 8", 0xcf0957, 2, _ch5]
}

_dictStar = {
	0: "☆" //-★
}

//#endregion

//#region Memory Accessors
chapter1 = byte(0xcf3604)
chapter2 = byte(0xd08324)
titlePointer = dword(0xcf3610)
titleValidation2 = dword(0xd08438)
map1 = byte(0xcf3608)
map2 = byte(0xd08434)

//#endregion

//#region Functions
function inChapter(chap) => chapter1 == chap && chapter2 == chap && titleValidation2 > 0

function inTitle() => titleValidation2 == 0

function gotEnding(end) {
	endObj = _dictEndings[end]
	endAdd = endObj[1]
	endVal = endObj[2]
	
	return prev(byte(endAdd)) == 0 && byte(endAdd) != 0
}

function endingVal(end) => byte(_dictEndings[end][1])
function endingExVal(end) => byte(_edExtraCH[end])

function everyItem(items, resetCondition){
	conditionsArray = []
	altConditionsArray = []
		
	for item in items{
		array_push(conditionsArray, once(byte(item) == 1))
		array_push(altConditionsArray, once(prev(byte(item)) == 1))
	}
	
	array_push(conditionsArray, always_false())
	array_push(altConditionsArray, always_false())
	
	return never(resetCondition) && measured(tally(length(conditionsArray) - 1, conditionsArray)) && 
	(always_false() || (never(tally(length(altConditionsArray) - 1, altConditionsArray))))
}

function everyCondition(items){
	endings = 0
		
	for item in items{
		endings = endings + byte(item)
	}
	
	return measured(endings == length(items))
}

function countAll(array) {
	result = 0
	for key in array {
		for sub in array[key] {
			result = result + byte(sub)
		}
	}
	return result
}

function countOne(array) {
	result = 0
	for item in array {
		result = result + byte(item)
	}
	return result
}

//#endregion

//#region Achievement logic

function endingAchievement(id, chap, end, title, points){
		
	description = format("Finish Chapter {0} with {1}", chap + 1, _dictEndings[end][0])
	
	trigger = inChapter(chap)
			&& gotEnding(end)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function nameTagAchievement(id, chap, title, points){
		
	description = format("Find every Name Tag on Chapter {0}", chap + 1)
	
	trigger = inChapter(chap)
			&& everyItem(_dictCorpses[chap], inTitle())

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function extraEndAchievement(id, title, points){
		
	description = "Complete every EX Chapter"
	
	trigger = everyCondition(_edExtraCH)
			&& (always_false() 
				|| (inChapter(_chEX1) && prev(byte(_edExtraCH[_chEX1 - 5])) == 0)
				|| (inChapter(_chEX2) && prev(byte(_edExtraCH[_chEX2 - 5])) == 0)
				|| (inChapter(_chEX3) && prev(byte(_edExtraCH[_chEX3 - 5])) == 0)
				|| (inChapter(_chEX4) && prev(byte(_edExtraCH[_chEX4 - 5])) == 0)
				|| (inChapter(_chEX5) && prev(byte(_edExtraCH[_chEX5 - 5])) == 0)
				|| (inChapter(_chEX6) && prev(byte(_edExtraCH[_chEX6 - 5])) == 0)
				|| (inChapter(_chEX7) && prev(byte(_edExtraCH[_chEX7 - 5])) == 0)
				|| (inChapter(_chEX8) && prev(byte(_edExtraCH[_chEX8 - 5])) == 0)
				|| (inChapter(_chEX9) && prev(byte(_edExtraCH[_chEX9 - 5])) == 0)
				|| (inChapter(_chEX10) && prev(byte(_edExtraCH[_chEX10 - 5])) == 0))
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

//#endregion

//#region Leaderboard Logic


//#endregion

//#region Achievements
//-One achievement per ending (27 ch, points ?)
endingAchievement(174963, _ch1, _edCH1T, "The Dark Space", 5)
endingAchievement(174964, _ch1, _edCH1W1, "Throat", 2)
endingAchievement(174965, _ch1, _edCH1W2, "Hair", 1)

endingAchievement(174966, _ch2, _edCH2T, "Heavy Impact", 5)
endingAchievement(174967, _ch2, _edCH2W1, "Stare", 1)
endingAchievement(174968, _ch2, _edCH2W2, "Wire", 3)
endingAchievement(174969, _ch2, _edCH2W3, "Smile", 2)
endingAchievement(174970, _ch2, _edCH2W4, "Meat", 4)

endingAchievement(174971, _ch3, _edCH3T, "Strange Annex", 10)
endingAchievement(174972, _ch3, _edCH3W1, "Hole", 2)
endingAchievement(174973, _ch3, _edCH3W2, "Eye", 1)
endingAchievement(174974, _ch3, _edCH3W3, "Room", 5)
endingAchievement(174975, _ch3, _edCH3W4, "Goo", 2)

endingAchievement(174978, _ch4, _edCH4T, "Slaughter of Sorrow", 10)
endingAchievement(174976, _ch4, _edCH4W1, "Face", 1)
endingAchievement(174979, _ch4, _edCH4W2, "Scissors", 4)
endingAchievement(174980, _ch4, _edCH4W3, "Drain", 2)
endingAchievement(174977, _ch4, _edCH4W4, "Pool", 2)
endingAchievement(174981, _ch4, _edCH4A, "Great Teacher Yui", 5)

endingAchievement(174982, _ch5, _edCH5T, "Requiem for a Dream", 25)
endingAchievement(174983, _ch5, _edCH5A, "Big Brother...", 10)
endingAchievement(174984, _ch5, _edCH5W1, "Flame", 5)
endingAchievement(174985, _ch5, _edCH5W2, "Fate", 5)
endingAchievement(174986, _ch5, _edCH5W3, "Naomi?", 5)
endingAchievement(174987, _ch5, _edCH5W4, "Backstab", 5)
endingAchievement(174988, _ch5, _edCH5W5, "A New Sachiko", 5)
endingAchievement(174989, _ch5, _edCH5W6, "Loop", 5)

//-One achievement per chapter, name tags (5 ch, points ?)
nameTagAchievement(174990, _ch1, "Corpse Meetup", 5)
nameTagAchievement(174991, _ch2, "Corpse Reunion", 5)
nameTagAchievement(174992, _ch3, "Corpse Meeting", 10)
nameTagAchievement(174993, _ch4, "Corpse Gathering", 10)
nameTagAchievement(174994, _ch5, "Corpse Party", 25)

//-One achievement for beating all the EX chapters (1 cheevo, points 5)
extraEndAchievement(174995, "Bound Together For Eternity", 10)


//#endregion

//#region Leaderboards


//#endregion




//#region Rich Presence
rich_presence_conditional_display(inTitle(), "In the Title Screen [💀: {0}/83]", 
									rich_presence_value("val", countAll(_dictCorpses)))
									
rich_presence_conditional_display(chapter2 == _ch1, "Chapter 1 {1}{2}{3} [💀: {0}/6]", 
									rich_presence_value("val", countOne(_dictCorpses[_ch1])),
									rich_presence_lookup("end", endingVal(_edCH1T), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH1W1), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH1W2), _dictStar, "★")
									)
									
rich_presence_conditional_display(chapter2 == _ch2, "Chapter 2 {1}{2}{3}{4}{5} [💀: {0}/6]", 
									rich_presence_value("val", countOne(_dictCorpses[_ch2])),
									rich_presence_lookup("end", endingVal(_edCH2T), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH2W1), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH2W2), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH2W3), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH2W4), _dictStar, "★")
									)
									
rich_presence_conditional_display(chapter2 == _ch3, "Chapter 3 {1}{2}{3}{4}{5} [💀: {0}/16]", 
									rich_presence_value("val", countOne(_dictCorpses[_ch3])),
									rich_presence_lookup("end", endingVal(_edCH3T), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH3W1), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH3W2), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH3W3), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH3W4), _dictStar, "★")
									)

rich_presence_conditional_display(chapter2 == _ch4, "Chapter 4 {1}{2}{3}{4}{5}{6} [💀: {0}/16]", 
									rich_presence_value("val", countOne(_dictCorpses[_ch4])),
									rich_presence_lookup("end", endingVal(_edCH4T), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH4W1), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH4W2), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH4W3), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH4W4), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH4A), _dictStar, "★")
									)
									
rich_presence_conditional_display(chapter2 == _ch5, "Chapter 5 {1}{2}{3}{4}{5}{6}{7}{8} [💀: {0}/39]", 
									rich_presence_value("val", countOne(_dictCorpses[_ch5])),
									rich_presence_lookup("end", endingVal(_edCH5T), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH5A), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH5W1), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH5W2), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH5W3), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH5W4), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH5W5), _dictStar, "★"),
									rich_presence_lookup("end", endingVal(_edCH5W6), _dictStar, "★")
									)

rich_presence_conditional_display(chapter2 == _chEX1, "EX Chapter 1 {0}",
									rich_presence_lookup("end", endingExVal(0), _dictStar, "★"))

rich_presence_conditional_display(chapter2 == _chEX2, "EX Chapter 2 {0}",
									rich_presence_lookup("end", endingExVal(1), _dictStar, "★"))
									
rich_presence_conditional_display(chapter2 == _chEX3, "EX Chapter 3 {0}",
									rich_presence_lookup("end", endingExVal(2), _dictStar, "★"))

rich_presence_conditional_display(chapter2 == _chEX4, "EX Chapter 4 {0}",
									rich_presence_lookup("end", endingExVal(3), _dictStar, "★"))
									
rich_presence_conditional_display(chapter2 == _chEX5, "EX Chapter 5 {0}",
									rich_presence_lookup("end", endingExVal(4), _dictStar, "★"))
									
rich_presence_conditional_display(chapter2 == _chEX6, "EX Chapter 6 {0}",
									rich_presence_lookup("end", endingExVal(5), _dictStar, "★"))
									
rich_presence_conditional_display(chapter2 == _chEX7, "EX Chapter 7 {0}",
									rich_presence_lookup("end", endingExVal(6), _dictStar, "★"))
									
rich_presence_conditional_display(chapter2 == _chEX8, "EX Chapter 8 {0}",
									rich_presence_lookup("end", endingExVal(7), _dictStar, "★"))
									
rich_presence_conditional_display(chapter2 == _chEX9, "EX Chapter 9 {0}",
									rich_presence_lookup("end", endingExVal(8), _dictStar, "★"))
									
rich_presence_conditional_display(chapter2 == _chEX10, "EX Chapter 10 {0}",
									rich_presence_lookup("end", endingExVal(9), _dictStar, "★"))
									
rich_presence_display("Playing Corpse Party")

//#endregion
