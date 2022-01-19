// Hatsune Miku: Project DIVA
// #ID = 3921
//- Hatsune_Miku_-_Project_Diva_JPN_PSP-NRP
//- 8ecc08f9aa914eac03aad37744996156
//- Hatsune_Miku_-_Project_Diva_JPN_PSP-NRP + https://divafanproject.blogspot.com/2020/06/english-patch-project-diva.html
//- https://drive.google.com/file/d/1NC6d5LSCdgFslVkBvNeffIDaVdePjX2l/view?usp=sharing
//- 77c8b2e896c2c0eee8e1c5ee8217f296


//#region Variables

//-Difficulty
_dEasy = 0
_dNormal = 1
_dHard = 2

//-Song End Result
_serNotClear = 0
_serCheap = 1
_serStandard = 2
_serGreat = 3
_serPerfect = 4

//-Songs
_sLoveIsWar = 0x0
_sWorldMine = 0x1
_sThatOneSecond = 0x2
_sJaded = 0x3
_sMelt = 0x4
_sFarAway = 0x5
_sStrobeNights = 0x6
_sStarStory = 0x7
_sLastNight = 0x8
_sPackaged = 0x9
_sRainSweetDrops = 0xa
_sMarginal = 0xb
_sGrumpyWaltz = 0xc
_sMiraclePaint = 0xd
_sDreamingLeaf = 0xe
_sVocaloidInLove = 0xf
_sSongDesertMiku = 0x10
_sSongLifeMiku = 0x11
_sWhiteDove = 0x12
_sMoon = 0x13
_sMikuBacteria = 0x14
_sSecretGarden = 0x15
_sCocoaGirls = 0x16
_sVelvetArabesque = 0x17
_sUpdatingLoveList = 0x18
_sSakuraNoAme = 0x19
_sIevanPolkka = 0x1a
_sMikuMiku = 0x1b
_sRequiemPhantasma = 0x1c
_sElectricAngel = 0x1d
_sYourDiva = 0x1e
_sVanishingMiku = 0x1f
_sSongDesertRin = 0x20
_sSongLifeRin = 0x21
_sSongDesertLen = 0x22
_sSongLifeLen = 0x23

//-Modules
_mHatsuneMiku = 0x0
_mYowaneHaku = 0x1
_mAkitaNeru = 0x2
_mMeikoStyle = 0x3
_mRinStyle = 0x4
_mSpaceCH5 = 0x5
_mSpaceCH = 0x6
_mGalliaSquad = 0x7
_mPStyleRP = 0x8
_mPStyleMG = 0x9
_mPStyleLP = 0xa
_mPStyleFB = 0xb
_mPStyleIS = 0xc
_mPStyleCW = 0xd
_mPStylePB = 0xe
_mPStyleCG = 0xf
_mCheer = 0x10
_mPlugIn = 0x11
_mGothic = 0x12
_mPrincess = 0x13
_mMiko = 0x14
_mCatGirl = 0x15
_mSleepy = 0x16
_mHeartHunter = 0x17
_mVocal = 0x18
_mPunk = 0x19
_mDancer = 0x1a
_mStar = 0x1b
_mFairy = 0x1c
_mSchool = 0x1d
_mSnow = 0x1e
_mArabian = 0x1f
_mElegant = 0x20
_mChina = 0x21
_mMagician = 0x22
_mWhiteDress = 0x23
_mPirate = 0x24
_mVN02 = 0x25
_mGalaxy = 0x26
_mHatsuneMiku2 = 0x27
_mKagamineRin = 0x28
_mKagamineLen = 0x29
_mMegurineLuka = 0x2a
_mSakineMeiko = 0x2b
_mMeiko = 0x2c
_mKaito = 0x2d
_mHatsuneMikuSwimwearSchool = 0x2e
_mHatsuneMikuSwimwear = 0x2f
_mKagamineRinSwimwear = 0x30
_mKagamineLenSwimwear = 0x31
_mMegurineLukaSwimwear = 0x32
_mMeikoSwimwear = 0x33
_mKaitoSwimwear = 0x34

//-Flags
_fSongs = 0
_fRoomStyle = 1
_fRoomAccessory = 2
_fWallAccessory = 3
_fFloorAccessory = 4
_fVisualLibrary = 5

_fAllRooms = 6
_fModules = 7

//-Songs cleared and Max scores
_fsClearedStandard = 0xc2c4d4
_fsClearedGreat = 0xc2c4d6
_fsClearedPerfect = 0xc2c4d8
_fsMaxScore = 0xc2c6f8
_fsMaxCombo = 0xc2c6fc

//-Offsets
poffset = 0xF8000000
mscoreSongOffset = 0x690
mscoreDifficultyOffset = 0x230
//#endregion

//#region Dictionaries

_dictSongs = {
	_sWorldMine: "World is Mine",
	_sJaded: "Jaded",
	_sLoveIsWar: "Love is War",
	_sThatOneSecond: "That One Second in Slow Motion",
	_sMelt: "Melt",
	_sFarAway: "Far Away",
	_sStrobeNights: "Strobe Nights",
	_sStarStory: "Star Story",
	_sLastNight: "Last Night, Good Night",
	_sPackaged: "Packaged",
	_sRainSweetDrops: "Rain With A Chance of Sweet*Drops",
	_sMiraclePaint: "Miracle Paint",
	_sGrumpyWaltz: "Grumpy Waltz",
	_sMarginal: "Marginal",
	_sDreamingLeaf: "Dreaming Leaf",
	_sSongDesertMiku: "Song of Wastelands, Forest and Magic",
	_sSongDesertLen: "Song of Wastelands, Forest and Magic (Len)",
	_sSongDesertRin: "Song of Wastelands, Forest and Magic (Rin)",
	_sWhiteDove: "White Dove",
	_sMoon: "Moon",
	_sMikuBacteria: "Beware of Miku Miku Bacteria",
	_sSongLifeMiku: "Song of Life",
	_sSongLifeLen: "Song of Life (Len)",
	_sSongLifeRin: "Song of Life (Rin)",
	_sSecretGarden: "The Secret Garden",
	_sCocoaGirls: "Dear Cocoa Girls",
	_sVelvetArabesque: "Velvet Arabesque",
	_sUpdatingLoveList: "Updating My Love List?",
	_sSakuraNoAme: "Sakura no Ame -standard edit-",
	_sVocaloidInLove: "VOC@LOID in Love",
	_sIevanPolkka: "Ievan Polkka",
	_sYourDiva: "I'm Your Diva",
	_sElectricAngel: "Electric Angel",
	_sVanishingMiku: "The Disappearance of Hatsune Miku",
	_sRequiemPhantasma: "Requiem for the Phantasma",
	_sMikuMiku: "I'll Miku Miku You (For Reals)"	
}

_dictSongStarsEasy = {
	_sLoveIsWar: "★★☆☆☆",	
	_sWorldMine: "★☆☆☆☆",
	_sThatOneSecond: "★★★☆☆",
	_sJaded: "★★☆☆☆",
	_sMelt: "★★★☆☆",
	_sFarAway: "★☆☆☆☆",
	_sStrobeNights: "★★☆☆☆",
	_sStarStory: "★★☆☆☆",
	_sLastNight: "★★☆☆☆",
	_sPackaged: "★★☆☆☆",
	_sRainSweetDrops: "★☆☆☆☆",
	_sMarginal: "★★★☆☆",
	_sGrumpyWaltz: "★★☆☆☆",
	_sMiraclePaint: "★★☆☆☆",
	_sDreamingLeaf: "★★★☆☆",
	_sVocaloidInLove: "★★★☆☆",
	_sSongDesertMiku: "★☆☆☆☆",
	_sSongLifeMiku: "★★★☆☆",
	_sWhiteDove: "★★☆☆☆",
	_sMoon: "★★☆☆☆",
	_sMikuBacteria: "★★★☆☆",
	_sSecretGarden: "★☆☆☆☆",
	_sCocoaGirls: "★☆☆☆☆",
	_sVelvetArabesque: "★★☆☆☆",
	_sUpdatingLoveList: "★★☆☆☆",
	_sSakuraNoAme: "★★★☆☆",
	_sIevanPolkka: "★★☆☆☆",
	_sMikuMiku: "★★★☆☆",
	_sRequiemPhantasma: "★★★★☆",
	_sElectricAngel: "★★☆☆☆",
	_sYourDiva: "★★☆☆☆",
	_sVanishingMiku: "★★★☆☆",
	_sSongDesertRin: "★☆☆☆☆",
	_sSongLifeRin: "★★★☆☆",
	_sSongDesertLen: "★☆☆☆☆",
	_sSongLifeLen: "★★★☆☆"
}

_dictSongStarsNormal = {	
	_sLoveIsWar: "★★★☆☆",
	_sWorldMine: "★★☆☆☆",
	_sThatOneSecond: "★★★★☆",
	_sJaded: "★★★☆☆",
	_sMelt: "★★★★☆",
	_sFarAway: "★★☆☆☆",
	_sStrobeNights: "★★★☆☆",
	_sStarStory: "★★★☆☆",
	_sLastNight: "★★★☆☆",
	_sPackaged: "★★★☆☆",
	_sRainSweetDrops: "★★☆☆☆",
	_sMarginal: "★★★★☆",
	_sGrumpyWaltz: "★★★☆☆",
	_sMiraclePaint: "★★★☆☆",
	_sDreamingLeaf: "★★★★☆",
	_sVocaloidInLove: "★★★★☆",
	_sSongDesertMiku: "★★☆☆☆",
	_sSongLifeMiku: "★★★★☆",
	_sWhiteDove: "★★★☆☆",
	_sMoon: "★★★☆☆",
	_sMikuBacteria: "★★★★☆",
	_sSecretGarden: "★★☆☆☆",
	_sCocoaGirls: "★★☆☆☆",
	_sVelvetArabesque: "★★★☆☆",
	_sUpdatingLoveList: "★★★☆☆",
	_sSakuraNoAme: "★★★★☆",
	_sIevanPolkka: "★★★☆☆",
	_sMikuMiku: "★★★★☆",
	_sRequiemPhantasma: "★★★★★",
	_sElectricAngel: "★★★☆☆",
	_sYourDiva: "★★★☆☆",
	_sVanishingMiku: "★★★★★",
	_sSongDesertRin: "★★☆☆☆",
	_sSongLifeRin: "★★★★☆",
	_sSongDesertLen: "★★☆☆☆",
	_sSongLifeLen: "★★★★☆"
}

_dictSongStarsHard = {
	_sLoveIsWar: "★★★★☆",
	_sWorldMine: "★★★☆☆",
	_sThatOneSecond: "★★★★★",
	_sJaded: "★★★★☆",
	_sMelt: "★★★★★",
	_sFarAway: "★★★☆☆",
	_sStrobeNights: "★★★★☆",
	_sStarStory: "★★★★☆",
	_sLastNight: "★★★★☆",
	_sPackaged: "★★★★☆",
	_sRainSweetDrops: "★★★☆☆",
	_sMarginal: "★★★★★",
	_sGrumpyWaltz: "★★★★☆",
	_sMiraclePaint: "★★★★☆",
	_sDreamingLeaf: "★★★★★",
	_sVocaloidInLove: "★★★★★",
	_sSongDesertMiku: "★★★☆☆",
	_sSongLifeMiku: "★★★★★",
	_sWhiteDove: "★★★★☆",
	_sMoon: "★★★★☆",
	_sMikuBacteria: "★★★★★",
	_sSecretGarden: "★★★☆☆",
	_sCocoaGirls: "★★★☆☆",
	_sVelvetArabesque: "★★★★☆",
	_sUpdatingLoveList: "★★★★☆",
	_sSakuraNoAme: "★★★★★",
	_sIevanPolkka: "★★★★☆",
	_sMikuMiku: "★★★★★",
	_sRequiemPhantasma: "★★★★★★",
	_sElectricAngel: "★★★★★",
	_sYourDiva: "★★★★☆",
	_sVanishingMiku: "★★★★★★★",
	_sSongDesertRin: "★★★☆☆",
	_sSongLifeRin: "★★★★★",
	_sSongDesertLen: "★★★☆☆",
	_sSongLifeLen: "★★★★★"	
}

_dictModuleNames = {
	_mHatsuneMiku: "Miku",
	_mYowaneHaku: "Yowane Haku",
	_mAkitaNeru: "Akita Neru",
	_mMeikoStyle: "Meiko styled Miku",
	_mRinStyle: "Rin styled Miku",
	_mSpaceCH5: "Space CH5 Miku",
	_mSpaceCH: "Space CH39 Miku",
	_mGalliaSquad: "Gallia Squad Miku",
	_mPStyleRP: "Rose Pink Miku",
	_mPStyleMG: "Green Mint Miku",
	_mPStyleLP: "Lavender Purple Miku",
	_mPStyleFB: "Felicia Blue Miku",
	_mPStyleIS: "Ice Silver Miku",
	_mPStyleCW: "Ceramic White Miku",
	_mPStylePB: "Piano Black Miku",
	_mPStyleCG: "Champagne Gold Miku",
	_mCheer: "Cheerleader Miku",
	_mPlugIn: "Plug-in Miku",
	_mGothic: "Gothic Miku",
	_mPrincess: "Princess Miku",
	_mMiko: "Shrine Maiden Miku",
	_mCatGirl: "Neko Miku",
	_mSleepy: "Sleepy Miku",
	_mHeartHunter: "Heart Hunter Miku",
	_mVocal: "Vocal Miku",
	_mPunk: "Punk Miku",
	_mDancer: "Dancer Miku",
	_mStar: "Star Miku",
	_mFairy: "Fairy Miku",
	_mSchool: "School Miku",
	_mSnow: "Winter Miku",
	_mArabian: "Arabian Miku",
	_mElegant: "Sakura Blossom Miku",
	_mChina: "Chinese Miku",
	_mMagician: "Magician Miku",
	_mWhiteDress: "Wedding Miku",
	_mPirate: "Pirate Miku",
	_mVN02: "VN02 Miku",
	_mGalaxy: "Galaxy Miku",
	_mHatsuneMiku2: "Hatsune Miku",
	_mKagamineRin: "Kagamine Rin",
	_mKagamineLen: "Kagamine Len",
	_mMegurineLuka: "Megurine Luka",
	_mSakineMeiko: "Sakine Meiko",
	_mMeiko: "Meiko",
	_mKaito: "Kaito",
	_mHatsuneMikuSwimwearSchool: "🩱 School Miku",
	_mHatsuneMikuSwimwear: "👙 Miku",
	_mKagamineRinSwimwear: "👙 Rin",
	_mKagamineLenSwimwear: "🩳 Len",
	_mMegurineLukaSwimwear: "👙 Luka",
	_mMeikoSwimwear: "🩱 Meiko",
	_mKaitoSwimwear: "🩳 Kaito"
}

_dictDifficulty = {
	_dEasy: "Easy",
	_dNormal: "Normal",
	_dHard: "Hard"
}

_dictModuleAddress = {
	_mHatsuneMiku: [2, 0xc3b11f],
	_mYowaneHaku: [3, 0xc3b11f],
	_mAkitaNeru: [4, 0xc3b11f],
	_mMeikoStyle: [5, 0xc3b11f],
	_mRinStyle: [6, 0xc3b11f],
	_mSpaceCH5: [7, 0xc3b11f],
	_mSpaceCH: [0, 0xc3b120],
	_mGalliaSquad: [1, 0xc3b120],
	_mPStyleRP: [2, 0xc3b120],
	_mPStyleMG: [3, 0xc3b120],
	_mPStyleLP: [4, 0xc3b120],
	_mPStyleFB: [5, 0xc3b120],
	_mPStyleIS: [6, 0xc3b120],
	_mPStyleCW: [7, 0xc3b120],
	_mPStylePB: [0, 0xc3b121],
	_mPStyleCG: [1, 0xc3b121],
	_mCheer: [2, 0xc3b121],
	_mPlugIn: [3, 0xc3b121],
	_mGothic: [4, 0xc3b121],
	_mPrincess: [5, 0xc3b121],
	_mMiko: [6, 0xc3b121],
	_mCatGirl: [7, 0xc3b121],
	_mSleepy: [0, 0xc3b122],
	_mHeartHunter: [1, 0xc3b122],
	_mVocal: [2, 0xc3b122],
	_mPunk: [3, 0xc3b122],
	_mDancer: [4, 0xc3b122],
	_mStar: [5, 0xc3b122],
	_mFairy: [6, 0xc3b122],
	_mSchool: [7, 0xc3b122],
	_mSnow: [0, 0xc3b123],
	_mArabian: [1, 0xc3b123],
	_mElegant: [2, 0xc3b123],
	_mChina: [3, 0xc3b123],
	_mMagician: [4, 0xc3b123],
	_mWhiteDress: [5, 0xc3b123],
	_mPirate: [6, 0xc3b123],
	_mVN02: [7, 0xc3b123],
	_mGalaxy: [0, 0xc3b124],
	_mHatsuneMiku2: [1, 0xc3b124],
	_mKagamineRin: [2, 0xc3b124],
	_mKagamineLen: [3, 0xc3b124],
	_mMegurineLuka: [4, 0xc3b124],
	_mSakineMeiko: [5, 0xc3b124],
	_mMeiko: [6, 0xc3b124],
	_mKaito: [7, 0xc3b124],
	_mHatsuneMikuSwimwearSchool: [0, 0xc3b125],
	_mHatsuneMikuSwimwear: [1, 0xc3b125],
	_mKagamineRinSwimwear: [2, 0xc3b125],
	_mKagamineLenSwimwear: [3, 0xc3b125],
	_mMegurineLukaSwimwear: [4, 0xc3b125],
	_mMeikoSwimwear: [5, 0xc3b125],
	_mKaitoSwimwear: [6, 0xc3b125]
}

_dictFlags = {
	_fSongs: [0xc3b168, 0xc3b16c, 0, 3],
	_fRoomStyle: [0xc3b110, 0xc3b111, 0, 1],
	_fRoomAccessory: [0xc3b111, 0xc3b118, 2, 3],
	_fWallAccessory: [0xc3b118, 0xc3b11b, 4, 5],
	_fFloorAccessory: [0xc3b11b, 0xc3b11f, 6, 1],
	_fVisualLibrary: [0xc3b185, 0xc3b19d, 0, 5],
	_fAllRooms: [0xc3b110, 0xc3b11f, 0, 1],
	_fModules: [0xc3b11f, 0xc3b125, 2, 6]
}

_dictGreatSongs = {
	_sWorldMine: 10,
	_sJaded: 10,
	_sLoveIsWar: 10,
	_sThatOneSecond: 10,
	_sMelt: 10,
	_sFarAway: 10,
	_sStrobeNights: 10,
	_sStarStory: 10,
	_sLastNight: 10,
	_sPackaged: 10,
	_sRainSweetDrops: 10,
	_sMiraclePaint: 10,
	_sGrumpyWaltz: 10,
	_sMarginal: 10,
	_sDreamingLeaf: 10,
	_sSongDesertMiku: 10,
	_sSongDesertLen: 10,
	_sSongDesertRin: 10,
	_sWhiteDove: 10,
	_sMoon: 10,
	_sMikuBacteria: 10,
	_sSongLifeMiku: 10,
	_sSongLifeLen: 10,
	_sSongLifeRin: 10,
	_sSecretGarden: 10,
	_sCocoaGirls: 10,
	_sVelvetArabesque: 10,
	_sUpdatingLoveList: 10,
	_sSakuraNoAme: 10,
	_sVocaloidInLove: 10,
	_sIevanPolkka: 10,
	_sYourDiva: 10,
	_sElectricAngel: 10,
	_sVanishingMiku: 25,
	_sRequiemPhantasma: 25,
	_sMikuMiku: 10
}


//#endregion

//#region Memory Accessors
visualLibraryPointer = tbyte(0xc6a60c)
VLPage = byte(visualLibraryPointer + poffset + 0xe04)
VLCol = byte(visualLibraryPointer + poffset + 0xe08)
VLRow = byte(visualLibraryPointer + poffset + 0xe0c)

//-Static Song variables
songPlayDifficulty = byte(0xc2c494)
songPlayID = byte(0xc2c498)
currentModule = byte(0xc2c4a4)

songPointer = dword(0xc49700)

//-From 0x0 to 0xf
songLife = byte(songPointer + poffset + 0xB9F4)

//-Shows the final result. Use on LB Submit
songResultShownFlag = byte(songPointer + poffset + 0xBA3C)

songResultCool = dword(songPointer + poffset + 0xBA58)
songResultFine = dword(songPointer + poffset + 0xBA5C)
songResultSafe = dword(songPointer + poffset + 0xBA60)
songResultSad = dword(songPointer + poffset + 0xBA64)
songResultWorst = dword(songPointer + poffset + 0xBA68)
songResultCombo = dword(songPointer + poffset + 0xBA6c)
songResultChance = dword(songPointer + poffset + 0xBA70)
songResultScore = dword(songPointer + poffset + 0xBA74)

songPlayingID = byte(songPointer + poffset + 0xBACC)
//-Use this to start a LB
songEndedFlag = byte(songPointer + poffset + 0xBB2A) 
songEndResult = byte(songPointer + poffset + 0xBB38) //-0, 1, 2, 3, 4

//-Edit Mode
editModePointer1 = tbyte(0xc2c488)
editModePointer2 = tbyte(0xc2c48c)

//#endregion

//#region Functions

function songClear(address, song, diff) => word(address 
								+ mscoreSongOffset * song
								+ mscoreDifficultyOffset * diff)
								
function songMax(address, song, diff) => dword(address 
								+ mscoreSongOffset * song
								+ mscoreDifficultyOffset * diff)

function clearedGreatOrPerfect(song, diff){
	return songClear(_fsClearedGreat, song, diff) 
			+ songClear(_fsClearedPerfect, song, diff) > 0
}


function firstTimeClearedGreatOrPerfect(song, diff){
	return songPlayDifficulty == diff &&
			prev(songClear(_fsClearedGreat, song, diff)) 
			+ prev(songClear(_fsClearedPerfect, song, diff)) == 0
}

function timesCleared(song, diff){
	return songClear(_fsClearedStandard, song, diff)
		+ songClear(_fsClearedGreat, song, diff)
		+ songClear(_fsClearedPerfect, song, diff)
}

function gotModule(moduleIndex){
	module = _dictModuleAddress[moduleIndex]
	
	return prev(bit(module[0], module[1])) == 0
			&& bit(module[0], module[1]) == 1
}

function flagCounter(flags) {
	startAddress = flags[0]
	endAddress = flags[1]
	startBit = flags[2]
	endBit = flags[3]

	result = 0	
	
	if (startAddress == endAddress){
		for nbit in range(startBit, endBit){
			result = result + bit(nbit, startAddress)			
		}
	}
	else{
		for address in range(startAddress, endAddress){				
			if (address == startAddress && startBit > 0){			
				for nbit in range(startBit, 7){
					result = result + bit(nbit, address)
				}
			}
			else {
				if (address == endAddress && endBit < 7){
					for nbit in range(0, endBit){
						result = result + bit(nbit, address)
					}
				}
				else{
					result = result + bitcount(address)
				}
			}
		}
	}
	
	return result
}

function unlockedBitflags(flags){
	startAddress = flags[0]
	endAddress = flags[1]
	startBit = flags[2]
	endBit = flags[3]

	result = 0
	totalFlags = 0
	
	if (startAddress == endAddress){
		for nbit in range(startBit, endBit){
			result = result + bit(nbit, startAddress)
			totalFlags = totalFlags + 1
		}
	}
	else{
		for address in range(startAddress, endAddress){				
			if (address == startAddress && startBit > 0){			
				for nbit in range(startBit, 7){
					result = result + bit(nbit, address)
					totalFlags = totalFlags + 1
				}
			}
			else {
				if (address == endAddress && endBit < 7){
					for nbit in range(0, endBit){
						result = result + bit(nbit, address)
						totalFlags = totalFlags + 1
					}
				}
				else{
					result = result + bitcount(address)
					totalFlags = totalFlags + 8
				}
			}
		}
	}
	return measured(result == totalFlags)
}

function prevUnlockedBitflags(flags){
	startAddress = flags[0]
	endAddress = flags[1]
	startBit = flags[2]
	endBit = flags[3]

	result = 0
	totalFlags = 0
	
	if (startAddress == endAddress){
		for nbit in range(startBit, endBit){
			result = result + prev(bit(nbit, startAddress))
			totalFlags = totalFlags + 1
		}
	}
	else{
		for address in range(startAddress, endAddress){				
			if (address == startAddress && startBit > 0){			
				for nbit in range(startBit, 7){
					result = result + prev(bit(nbit, address))
					totalFlags = totalFlags + 1
				}
			}
			else {
				if (address == endAddress && endBit < 7){
					for nbit in range(0, endBit){
						result = result + prev(bit(nbit, address))
						totalFlags = totalFlags + 1
					}
				}
				else{
					result = result + prev(bitcount(address))
					totalFlags = totalFlags + 8
				}
			}
		}
	}
	
	return result == totalFlags - 1
}





function inEditMode() => editModePointer1 != 0 && editModePointer2 != 0
function notInEditMode() => editModePointer1 == 0 && editModePointer2 == 0
//#endregion

//#region Achievement logic
function greatSongAchievement(id, song, title, points){

	description = format("Get Great or better on [{0}] on all 3 difficulties", _dictSongs[song])
	
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayID == song
			&& prev(songEndedFlag) == 0
			&& songEndedFlag == 1
			&& clearedGreatOrPerfect(song, _dEasy)
			&& clearedGreatOrPerfect(song, _dNormal)
			&& clearedGreatOrPerfect(song, _dHard)
			&& (always_false() 
				|| firstTimeClearedGreatOrPerfect(song, _dEasy)
				|| firstTimeClearedGreatOrPerfect(song, _dNormal)
				|| firstTimeClearedGreatOrPerfect(song, _dHard)
				)

	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)	
}

function moduleAchievement(id, module, title, description, points){
		
	trigger = songPointer > 0
			&& notInEditMode()
			&& songEndedFlag == 1
			&& gotModule(module)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)	
}

function greatPerfectAchievement(id, ser, song, title, points){
		
	if (ser == _serGreat){
		description = format("Get Great or better on [{0}], Hard difficulty", _dictSongs[song])
	}
	if (ser == _serPerfect){
		description = format("Get Perfect on [{0}], Hard difficulty", _dictSongs[song])
	}
		
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayID == song
			&& songEndedFlag == 1
			&& songPlayDifficulty == _dHard
			&& songEndResult >= ser
			&& prev(songResultShownFlag) == 0
			&& songResultShownFlag == 1

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function perfectAchievement(id, title, points){
		
	description = "Get a Perfect combo on any song, Normal or Hard"
	trigger = songPointer > 0
			&& notInEditMode()
			&& songEndedFlag == 1
			&& songPlayDifficulty >= _dNormal
			&& songEndResult == 4
			&& prev(songResultShownFlag) == 0
			&& songResultShownFlag == 1

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function allFlags(id, flagIndex, title, description, points){
	
	flags = _dictFlags[flagIndex]
	
	trigger = unlockedBitflags(flags) 
			&& prevUnlockedBitflags(flags)
	
	if (flagIndex != _fVisualLibrary){
		trigger = trigger 
				&& songPointer > 0
				&& notInEditMode()
				&& songEndedFlag == 1
				&& songResultShownFlag == 1
	}

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}
//#endregion

//#region Leaderboard Logic
function songLeaderboard(song, diff){

	title = format("{0} ({1})", _dictSongs[song], _dictDifficulty[diff])
    description = format("Finish {0} on {1} with the highest score", _dictSongs[song], _dictDifficulty[diff])
		
    start = songPointer > 0
			&& notInEditMode()
			&& prev(songEndedFlag) == 0
			&& songEndedFlag == 1
			&& songPlayID == song
			&& songPlayDifficulty == diff
			&& songEndResult >= _serStandard
			
    cancel = songPointer == 0 || inEditMode() || songLife == 0
	
    submit = prev(songResultShownFlag) == 0
			&& songResultShownFlag == 1
			
    value = songResultScore
	
    leaderboard(title, description, start, cancel, submit, value, "SCORE")    
}

//#endregion

//#region Achievements
//-[P-Style CG Gold] Get GREAT on HARD difficulty on ALL songs (25)
moduleAchievement(170541, _mPStyleCG, "P-Style Champagne Gold", "Get GREAT on HARD difficulty on ALL songs", 25)

//-[P-Style CW White] Get GREAT on NORMAL difficulty on all LIGHT BLUE songs (10)
moduleAchievement(170542, _mPStyleCW, "P-Style Ceramic White", "Get GREAT on NORMAL difficulty on all Sky Blue tag songs", 10)

//-[P-Style FB Blue] Get GREAT on NORMAL difficulty on all BLUE songs (10)
moduleAchievement(170543, _mPStyleFB, "P-Style Felicia Blue", "Get GREAT on NORMAL difficulty on all Blue tag songs", 10)

//-[P-Style IS Full White] Get GREAT on NORMAL difficulty on all ORANGE songs (10)
moduleAchievement(170544, _mPStyleIS, "P-Style Ice Silver", "Get GREAT on NORMAL difficulty on all songs", 10)

//-[P-Style LP Purple] Get GREAT on NORMAL difficulty on all YELLOW songs (10)
moduleAchievement(170545, _mPStyleLP, "P-Style Lavender Purple", "Get GREAT on NORMAL difficulty on all Orange tag songs", 10)

//-[P-Style MG Teal] Get GREAT on NORMAL difficulty on all WHITE songs (10)
moduleAchievement(170546, _mPStyleMG, "P-Style Mint Green", "Get GREAT on NORMAL difficulty on all Yellow tag songs", 10)

//-[P-Style PB Black] Get GREAT on NORMAL difficulty on all PINK songs (10)
moduleAchievement(170547, _mPStylePB, "P-Style Piano Black", "Get GREAT on NORMAL difficulty on all White tag songs", 10)

//-[P-Style RP Pink] Get GREAT on NORMAL difficulty on ALL songs (10)
moduleAchievement(170548, _mPStyleRP, "P-Style Rose Pink", "Get GREAT on NORMAL difficulty on all Pink tag songs", 10)

//-Unlock Hatsune Miku Swimwear (10)
moduleAchievement(170549, _mHatsuneMikuSwimwear, "Hatsune Miku's #1 Fan", "Using default Miku, complete all Normal (or Hard) songs with Great once OR with Standard 5 times", 10)

//-Unlock Hatsune Miku Swimwear S (5)
moduleAchievement(170550, _mHatsuneMikuSwimwearSchool, "Dear Secret Miku", format("Using Hatsune Miku Swimwear, complete {0} and {1} with Great on Normal", _dictSongs[_sCocoaGirls], _dictSongs[_sSecretGarden]), 5)

//-Unlock Kaito’s Swimsuit (10)
moduleAchievement(170551, _mKaitoSwimwear, "Kaito's #1 Fan", "Using Kaito, complete all Normal (or Hard) songs with Great once OR with Standard 5 times", 10)

//-Unlock Len’s Swimsuit (10)
moduleAchievement(170552, _mKagamineLenSwimwear, "Kagamine Len's #1 Fan", "Using Kagamine Len, complete all Normal (or Hard) songs with Great once OR with Standard 5 times", 10)

//-Unlock Luka’s Swimsuit (10)
moduleAchievement(170553, _mMegurineLukaSwimwear, "Megurine Luka's #1 Fan", "Using Megurine Luka, complete all Normal (or Hard) songs with Great once OR with Standard 5 times", 10)

//-Unlock Meiko’s Swimsuit (10)
moduleAchievement(170554, _mMeikoSwimwear, "Meiko's #1 Fan", "Using Meiko, complete all Normal (or Hard) songs with Great once OR with Standard 5 times", 10)

//-Unlock Rin’s Swimsuit (10)
moduleAchievement(170555, _mKagamineRinSwimwear, "Kagamine Rin's #1 Fan", "Using Kagamine Rin, complete all Normal (or Hard) songs with Great once OR with Standard 5 times", 10)

//-[Akita Neru] Complete 'The Disappearance of Hatsune Miku' on Normal with a score of 230,000 (5)
moduleAchievement(170556, _mAkitaNeru, "Miku's Rival, Akita Neru", format("Complete '{0}' on Normal with a score of 230,000", _dictSongs[_sVanishingMiku]), 5)

//-[Alicia] Complete Song of Desert, Forest & Magic on Normal and clear it 5 times (5)
moduleAchievement(170557, _mGalliaSquad, "A Soldier from Far Away", format("Complete '{0}' on Normal and clear it 5 times", _dictSongs[_sSongDesertMiku]), 5)

//-[Arabian] Complete Velvet Arabesque with Great on Normal and clear it 5 times
moduleAchievement(170558, _mArabian, "Miku from Middle East", format("Complete '{0}' with Great on Normal and clear it 5 times", _dictSongs[_sVelvetArabesque]), 5)

//-[Cheerleader] Complete Dear Cocoa Girls on Normal with a combo of 110 (5)
moduleAchievement(170559, _mCheer, "Ouendan Honorary Member", format("Complete '{0}' on Normal with a combo of 110", _dictSongs[_sCocoaGirls]), 5)

//-[China] Complete Updating My Love List? with Great on Normal with a combo of 110 (5)
moduleAchievement(170560, _mChina, "Ni Hao, Miku", format("Complete '{0}' with Great on Normal with a combo of 110", _dictSongs[_sUpdatingLoveList]), 5)

//-[Dancer]	Complete Far Away on Normal and clear it 5 times (5)
moduleAchievement(170561, _mDancer, "Dancing Over the City", format("Complete '{0}' on Normal and clear it 5 times", _dictSongs[_sFarAway]), 5)

//-[Fairy] Complete	Beware of Miku Miku Bacteria with Great on Normal and a combo of 110 (5)
moduleAchievement(170562, _mFairy, "Germ Spreading Miku", format("Complete '{0}' with Great on Normal and a combo of 110", _dictSongs[_sMikuBacteria]), 5)

//-[Galaxy]	Complete Last Night, Good Night with Great on Normal and a combo of 80 (5)
moduleAchievement(170563, _mGalaxy, "Vocaloid Galaxy M", format("Complete '{0}' with Great on Normal and a combo of 80", _dictSongs[_sLastNight]), 5)

//-[Gothic]	Complete Jaded on Normal with a combo of 100 (5)
moduleAchievement(170564, _mGothic, "The Rebel", format("Complete '{0}' on Normal with a combo of 100", _dictSongs[_sJaded]), 5)

//-[Hatsune Miku (School Uniform)] Complete The Secret Garden on Normal and clear it 5 times (5)
moduleAchievement(170565, _mHatsuneMiku2, "A Diva Was Born", format("Complete '{0}' on Normal and clear it 5 times", _dictSongs[_sSecretGarden]), 5)

//-[Heart Hunter] Complete World is Mine on Normal and clear it 5 times (5)
moduleAchievement(170566, _mHeartHunter, "Heart Hunter Devil", format("Complete '{0}' on Normal and clear it 5 times", _dictSongs[_sWorldMine]), 5)

//-[Kagamine Rin] Complete Song of Desert, Forest & Magic (Rin) on Normal and a combo of 100 (5)
moduleAchievement(170567, _mKagamineRin, "The Right Sister, Kagamine Rin", format("Complete '{0}' on Normal with a combo of 100", _dictSongs[_sSongDesertRin]), 5)

//-[Kaito]	Complete Requiem for the Phantasma on Normal and clear it 5 times (5)
moduleAchievement(170568, _mKaito, "Miku's Sempai, Kaito", format("Complete '{0}' on Normal and clear it 5 times", _dictSongs[_sRequiemPhantasma]), 5)

//-[Len] Complete Song of Desert, Forest & Magic (Len) on Normal with a combo of 100 (5)
moduleAchievement(170569, _mKagamineLen, "The Left Brother, Kagamine Len", format("Complete '{0}' on Normal with a combo of 100", _dictSongs[_sSongDesertLen]), 5)
 
//-[Magician] Complete Miracle Paint on Normal with a combo of 120 (5)
moduleAchievement(170570, _mMagician, "Magic Painter", format("Complete '{0}' on Normal with a combo of 120", _dictSongs[_sMiraclePaint]), 5)

//-[Megurine Luka]	Complete Ievan Polkka on Normal with a combo of 100 (5)
moduleAchievement(170571, _mMegurineLuka, "Traveler Lady, Megurine Luka", format("Complete '{0}' on Normal with a combo of 100", _dictSongs[_sIevanPolkka]), 5)

//-[Meiko] Complete Your Diva on Normal and clear it 5 times (5)
moduleAchievement(170572, _mMeiko, "Miku's Sempai, Meiko", format("Complete '{0}' on Normal and clear it 5 times", _dictSongs[_sYourDiva]), 5)

//-[Meiko Style] Complete Dreaming Leaf on Hard with a score of 250.000 (5)
moduleAchievement(170573, _mMeikoStyle, "Meiko Wannabe", format("Complete '{0}' on Hard with a score of 250.000", _dictSongs[_sDreamingLeaf]), 5)

//-[Miyabi]	Complete Sakura no Ame on Hard with a score of 200.000 (5)
moduleAchievement(170574, _mElegant, "Under the Cherry Blossoms", format("Complete '{0}' on Hard with a score of 200.000", _dictSongs[_sSakuraNoAme]), 5)

//-[Nyanko] Complete Rain With a Chance of Sweet*Drops on Normal and clear it 5 times (5)
moduleAchievement(170575, _mCatGirl, "The Cat Under the Rain", format("Complete '{0}' on Normal and clear it 5 times", _dictSongs[_sRainSweetDrops]), 5)

//-[Pajamas] Complete Marginal with Great on Normal and a combo of 130 (5)
moduleAchievement(170576, _mSleepy, "Nighty Night", format("Complete '{0}' with Great on Normal and a combo of 130", _dictSongs[_sMarginal]), 5)

//-[Pirate]	Complete White Dove on Normal with a combo of 110 (5)
moduleAchievement(170577, _mPirate, "Miku Of The Seven Seas", format("Complete '{0}' on Normal with a combo of 110", _dictSongs[_sWhiteDove]), 5) 

//-[Plug-in] Complete Star Story with Great on Normal mode and clear it 5 times (5)
moduleAchievement(170578, _mPlugIn, "Star Messenger Miku", format("Complete '{0}' with Great on Normal and clear it 5 times", _dictSongs[_sStarStory]), 5)

//-[Priestess] Complete	Song of Life on Hard with a score of 150.000 (5)
moduleAchievement(170579, _mMiko, "Maiden Of Life", format("Complete '{0}' on Hard with a score of 150.000", _dictSongs[_sSongLifeMiku]), 5)

//-[Princess] Complete VOC@LOID in Love on Normal and clear it 5 times (5)
moduleAchievement(170580, _mPrincess, "Princess in Love", format("Complete '{0}' on Normal and clear it 5 times", _dictSongs[_sVocaloidInLove]), 5)

//-[Punk] Complete Love is War with Great on Normal and clear it 5 times (5)
moduleAchievement(170581, _mPunk, "Lover With a Cause", format("Complete '{0}' with Great on Normal and clear it 5 times", _dictSongs[_sLoveIsWar]), 5)

//-[Rin Style] Complete Song of Life (Len) and Song of Life (Rin) with Great on Normal (5)
moduleAchievement(170582, _mRinStyle, "Rin Chan Now?", format("Complete '{0}' and '{1}' with Great on Normal", _dictSongs[_sSongLifeLen], _dictSongs[_sSongLifeRin]), 5)

//-[Sakine Meiko] Using Meiko, complete Your Diva with Great on Hard (5)
moduleAchievement(170583, _mSakineMeiko, "Sweet Young Meiko", format("Using Meiko, complete '{0}' with Great on Hard", _dictSongs[_sYourDiva]), 5)

//-[School]	Complete That One Second in Slow Motion with Great on Normal and a combo of 100 (5)
moduleAchievement(170584, _mSchool, "School Days in Slow Motion", format("Complete '{0}' with Great on Normal and a combo of 100", _dictSongs[_sThatOneSecond]), 5)

//-[Snow] Complete Strobe Nights on Normal and a combo of 100 (5)
moduleAchievement(170585, _mSnow, "Winter Nights", format("Complete '{0}' on Normal with a combo of 100", _dictSongs[_sStrobeNights]), 5)

//-[Space Channel 39] Complete I'll Miku Miku You (For Reals) with on Normal and a combo of 70 (5)
moduleAchievement(170586, _mSpaceCH, "Space News Dancer", format("Complete '{0}' on Normal with a combo of 70", _dictSongs[_sMikuMiku]), 3)

//-[Space Channel 5] Using Space Channel 39, complete I'll Miku Miku You (For Reals) with Great on Hard (5)
moduleAchievement(170587, _mSpaceCH5, "Ulala's New Dancer", format("Using Space Channel 39, complete '{0}' with Great on Hard", _dictSongs[_sMikuMiku]), 5)

//-[Star] Complete Grumpy Waltz with Great on Normal and clear it 5 times (5)
moduleAchievement(170588, _mStar, "Star in a Cardboard World", format("Complete '{0}' with Great on Normal and clear it 5 times ", _dictSongs[_sGrumpyWaltz]), 5)

//-[VN02] Complete Moon with Great on Normal and clear it 5 times (5)
moduleAchievement(170589, _mVN02, "Moon Visitor Miku", format("Complete '{0}' with Great on Normal and clear it 5 times", _dictSongs[_sMoon]), 5)

//-[Vocal] Complete	Packaged on Hard with a score of 250.000 (5)
moduleAchievement(170590, _mVocal, "The Sound of my Voice", format("Complete '{0}' on Hard with a score of 250.000", _dictSongs[_sPackaged]), 5)

//-[White Dress] Complete Melt on Hard with a score of 300,000 (5)
moduleAchievement(170591, _mWhiteDress, "The Symbol of a Pure Heart", format("Complete '{0}' on Hard with a score of 300,000", _dictSongs[_sMelt]), 5)

//-[Yowane Haku] Complete Electric Angel on Normal with a combo of 120 (5)
moduleAchievement(170592, _mYowaneHaku, "Miku's Apprentice, Yowane Haku", format("Complete '{0}' on Normal with a combo of 120", _dictSongs[_sElectricAngel]), 5)

//-Unlock all songs (10)
allFlags(170594, _fSongs, "My Debut Album", "Unlock all songs", 10)

//-Get every Room Style (10)
allFlags(170595, _fRoomStyle, "Vocaloid Decorator", "Get every Room Style", 10)

//-Get every Room Accessory (25)
allFlags(170596, _fRoomAccessory, "Vocaloid Collector", "Get every Room Accessory", 25)

//-Get every Wall Accessory (10)
allFlags(170597, _fWallAccessory, "Vocaloid Roommate", "Get every Wall Accessory", 10)

//-Get every Floor Accessory (10)
allFlags(170598, _fFloorAccessory, "Vocaloid Hoarder", "Get every Floor Accessory", 10)

//-Get every picture and video from the Visual Library (10)
allFlags(170599, _fVisualLibrary, "A Tribute to Hatsune Miku", "Get every picture and video from the Visual Library", 10)

//-Get Perfect on any song Normal or Hard (10)
perfectAchievement(170593, "Road to DIVA", 10)

//-Finish all songs with Great or better on all 3 difficulties
greatPerfectAchievement(170506, _serGreat, _sWorldMine, _dictSongs[_sWorldMine], _dictGreatSongs[_sWorldMine])
greatPerfectAchievement(170508, _serGreat, _sJaded, _dictSongs[_sJaded], _dictGreatSongs[_sJaded])
greatPerfectAchievement(170505, _serGreat, _sLoveIsWar, _dictSongs[_sLoveIsWar], _dictGreatSongs[_sLoveIsWar])
greatPerfectAchievement(170507, _serGreat, _sThatOneSecond, _dictSongs[_sThatOneSecond], _dictGreatSongs[_sThatOneSecond])
greatPerfectAchievement(170509, _serGreat, _sMelt, _dictSongs[_sMelt], _dictGreatSongs[_sMelt])
greatPerfectAchievement(170510, _serGreat, _sFarAway, _dictSongs[_sFarAway], _dictGreatSongs[_sFarAway])
greatPerfectAchievement(170511, _serGreat, _sStrobeNights, _dictSongs[_sStrobeNights], _dictGreatSongs[_sStrobeNights])
greatPerfectAchievement(170512, _serGreat, _sStarStory, _dictSongs[_sStarStory], _dictGreatSongs[_sStarStory])
greatPerfectAchievement(170513, _serGreat, _sLastNight, _dictSongs[_sLastNight], _dictGreatSongs[_sLastNight])
greatPerfectAchievement(170514, _serGreat, _sPackaged, _dictSongs[_sPackaged], _dictGreatSongs[_sPackaged])
greatPerfectAchievement(170515, _serGreat, _sRainSweetDrops, _dictSongs[_sRainSweetDrops], _dictGreatSongs[_sRainSweetDrops])
greatPerfectAchievement(170518, _serGreat, _sMiraclePaint, _dictSongs[_sMiraclePaint], _dictGreatSongs[_sMiraclePaint])
greatPerfectAchievement(170517, _serGreat, _sGrumpyWaltz, _dictSongs[_sGrumpyWaltz], _dictGreatSongs[_sGrumpyWaltz])
greatPerfectAchievement(170516, _serGreat, _sMarginal, _dictSongs[_sMarginal], _dictGreatSongs[_sMarginal])
greatPerfectAchievement(170519, _serGreat, _sDreamingLeaf, _dictSongs[_sDreamingLeaf], _dictGreatSongs[_sDreamingLeaf])
greatPerfectAchievement(170521, _serGreat, _sSongDesertMiku, _dictSongs[_sSongDesertMiku], _dictGreatSongs[_sSongDesertMiku])
greatPerfectAchievement(170539, _serGreat, _sSongDesertLen, _dictSongs[_sSongDesertLen], _dictGreatSongs[_sSongDesertLen])
greatPerfectAchievement(170537, _serGreat, _sSongDesertRin, _dictSongs[_sSongDesertRin], _dictGreatSongs[_sSongDesertRin])
greatPerfectAchievement(170523, _serGreat, _sWhiteDove, _dictSongs[_sWhiteDove], _dictGreatSongs[_sWhiteDove])
greatPerfectAchievement(170524, _serGreat, _sMoon, _dictSongs[_sMoon], _dictGreatSongs[_sMoon])
greatPerfectAchievement(170525, _serGreat, _sMikuBacteria, _dictSongs[_sMikuBacteria], _dictGreatSongs[_sMikuBacteria])
greatPerfectAchievement(170522, _serGreat, _sSongLifeMiku, _dictSongs[_sSongLifeMiku], _dictGreatSongs[_sSongLifeMiku])
greatPerfectAchievement(170540, _serGreat, _sSongLifeLen, _dictSongs[_sSongLifeLen], _dictGreatSongs[_sSongLifeLen])
greatPerfectAchievement(170538, _serGreat, _sSongLifeRin, _dictSongs[_sSongLifeRin], _dictGreatSongs[_sSongLifeRin])
greatPerfectAchievement(170526, _serGreat, _sSecretGarden, _dictSongs[_sSecretGarden], _dictGreatSongs[_sSecretGarden])
greatPerfectAchievement(170527, _serGreat, _sCocoaGirls, _dictSongs[_sCocoaGirls], _dictGreatSongs[_sCocoaGirls])
greatPerfectAchievement(170528, _serGreat, _sVelvetArabesque, _dictSongs[_sVelvetArabesque], _dictGreatSongs[_sVelvetArabesque])
greatPerfectAchievement(170529, _serGreat, _sUpdatingLoveList, _dictSongs[_sUpdatingLoveList], _dictGreatSongs[_sUpdatingLoveList])
greatPerfectAchievement(170530, _serGreat, _sSakuraNoAme, _dictSongs[_sSakuraNoAme], _dictGreatSongs[_sSakuraNoAme])
greatPerfectAchievement(170520, _serGreat, _sVocaloidInLove, _dictSongs[_sVocaloidInLove], _dictGreatSongs[_sVocaloidInLove])
greatPerfectAchievement(170531, _serGreat, _sIevanPolkka, _dictSongs[_sIevanPolkka], _dictGreatSongs[_sIevanPolkka])
greatPerfectAchievement(170535, _serGreat, _sYourDiva, _dictSongs[_sYourDiva], _dictGreatSongs[_sYourDiva])
greatPerfectAchievement(170534, _serGreat, _sElectricAngel, _dictSongs[_sElectricAngel], _dictGreatSongs[_sElectricAngel])
greatPerfectAchievement(170536, _serGreat, _sVanishingMiku, _dictSongs[_sVanishingMiku], _dictGreatSongs[_sVanishingMiku])
greatPerfectAchievement(170533, _serGreat, _sRequiemPhantasma, _dictSongs[_sRequiemPhantasma], _dictGreatSongs[_sRequiemPhantasma])
greatPerfectAchievement(170532, _serGreat, _sMikuMiku, _dictSongs[_sMikuMiku], _dictGreatSongs[_sMikuMiku])


//#endregion

//#region Leaderboards
for song in _dictSongs {
	for diff in _dictDifficulty {
		songLeaderboard(song, diff)
	}
}

//#endregion

//#region Rich Presence
//-rich_presence_conditional_display(visualLibraryPointer != 0, "In the Visual Library Page:{0} Col:{1} Row:{2}", rich_presence_value("val", VLPage), rich_presence_value("val", VLCol), rich_presence_value("val", VLRow))

//-- [High Score: {4}] [MAX Combo: {5}] [Cleared: {6}]
//-, rich_presence_value("val", byte(0)),				rich_presence_value("val", byte(1)), 							rich_presence_value("val", byte(songPlayID) + byte(songPlayDifficulty))

rich_presence_conditional_display(songPointer != 0 && songPlayDifficulty == _dEasy, 
							"[{0}] Playing {1} ({2} {3}) [High Score: {4}] [MAX Combo: {5}] [Cleared: {6}]",
							rich_presence_lookup("module", currentModule, _dictModuleNames),
							rich_presence_lookup("song", songPlayID, _dictSongs),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty),
							rich_presence_lookup("starsE", songPlayID, _dictSongStarsEasy),
							rich_presence_value("val", songMax(_fsMaxScore, songPlayID, _dEasy)),
							rich_presence_value("val", songMax(_fsMaxCombo, songPlayID, _dEasy)),
							rich_presence_value("val", timesCleared(songPlayID, _dEasy))
							)
							
rich_presence_conditional_display(songPointer != 0 && songPlayDifficulty == _dNormal, 
							"[{0}] Playing {1} ({2} {3}) [High Score: {4}] [MAX Combo: {5}] [Cleared: {6}]",
							rich_presence_lookup("module", currentModule, _dictModuleNames),
							rich_presence_lookup("song", songPlayID, _dictSongs),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty),
							rich_presence_lookup("starsN", songPlayID, _dictSongStarsNormal),
							rich_presence_value("val", songMax(_fsMaxScore, songPlayID, _dNormal)),
							rich_presence_value("val", songMax(_fsMaxCombo, songPlayID, _dNormal)),
							rich_presence_value("val", timesCleared(songPlayID, _dNormal))
							)
							
rich_presence_conditional_display(songPointer != 0 && songPlayDifficulty == _dHard, 
							"[{0}] Playing {1} ({2} {3}) [High Score: {4}] [MAX Combo: {5}] [Cleared: {6}]",
							rich_presence_lookup("module", currentModule, _dictModuleNames),
							rich_presence_lookup("song", songPlayID, _dictSongs),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty),
							rich_presence_lookup("starsH", songPlayID, _dictSongStarsHard),
							rich_presence_value("val", songMax(_fsMaxScore, songPlayID, _dHard)),
							rich_presence_value("val", songMax(_fsMaxCombo, songPlayID, _dHard)),
							rich_presence_value("val", timesCleared(songPlayID, _dHard))
							)

rich_presence_conditional_display(inEditMode(), "[{0}] Playing around with the Song Editor [🎵:{1}/36] [🧸:{2}/122] [🖼️:{3}/198] [👫:{4}/53]",
					rich_presence_lookup("module", currentModule, _dictModuleNames),
					rich_presence_value("val", flagCounter(_dictFlags[_fSongs])),
					rich_presence_value("val", flagCounter(_dictFlags[_fAllRooms])),
					rich_presence_value("val", flagCounter(_dictFlags[_fVisualLibrary])),
					rich_presence_value("val", flagCounter(_dictFlags[_fModules])))

rich_presence_display("[{0}] [🎵:{1}/36] [🧸:{2}/122] [🖼️:{3}/198] [👫:{4}/53]",
					rich_presence_lookup("module", currentModule, _dictModuleNames),
					rich_presence_value("val", flagCounter(_dictFlags[_fSongs])),
					rich_presence_value("val", flagCounter(_dictFlags[_fAllRooms])),
					rich_presence_value("val", flagCounter(_dictFlags[_fVisualLibrary])),
					rich_presence_value("val", flagCounter(_dictFlags[_fModules])))

//#endregion
