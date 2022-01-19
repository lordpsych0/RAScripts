// Hatsune Miku: Project DIVA [Bonus]
// #ID = 18005

//--https://www.romhacking.net/forum/index.php?topic=23182.0


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

_dictPerfectSongs = {
	_sWorldMine: 5,
	_sJaded: 5,
	_sLoveIsWar: 5,
	_sThatOneSecond: 5,
	_sMelt: 5,
	_sFarAway: 5,
	_sStrobeNights: 5,
	_sStarStory: 5,
	_sLastNight: 5,
	_sPackaged: 5,
	_sRainSweetDrops: 5,
	_sMiraclePaint: 5,
	_sGrumpyWaltz: 5,
	_sMarginal: 5,
	_sDreamingLeaf: 5,
	_sSongDesertMiku: 5,
	_sSongDesertLen: 5,
	_sSongDesertRin: 5,
	_sWhiteDove: 5,
	_sMoon: 5,
	_sMikuBacteria: 5,
	_sSongLifeMiku: 5,
	_sSongLifeLen: 5,
	_sSongLifeRin: 5,
	_sSecretGarden: 5,
	_sCocoaGirls: 5,
	_sVelvetArabesque: 5,
	_sUpdatingLoveList: 5,
	_sSakuraNoAme: 5,
	_sVocaloidInLove: 5,
	_sIevanPolkka: 5,
	_sYourDiva: 5,
	_sElectricAngel: 5,
	_sVanishingMiku: 10,
	_sRequiemPhantasma: 10,
	_sMikuMiku: 5
}

_dictTrueSongs = {
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

songCool = dword(songPointer + poffset + 0xBC00)
songFine = dword(songPointer + poffset + 0xBC04)
songSafe = dword(songPointer + poffset + 0xBC08)
songSad = dword(songPointer + poffset + 0xBC0C)
songWorst = dword(songPointer + poffset + 0xBC10)

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

function greatPerfectAchievement(id, ser, song, title){
	
	title = "[DIVA] " + title
	
	points = _dictPerfectSongs[song]
	
	if (ser == _serGreat){
		description = format("Get Great or better on [{0}], Hard difficulty", _dictSongs[song])
	}
	if (ser == _serPerfect){
		description = format("Finish [{0}] with a Perfect combo, Hard difficulty", _dictSongs[song])
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

function truePerfectAchievement(id, song, title){
	
	title = "[True DIVA] " + title
	
	points = _dictTrueSongs[song]
	
	description = format("Finish [{0}] with a True Perfect combo (only Cool notes), Hard difficulty", _dictSongs[song])
		
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayID == song
			&& songPlayDifficulty == _dHard
			&& (songFine + songSafe + songSad + songWorst == 0)
			&& trigger_when(
				songEndedFlag == 1
				&& songEndResult == _serPerfect
				&& prev(songResultShownFlag) == 0
				&& songResultShownFlag == 1)

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

//-Perfect achievements
greatPerfectAchievement(111000001, _serPerfect, _sWorldMine, _dictSongs[_sWorldMine])
greatPerfectAchievement(111000002, _serPerfect, _sJaded, _dictSongs[_sJaded])
greatPerfectAchievement(111000003, _serPerfect, _sLoveIsWar, _dictSongs[_sLoveIsWar])
greatPerfectAchievement(111000004, _serPerfect, _sThatOneSecond, _dictSongs[_sThatOneSecond])
greatPerfectAchievement(111000005, _serPerfect, _sMelt, _dictSongs[_sMelt])
greatPerfectAchievement(111000006, _serPerfect, _sFarAway, _dictSongs[_sFarAway])
greatPerfectAchievement(111000007, _serPerfect, _sStrobeNights, _dictSongs[_sStrobeNights])
greatPerfectAchievement(111000008, _serPerfect, _sStarStory, _dictSongs[_sStarStory])
greatPerfectAchievement(111000009, _serPerfect, _sLastNight, _dictSongs[_sLastNight])
greatPerfectAchievement(111000010, _serPerfect, _sPackaged, _dictSongs[_sPackaged])
greatPerfectAchievement(111000011, _serPerfect, _sRainSweetDrops, _dictSongs[_sRainSweetDrops])
greatPerfectAchievement(111000012, _serPerfect, _sMiraclePaint, _dictSongs[_sMiraclePaint])
greatPerfectAchievement(111000013, _serPerfect, _sGrumpyWaltz, _dictSongs[_sGrumpyWaltz])
greatPerfectAchievement(111000014, _serPerfect, _sMarginal, _dictSongs[_sMarginal])
greatPerfectAchievement(111000015, _serPerfect, _sDreamingLeaf, _dictSongs[_sDreamingLeaf])
greatPerfectAchievement(111000016, _serPerfect, _sSongDesertMiku, _dictSongs[_sSongDesertMiku])
greatPerfectAchievement(111000017, _serPerfect, _sSongDesertLen, _dictSongs[_sSongDesertLen])
greatPerfectAchievement(111000018, _serPerfect, _sSongDesertRin, _dictSongs[_sSongDesertRin])
greatPerfectAchievement(111000019, _serPerfect, _sWhiteDove, _dictSongs[_sWhiteDove])
greatPerfectAchievement(111000020, _serPerfect, _sMoon, _dictSongs[_sMoon])
greatPerfectAchievement(111000021, _serPerfect, _sMikuBacteria, _dictSongs[_sMikuBacteria])
greatPerfectAchievement(111000022, _serPerfect, _sSongLifeMiku, _dictSongs[_sSongLifeMiku])
greatPerfectAchievement(111000023, _serPerfect, _sSongLifeLen, _dictSongs[_sSongLifeLen])
greatPerfectAchievement(111000024, _serPerfect, _sSongLifeRin, _dictSongs[_sSongLifeRin])
greatPerfectAchievement(111000025, _serPerfect, _sSecretGarden, _dictSongs[_sSecretGarden])
greatPerfectAchievement(111000026, _serPerfect, _sCocoaGirls, _dictSongs[_sCocoaGirls])
greatPerfectAchievement(111000027, _serPerfect, _sVelvetArabesque, _dictSongs[_sVelvetArabesque])
greatPerfectAchievement(111000028, _serPerfect, _sUpdatingLoveList, _dictSongs[_sUpdatingLoveList])
greatPerfectAchievement(111000029, _serPerfect, _sSakuraNoAme, _dictSongs[_sSakuraNoAme])
greatPerfectAchievement(111000030, _serPerfect, _sVocaloidInLove, _dictSongs[_sVocaloidInLove])
greatPerfectAchievement(111000031, _serPerfect, _sIevanPolkka, _dictSongs[_sIevanPolkka])
greatPerfectAchievement(111000032, _serPerfect, _sYourDiva, _dictSongs[_sYourDiva])
greatPerfectAchievement(111000033, _serPerfect, _sElectricAngel, _dictSongs[_sElectricAngel])
greatPerfectAchievement(111000034, _serPerfect, _sVanishingMiku, _dictSongs[_sVanishingMiku])
greatPerfectAchievement(111000035, _serPerfect, _sRequiemPhantasma, _dictSongs[_sRequiemPhantasma])
greatPerfectAchievement(111000036, _serPerfect, _sMikuMiku, _dictSongs[_sMikuMiku])

truePerfectAchievement(111000037, _sWorldMine, _dictSongs[_sWorldMine])
truePerfectAchievement(111000038, _sJaded, _dictSongs[_sJaded])
truePerfectAchievement(111000039, _sLoveIsWar, _dictSongs[_sLoveIsWar])
truePerfectAchievement(111000040, _sThatOneSecond, _dictSongs[_sThatOneSecond])
truePerfectAchievement(111000041, _sMelt, _dictSongs[_sMelt])
truePerfectAchievement(111000042, _sFarAway, _dictSongs[_sFarAway])
truePerfectAchievement(111000043, _sStrobeNights, _dictSongs[_sStrobeNights])
truePerfectAchievement(111000044, _sStarStory, _dictSongs[_sStarStory])
truePerfectAchievement(111000045, _sLastNight, _dictSongs[_sLastNight])
truePerfectAchievement(111000046, _sPackaged, _dictSongs[_sPackaged])
truePerfectAchievement(111000047, _sRainSweetDrops, _dictSongs[_sRainSweetDrops])
truePerfectAchievement(111000048, _sMiraclePaint, _dictSongs[_sMiraclePaint])
truePerfectAchievement(111000049, _sGrumpyWaltz, _dictSongs[_sGrumpyWaltz])
truePerfectAchievement(111000050, _sMarginal, _dictSongs[_sMarginal])
truePerfectAchievement(111000051, _sDreamingLeaf, _dictSongs[_sDreamingLeaf])
truePerfectAchievement(111000052, _sSongDesertMiku, _dictSongs[_sSongDesertMiku])
truePerfectAchievement(111000053, _sSongDesertLen, _dictSongs[_sSongDesertLen])
truePerfectAchievement(111000054, _sSongDesertRin, _dictSongs[_sSongDesertRin])
truePerfectAchievement(111000055, _sWhiteDove, _dictSongs[_sWhiteDove])
truePerfectAchievement(111000056, _sMoon, _dictSongs[_sMoon])
truePerfectAchievement(111000057, _sMikuBacteria, _dictSongs[_sMikuBacteria])
truePerfectAchievement(111000058, _sSongLifeMiku, _dictSongs[_sSongLifeMiku])
truePerfectAchievement(111000059, _sSongLifeLen, _dictSongs[_sSongLifeLen])
truePerfectAchievement(111000060, _sSongLifeRin, _dictSongs[_sSongLifeRin])
truePerfectAchievement(111000061, _sSecretGarden, _dictSongs[_sSecretGarden])
truePerfectAchievement(111000062, _sCocoaGirls, _dictSongs[_sCocoaGirls])
truePerfectAchievement(111000063, _sVelvetArabesque, _dictSongs[_sVelvetArabesque])
truePerfectAchievement(111000064, _sUpdatingLoveList, _dictSongs[_sUpdatingLoveList])
truePerfectAchievement(111000065, _sSakuraNoAme, _dictSongs[_sSakuraNoAme])
truePerfectAchievement(111000066, _sVocaloidInLove, _dictSongs[_sVocaloidInLove])
truePerfectAchievement(111000067, _sIevanPolkka, _dictSongs[_sIevanPolkka])
truePerfectAchievement(111000068, _sYourDiva, _dictSongs[_sYourDiva])
truePerfectAchievement(111000069, _sElectricAngel, _dictSongs[_sElectricAngel])
truePerfectAchievement(111000070, _sVanishingMiku, _dictSongs[_sVanishingMiku])
truePerfectAchievement(111000071, _sRequiemPhantasma, _dictSongs[_sRequiemPhantasma])
truePerfectAchievement(111000072, _sMikuMiku, _dictSongs[_sMikuMiku])

//#endregion

//#region Leaderboards
for song in _dictSongs {
	songLeaderboard(song, _dHard)
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
