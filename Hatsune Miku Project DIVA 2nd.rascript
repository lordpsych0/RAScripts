// Hatsune Miku: Project DIVA 2nd
// #ID = 3923

//#region Variables

//-Difficulty
_dEasy = 0
_dNormal = 1
_dHard = 2
_dExtreme = 3

//-Song End Result
_serNotClear = 0
_serCheap = 1
_serStandard = 2
_serGreat = 3
_serExcellent = 4
_serPerfect = 5

//-Characters
_chMiku = 0
_chRin = 1
_chLen = 2
_chLuka = 3
_chKaito = 4
_chMeiko = 5
_chNeru = 6
_chHaku = 7
_chSakine = 8

//-Songs
_sWorldMine = 0x0
_sMelt = 0x1
_sStrobeNights = 0x2
_sPackaged = 0x3
_sMarginal = 0x4
_sMiraclePaint = 0x5
_sSongDesert = 0x6
_sSongLife = 0x7
_sWhiteDove = 0x8
_sMoon = 0x9
_sMikuBacteria = 0xa
_sSecretGarden = 0xb
_sCocoaGirls = 0xc
_sVelvetArabesque = 0xd
_sUpdatingLoveList = 0xe
_sMikuMiku = 0xf
_sFirstLove = 0x10
_sLookWayBaby = 0x11
_sFinder = 0x12
_sYellow = 0x13
_sColorfulMelody = 0x14
_sIntenseVoice = 0x15
_sRomeoCin = 0x16
_sMagnet = 0x17
_sDear = 0x18
_sYtoY = 0x19
_sGemini = 0x1a
_sAiKotoba = 0x1b
_sPoPiPo = 0x1c
_sShaihate = 0x1d
_sVoice = 0x1e
_sLoveColored = 0x1f
_sGigantic = 0x20
_sMeltdown = 0x21
_sKokoro = 0x22
_sButterfly = 0x23
_sDoubleLariat = 0x24
_sCantarella = 0x25
_sChangeMe = 0x26
_sSound = 0x27
_sCloverClub = 0x28
_sPromise = 0x29
_sReallyUnderstand = 0x2a
_sInnocence = 0x2b
_sFirstSound = 0x2c
_sJustFriends = 0x2d
_sIevanPolkka = 0x2e

//--DLC--
_sDissapearance = 0x2f
_sStarGazer = 0x30
_sGoMyWay = 0x31
_sRelations = 0x32
_sRequiem = 0x33
_sButterfly39 = 0x34
_sYourDiva = 0x35
_sStardust = 0x36
_sElectricAngel = 0x37
_sTimeLimit = 0x38


//-Modules
//----Miku------
_mHatsuneMiku = 0x0
_mMeikoStyle = 0x1
_mRinStyle = 0x2
_mSpaceCH5 = 0x3
_mSpaceCH = 0x4
_mGalliaSquad = 0x5
_mPStyleRP = 0x6
_mPStyleMG = 0x7
_mPStyleLP = 0x8
_mPStyleFB = 0x9
_mPStyleIS = 0xa
_mPStyleCW = 0xb
_mPStylePB = 0xc
_mPStyleCG = 0xd
_mCheer = 0xe
_mPlugIn = 0xf
_mGothic = 0x10
_mPrincess = 0x11
_mMiko = 0x12
_mCatGirl = 0x13
_mSleepy = 0x14
_mHeartHunter = 0x15
_mVocal = 0x16
_mPunk = 0x17
_mDancer = 0x18
_mStar = 0x19
_mFairy = 0x1a
_mSchool = 0x1b
_mSnow = 0x1c
_mArabian = 0x1d
_mElegant = 0x1e
_mChina = 0x1f
_mMagician = 0x20
_mWhiteDress = 0x21
_mPirate = 0x22
_mVN02 = 0x23
_mGalaxy = 0x24
_mHa2Miku2 = 0x25
_mHatsuneMikuSwimwearS = 0x26
_mHatsuneMikuSwimwear = 0x27
_mAileDAngeMiku = 0x28
_mSpacyNurseMiku = 0x29
_mSchoolNobleMiku = 0x2a
_mJerseyMiku = 0x2b
_mLittleRedMiku = 0x2c
_mWhiteGownMiku = 0x2d
_mVintageDressMiku = 0x2e
_mPinkPopsMiku = 0x2f
_mAngelMiku = 0x30
_mNaturalMiku = 0x31
_mSpiritualMiku = 0x32
_mColorfulGumdrop = 0x33
_mYellowMiku = 0x34
_mOutAboutMiku = 0x35
_mShaihateMiku = 0x36
_mInfinityMiku = 0x37
_mPowderMiku = 0x38
_mButterflyMiku = 0x39
_mCuteMiku = 0x3a
_mHatsuneMikuSwimwearB = 0x3b
_mPinkPopsASMiku = 0x3c

//----Rin------
_mKagamineRin = 0x3d
_mKagamineRinSwimwear = 0x3e
_mAsymmetricRRin = 0x3f
_mCuteRin = 0x40
_mReactorRin = 0x41
_mRoFStyleRin = 0x42
_mCheerfulCandy = 0x43
_mKagamineRinSwimwearT = 0x44

//----Len------
_mKagamineLen = 0x45
_mKagamineLenSwimwear = 0x46
_mAsymmetricLLen = 0x47
_mPunkishLen = 0x48
_mSchoolJerseyLen = 0x49
_mKagamineLenSwimwearWS = 0x4A

//----Luka------
_mMegurineLuka = 0x4b
_mMegurineLukaSwimwear = 0x4c
_mChiffonDressLuka = 0x4d
_mVFSuitLuka = 0x4e
_mFrauleinLuka = 0x4f
_mBlossomLuka = 0x50
_mHardRockLuka = 0x51
_mMegurineLukaSwimwearP = 0x52

//----Kaito------
_mKaito = 0x53
_mKaitoSwimwear = 0x54
_mCampusKaito = 0x55
_mClassicKaito = 0x56
_mCyberCatKaito = 0x57
_mKaitoSwimwearV = 0x58
_mKaitoSwimwearVAlt = 0x59

//----Meiko------
_mMeiko = 0x5a
_mMeikoSwimwear = 0x5b
_mFluffyCoatMeiko = 0x5c
_mScarletMeiko = 0x5d
_mModernGirlMeiko = 0x5e
_mMeikoSwimwearB = 0x5f
_mModernGirlAltMeiko = 0x60

//----Neru------
_mAkitaNeru = 0x61
_mAborigineNeru = 0x62
_mAkitaNeruSwimwear = 0x63

//----Haku------
_mYowaneHaku = 0x64
_mCyberDriveHaku = 0x65
_mYowaneHakuSwimwear = 0x66

//----Sakine------
_mSakineMeiko = 0x67
_mBlackDressSakine = 0x68
_mSakineMeikoSwimswear = 0x69

//-Flags
_fSongs = 0
_fSongsHard = 1
_fSongsExtreme = 2

_fRoomTheme = 3
_fShelfAccessory = 4
_fWallAccessory = 5
_fFloorAccessory = 6
_fVisualLibrary = 7
_fDivaRooms = 8

_fModules = 9
_fModulesMiku = 10
_fModulesRin = 11
_fModulesLen = 12
_fModulesLuka = 13
_fModulesKaito = 14
_fModulesMeiko = 15
_fModulesNeru = 16
_fModulesHaku = 17
_fModulesSakine = 18

_fRoomEvents = 19
_fTitles = 20

//-Songs cleared and Max scores
_fsResultFail = 0xcd2278
_fsResultCheap = 0xcd227a
_fsClearedStandard = 0xcd227c
_fsClearedGreat = 0xcd227e
_fsClearedExcellent = 0xcd2280
_fsClearedPerfect = 0xcd2282

_fsMikuFail = 0xcd2290 //-+0xC  Char result offset
_fsRinFail = 0xcd229c
_fsLenFail = 0xcd22a8
_fsLukaFail = 0xcd22b4
_fsKaitoFail = 0xcd22c0
_fsMeikoFail = 0xcd22cc
_fsNeruFail = 0xcd22d8
_fsHakuFail = 0xcd22e4
_fsSakineFail = 0xcd22f0

_fsMaxScore = 0xcd2308
_fsMaxCombo = 0xcd230c

//-Offsets
poffset = 0xF8000000
mscoreSongOffset = 0x288
mscoreDifficultyOffset = 0x98

mscoreCharResultOffset = 0xC

//#endregion

//#region Dictionaries

_dictSongs = {
	_sRomeoCin: "Romeo and Cinderella",
	_sMagnet: "Magnet",
	_sAiKotoba: "Ai Kotoba",
	_sSound: "Sound",
	_sKokoro: "Kokoro",
	_sPackaged: "Packaged",	
	_sButterfly: "Butterfly on Your Right Shoulder",
	_sMarginal: "Marginal",
	_sSecretGarden: "The Secret Garden",
	_sJustFriends: "Just Be Friends",
	_sStrobeNights: "Strobe Nights",
	_sCloverClub: "Clover Club",
	_sYtoY: "From Y to Y",
	_sUpdatingLoveList: "Updating My Love List?",
	_sYellow: "Yellow",
	_sSongLife: "Song of Life",	
	_sChangeMe: "Change Me",
	_sPoPiPo: "PoPiPo",
	_sCantarella: "Cantarella",
	_sFirstLove: "When First Love Ends",
	_sSongDesert: "Song of Wastelands, Forest and Magic",
	_sCocoaGirls: "Dear Cocoa Girls",
	_sGigantic: "Gigantic Girl",
	_sDear: "Dear",
	_sGemini: "Gemini",
	_sVoice: "VOiCE -DIVA MIX-",
	_sWorldMine: "World is Mine",
	_sMiraclePaint: "Miracle Paint",
	_sMoon: "Moon",
	_sVelvetArabesque: "Velvet Arabesque",
	_sInnocence: "Innocence",
	_sMeltdown: "Meltdown",
	_sReallyUnderstand: "I Really Do Understand",	
	_sMelt: "Melt",
	_sLoveColored: "Love-colored Ward",
	_sFinder: "Finder (DSLR remix - re:edit)",
	_sPromise: "Promise",
	_sMikuBacteria: "Beware of Miku Miku Bacteria",
	_sFirstSound: "The First Sound",
	_sWhiteDove: "White Dove",
	_sShaihate: "Saihate",
	_sLookWayBaby: "Look this Way, Baby",
	_sColorfulMelody: "Colorful x Melody",
	_sDoubleLariat: "Double Lariat",
	_sMikuMiku: "I'll Miku Miku You (For Reals)",
	_sIntenseVoice: "The Intense Voice of Hatsune Miku",
	_sIevanPolkka: "Tutorial - Ievan Polkka",
	_sDissapearance: "DLC - The Disappearance of Hatsune Miku -DEAD END-",
	_sStarGazer: "DLC - StargazeR",
	_sGoMyWay: "DLC - GO MY WAY!!",
	_sRelations: "DLC - Relations",
	_sRequiem: "DLC - Requiem for the Phantasma",
	_sButterfly39: "DLC - Butterfly on Your Right Shoulder -39's Giving Day Edition- ",
	_sYourDiva: "DLC - Your Diva",
	_sStardust: "DLC - Stardust Utopia",
	_sElectricAngel: "DLC - Electric Angel",
	_sTimeLimit: "DLC - Time Limit"
}

_dictSongStarsEasy = {
	_sWorldMine: "★★ •  •  •  •  •  •  •  ",
	_sMelt: "★★ •  •  •  •  •  •  •  ",
	_sStrobeNights: "★ •  •  •  •  •  •  •  •",
	_sPackaged: "★★ •  •  •  •  •  •  •  ",
	_sMarginal: "★ •  •  •  •  •  •  •  •",
	_sMiraclePaint: "★ •  •  •  •  •  •  •  •",
	_sSongDesert: "★ •  •  •  •  •  •  •  •",
	_sSongLife: "★★ •  •  •  •  •  •  •  ",
	_sWhiteDove: "★ •  •  •  •  •  •  •  •",
	_sMoon: "★★ •  •  •  •  •  •  •  ",
	_sMikuBacteria: "★★ •  •  •  •  •  •  •  ",
	_sSecretGarden: "★ •  •  •  •  •  •  •  •",
	_sCocoaGirls: "★★ •  •  •  •  •  •  •  ",
	_sVelvetArabesque: "★★ •  •  •  •  •  •  •  ",
	_sUpdatingLoveList: "★★ •  •  •  •  •  •  •  ",
	_sMikuMiku: "★ •  •  •  •  •  •  •  •",
	_sFirstLove: "★ •  •  •  •  •  •  •  •",
	_sLookWayBaby: "★★ •  •  •  •  •  •  •  ",
	_sFinder: "★ •  •  •  •  •  •  •  •",
	_sYellow: "★ •  •  •  •  •  •  •  •",
	_sColorfulMelody: "★ •  •  •  •  •  •  •  •",
	_sIntenseVoice: "★ •  •  •  •  •  •  •  •",
	_sRomeoCin: "★ •  •  •  •  •  •  •  •",
	_sMagnet: "★ •  •  •  •  •  •  •  •",
	_sDear: "★ •  •  •  •  •  •  •  •",
	_sYtoY: "★ •  •  •  •  •  •  •  •",
	_sGemini: "★ •  •  •  •  •  •  •  •",
	_sAiKotoba: "★★ •  •  •  •  •  •  •  ",
	_sPoPiPo: "★★ •  •  •  •  •  •  •  ",
	_sShaihate: "★★ •  •  •  •  •  •  •  ",
	_sVoice: "★ •  •  •  •  •  •  •  •",
	_sLoveColored: "★★ •  •  •  •  •  •  •  ",
	_sGigantic: "★★ •  •  •  •  •  •  •  ",
	_sMeltdown: "★★ •  •  •  •  •  •  •  ",
	_sKokoro: "★★ •  •  •  •  •  •  •  ",
	_sButterfly: "★★ •  •  •  •  •  •  •  ",
	_sDoubleLariat: "★★ •  •  •  •  •  •  •  ",
	_sCantarella: "★★ •  •  •  •  •  •  •  ",
	_sChangeMe: "★★ •  •  •  •  •  •  •  ",
	_sSound: "★★ •  •  •  •  •  •  •  ",
	_sCloverClub: "★ •  •  •  •  •  •  •  •",
	_sPromise: "★★ •  •  •  •  •  •  •  ",
	_sReallyUnderstand: "★★ •  •  •  •  •  •  •  ",
	_sInnocence: "★ •  •  •  •  •  •  •  •",
	_sFirstSound: "★★ •  •  •  •  •  •  •  ",
	_sJustFriends: "★★ •  •  •  •  •  •  •  ",
	_sIevanPolkka: " •  •  •  •  •  •  •  •  •",
	_sDissapearance: "★★ •  •  •  •  •  •  •  ",
	_sStarGazer: "★★ •  •  •  •  •  •  •  ",
	_sGoMyWay: "★ •  •  •  •  •  •  •  •",
	_sRelations: "★ •  •  •  •  •  •  •  •",
	_sRequiem: "★★★ •  •  •  •  •  • ",
	_sButterfly39: "★★ •  •  •  •  •  •  •  ",
	_sYourDiva: "★ •  •  •  •  •  •  •  •",
	_sStardust: "★★ •  •  •  •  •  •  •  ",
	_sElectricAngel: "★ •  •  •  •  •  •  •  •",
	_sTimeLimit: "★ •  •  •  •  •  •  •  •"
}

_dictSongStarsNormal = {
	_sWorldMine: "★★★ •  •  •  •  •  • ",
	_sMelt: "★★★★ •  •  •  •  •",
	_sStrobeNights: "★★★ •  •  •  •  •  • ",
	_sPackaged: "★★★★ •  •  •  •  •",
	_sMarginal: "★★★ •  •  •  •  •  • ",
	_sMiraclePaint: "★★★ •  •  •  •  •  • ",
	_sSongDesert: "★★★★ •  •  •  •  •",
	_sSongLife: "★★★★★ •  •  •  •",
	_sWhiteDove: "★★★ •  •  •  •  •  • ",
	_sMoon: "★★★★ •  •  •  •  •",
	_sMikuBacteria: "★★★★ •  •  •  •  •",
	_sSecretGarden: "★★★ •  •  •  •  •  • ",
	_sCocoaGirls: "★★★★ •  •  •  •  •",
	_sVelvetArabesque: "★★★ •  •  •  •  •  • ",
	_sUpdatingLoveList: "★★★ •  •  •  •  •  • ",
	_sMikuMiku: "★★★ •  •  •  •  •  • ",
	_sFirstLove: "★★★ •  •  •  •  •  • ",
	_sLookWayBaby: "★★★★ •  •  •  •  •",
	_sFinder: "★★★★ •  •  •  •  •",
	_sYellow: "★★★★ •  •  •  •  •",
	_sColorfulMelody: "★★★ •  •  •  •  •  • ",
	_sIntenseVoice: "★★★ •  •  •  •  •  • ",
	_sRomeoCin: "★★★ •  •  •  •  •  • ",
	_sMagnet: "★★★ •  •  •  •  •  • ",
	_sDear: "★★★ •  •  •  •  •  • ",
	_sYtoY: "★★★ •  •  •  •  •  • ",
	_sGemini: "★★★ •  •  •  •  •  • ",
	_sAiKotoba: "★★★ •  •  •  •  •  • ",
	_sPoPiPo: "★★★ •  •  •  •  •  • ",
	_sShaihate: "★★★ •  •  •  •  •  • ",
	_sVoice: "★★★ •  •  •  •  •  • ",
	_sLoveColored: "★★★★ •  •  •  •  •",
	_sGigantic: "★★★ •  •  •  •  •  • ",
	_sMeltdown: "★★★★ •  •  •  •  •",
	_sKokoro: "★★★★ •  •  •  •  •",
	_sButterfly: "★★★★ •  •  •  •  •",
	_sDoubleLariat: "★★★★ •  •  •  •  •",
	_sCantarella: "★★★★ •  •  •  •  •",
	_sChangeMe: "★★★★ •  •  •  •  •",
	_sSound: "★★★ •  •  •  •  •  • ",
	_sCloverClub: "★★★ •  •  •  •  •  • ",
	_sPromise: "★★★★ •  •  •  •  •",
	_sReallyUnderstand: "★★★★ •  •  •  •  •",
	_sInnocence: "★★★★ •  •  •  •  •",
	_sFirstSound: "★★★★ •  •  •  •  •",
	_sJustFriends: "★★★★★ •  •  •  •",
	_sIevanPolkka: "★★ •  •  •  •  •  •  •  ",
	_sDissapearance: "★★★★★ •  •  •  •",
	_sStarGazer: "★★★ •  •  •  •  •  • ",
	_sGoMyWay: "★★★ •  •  •  •  •  • ",
	_sRelations: "★★★ •  •  •  •  •  • ",
	_sRequiem: "★★★★★ •  •  •  •",
	_sButterfly39: "★★★★ •  •  •  •  •",
	_sYourDiva: "★★★ •  •  •  •  •  • ",
	_sStardust: "★★★ •  •  •  •  •  • ",
	_sElectricAngel: "★★★ •  •  •  •  •  • ",
	_sTimeLimit: "★★★ •  •  •  •  •  • "
}

_dictSongStarsHard = {
	_sWorldMine: "★★★★★★ •  •  •",
	_sMelt: "★★★★★★ •  •  •",
	_sStrobeNights: "★★★★★ •  •  •  •",
	_sPackaged: "★★★★★ •  •  •  •",
	_sMarginal: "★★★★★ •  •  •  •",
	_sMiraclePaint: "★★★★★ •  •  •  •",
	_sSongDesert: "★★★★★★ •  •  •",
	_sSongLife: "★★★★★★ •  •  •",
	_sWhiteDove: "★★★★★ •  •  •  •",
	_sMoon: "★★★★★★ •  •  •",
	_sMikuBacteria: "★★★★★ •  •  •  •",
	_sSecretGarden: "★★★★★ •  •  •  •",
	_sCocoaGirls: "★★★★★★ •  •  •",
	_sVelvetArabesque: "★★★★★★ •  •  •",
	_sUpdatingLoveList: "★★★★★ •  •  •  •",
	_sMikuMiku: "★★★★ •  •  •  •  •",
	_sFirstLove: "★★★★★ •  •  •  •",
	_sLookWayBaby: "★★★★★★ •  •  •",
	_sFinder: "★★★★★★ •  •  •",
	_sYellow: "★★★★★★ •  •  •",
	_sColorfulMelody: "★★★★★ •  •  •  •",
	_sIntenseVoice: "★★★★★ •  •  •  •",
	_sRomeoCin: "★★★★★ •  •  •  •",
	_sMagnet: "★★★★★ •  •  •  •",
	_sDear: "★★★★★ •  •  •  •",
	_sYtoY: "★★★★★ •  •  •  •",
	_sGemini: "★★★★★ •  •  •  •",
	_sAiKotoba: "★★★★ •  •  •  •  •",
	_sPoPiPo: "★★★★★ •  •  •  •",
	_sShaihate: "★★★★★ •  •  •  •",
	_sVoice: "★★★★★ •  •  •  •",
	_sLoveColored: "★★★★★★ •  •  •",
	_sGigantic: "★★★★★ •  •  •  •",
	_sMeltdown: "★★★★★ •  •  •  •",
	_sKokoro: "★★★★★★ •  •  •",
	_sButterfly: "★★★★★★ •  •  •",
	_sDoubleLariat: "★★★★★★ •  •  •",
	_sCantarella: "★★★★★ •  •  •  •",
	_sChangeMe: "★★★★★ •  •  •  •",
	_sSound: "★★★★★ •  •  •  •",
	_sCloverClub: "★★★★★ •  •  •  •",
	_sPromise: "★★★★★★ •  •  •",
	_sReallyUnderstand: "★★★★★★ •  •  •",
	_sInnocence: "★★★★★★ •  •  •",
	_sFirstSound: "★★★★★ •  •  •  •",
	_sJustFriends: "★★★★★★★ •  •",
	_sIevanPolkka: "★★★ •  •  •  •  •  • ",
	_sDissapearance: "★★★★★★★ •  •",
	_sStarGazer: "★★★★★ •  •  •  •",
	_sGoMyWay: "★★★★★ •  •  •  •",
	_sRelations: "★★★★★ •  •  •  •",
	_sRequiem: "★★★★★★★ •  •",
	_sButterfly39: "★★★★★ •  •  •  •",
	_sYourDiva: "★★★★ •  •  •  •  •",
	_sStardust: "★★★★★ •  •  •  •",
	_sElectricAngel: "★★★★★ •  •  •  •",
	_sTimeLimit: "★★★★★★ •  •  •"
}

_dictSongStarsExtreme = {
	_sWorldMine: "★★★★★★★ •  •",
	_sMelt: "★★★★★★★★ •",
	_sStrobeNights: "★★★★★★★ •  •",
	_sPackaged: "★★★★★★★★ •",
	_sMarginal: "★★★★★★★ •  •",
	_sMiraclePaint: "★★★★★★ •  •  •",
	_sSongDesert: "★★★★★★★★ •",
	_sSongLife: "★★★★★★★★ •",
	_sWhiteDove: "★★★★★★ •  •  •",
	_sMoon: "★★★★★★★★ •",
	_sMikuBacteria: "★★★★★★ •  •  •",
	_sSecretGarden: "★★★★★★★ •  •",
	_sCocoaGirls: "★★★★★★★★ •",
	_sVelvetArabesque: "★★★★★★★ •  •",
	_sUpdatingLoveList: "★★★★★★★ •  •",
	_sMikuMiku: "★★★★★★ •  •  •",
	_sFirstLove: "★★★★★★★ •  •",
	_sLookWayBaby: "★★★★★★★★ •",
	_sFinder: "★★★★★★★★ •",
	_sYellow: "★★★★★★★★ •",
	_sColorfulMelody: "★★★★★★ •  •  •",
	_sIntenseVoice: "★★★★★★★ •  •",
	_sRomeoCin: "★★★★★★★ •  •",
	_sMagnet: "★★★★★★★ •  •",
	_sDear: "★★★★★★★ •  •",
	_sYtoY: "★★★★★★★ •  •",
	_sGemini: "★★★★★★★ •  •",
	_sAiKotoba: "★★★★★★★ •  •",
	_sPoPiPo: "★★★★★★★ •  •",
	_sShaihate: "★★★★★★★ •  •",
	_sVoice: "★★★★★★★ •  •",
	_sLoveColored: "★★★★★★★★ •",
	_sGigantic: "★★★★★★★ •  •",
	_sMeltdown: "★★★★★★★ •  •",
	_sKokoro: "★★★★★★★★ •",
	_sButterfly: "★★★★★★★ •  •",
	_sDoubleLariat: "★★★★★★★★ •",
	_sCantarella: "★★★★★★★ •  •",
	_sChangeMe: "★★★★★★★ •  •",
	_sSound: "★★★★★★★ •  •",
	_sCloverClub: "★★★★★★★★ •",
	_sPromise: "★★★★★★★★ •",
	_sReallyUnderstand: "★★★★★★★★ •",
	_sInnocence: "★★★★★★★★ •",
	_sFirstSound: "★★★★★★ •  •  •",
	_sJustFriends: "★★★★★★★★★",
	_sIevanPolkka: "★★★★★★★ •  •",
	_sDissapearance: "★★★★★★★★★",
	_sStarGazer: "★★★★★★★★ •",
	_sGoMyWay: "★★★★★★★★ •",
	_sRelations: "★★★★★★★★ •",
	_sRequiem: "★★★★★★★★ •",
	_sButterfly39: "★★★★★★★★ •",
	_sYourDiva: "★★★★★★ •  •  •",
	_sStardust: "★★★★★★★ •  •",
	_sElectricAngel: "★★★★★★★★ •",
	_sTimeLimit: "★★★★★★★ •  •"
}

_dictModuleNames = {
	_mHatsuneMiku: "Miku",
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
	_mHa2Miku2: "Hatsune Miku",
	_mHatsuneMikuSwimwearS: "🩱 School Miku",
	_mHatsuneMikuSwimwear: "👙 Miku",
	
	_mAileDAngeMiku: "Angel Wing Miku",
	_mSpacyNurseMiku: "Nurse Miku",
	_mSchoolNobleMiku: "Ojou-sama Miku",
	_mJerseyMiku: "Jersey Miku",
	_mLittleRedMiku: "Red Ridding Hood Miku",
	_mWhiteGownMiku: "Nature Miku",
	_mVintageDressMiku: "Vintage Princess Miku",
	_mPinkPopsMiku: "Modern Miku",
	_mAngelMiku: "Angelic Miku",
	_mNaturalMiku: "Everyday Miku",
	_mSpiritualMiku: "Spiritual Miku",
	_mColorfulGumdrop: "Gumdrop Miku",
	_mYellowMiku: "Yellow Miku",
	_mOutAboutMiku: "Casual Miku",
	_mShaihateMiku: "Respectful Miku",
	_mInfinityMiku: "Endless Miku",
	_mPowderMiku: "Snowy Miku",
	_mButterflyMiku: "Butterfly Miku",
	_mCuteMiku: "Cute Miku",
	_mHatsuneMikuSwimwearB: "👙 Miku",
	_mPinkPopsASMiku: "Modern Miku",
	
	_mKagamineRin: "Kagamine Rin",
	_mAsymmetricRRin: "Asymetric Rin",
	_mCuteRin: "Cute Rin",
	_mReactorRin: "Reactor Rin",
	_mRoFStyleRin: "Rinbell",
	_mCheerfulCandy: "Candy Rin",
	_mKagamineRinSwimwearT: "🩱 Rin",
	_mKagamineRinSwimwear: "👙 Rin",
	
	_mKagamineLen: "Kagamine Len",
	_mAsymmetricLLen: "Asymmetric Len",
	_mPunkishLen: "Punk Len",
	_mSchoolJerseyLen: "Jersey Len",
	_mKagamineLenSwimwearWS: "🏄 Len",
	_mKagamineLenSwimwear: "🩳 Len",
	
	_mMegurineLuka: "Megurine Luka",
	_mMegurineLukaSwimwear: "👙 Luka",
	_mChiffonDressLuka: "Nature Luka",
	_mVFSuitLuka: "Lukah Bryant",
	_mFrauleinLuka: "Miss Luka",
	_mBlossomLuka: "Blossom Luka",
	_mHardRockLuka: "Rocker Luka",
	_mMegurineLukaSwimwearP: "👙 Luka",
	
	_mKaito: "Kaito",	
	_mKaitoSwimwear: "🩳 Kaito",
	_mCampusKaito: "College Kaito",
	_mClassicKaito: "Opera Kaito",
	_mCyberCatKaito: "Neko Kaito",
	_mKaitoSwimwearV: "🩲 Kaito",
	_mKaitoSwimwearVAlt: "🩲 Kaito",
	
	_mMeiko: "Meiko",
	_mMeikoSwimwear: "🩱 Meiko",
	_mFluffyCoatMeiko: "Winter Meiko",
	_mScarletMeiko: "Cabaret Meiko",
	_mModernGirlMeiko: "Modern Meiko",
	_mMeikoSwimwearB: "👙 Meiko",
	_mModernGirlAltMeiko: "Modern Meiko",
	
	_mAkitaNeru: "Akita Neru",
	_mAborigineNeru: "Native Neru",
	_mAkitaNeruSwimwear: "🩱 Neru",
	
	_mYowaneHaku: "Yowane Haku",
	_mCyberDriveHaku: "Cyber Haku",
	_mYowaneHakuSwimwear: "👙 Haku",
	
	_mSakineMeiko: "Sakine Meiko",
	_mBlackDressSakine: "Dark Sakine Meiko",
	_mSakineMeikoSwimswear: "👙 Sakine Meiko"
}

_dictModuleOriginalNames = {
	_mHatsuneMiku: "Hatsune Miku Original",
	_mMeikoStyle: "Meiko Style",
	_mRinStyle: "Rin Style",
	_mSpaceCH5: "Space Channel 5",
	_mSpaceCH: "Space Channel 39",
	_mGalliaSquad: "Gallia Squad 7",
	_mPStyleRP: "P-Style RP",
	_mPStyleMG: "P-Style MG",
	_mPStyleLP: "P-Style LP",
	_mPStyleFB: "P-Style FB",
	_mPStyleIS: "P-Style IS",
	_mPStyleCW: "P-Style CW",
	_mPStylePB: "P-Style PB",
	_mPStyleCG: "P-Style CG",
	_mCheer: "Cheerleader",
	_mPlugIn: "Plug-in",
	_mGothic: "Gothic",
	_mPrincess: "Princess",
	_mMiko: "Miko",
	_mCatGirl: "Kitty Cat",
	_mSleepy: "Sleepy Time",
	_mHeartHunter: "Heart Hunter",
	_mVocal: "Vocal",
	_mPunk: "Punk",
	_mDancer: "Dancer",
	_mStar: "Star",
	_mFairy: "Fairy",
	_mSchool: "School",
	_mSnow: "Snow",
	_mArabian: "Arabian",
	_mElegant: "Miyabi",
	_mChina: "Chinese Debut",
	_mMagician: "Magician",
	_mWhiteDress: "White Dress",
	_mPirate: "Pirate",
	_mVN02: "VN02",
	_mGalaxy: "Galaxy",
	_mHa2Miku2: "Ha2ne Miku",
	_mHatsuneMikuSwimwearS: "Hatsune Miku Swimwear S",
	_mHatsuneMikuSwimwear: "Hatsune Miku Swimwear",
	_mAileDAngeMiku: "Aile d'Ange",
	_mSpacyNurseMiku: "Spacy Nurse",
	_mSchoolNobleMiku: "School Noble",
	_mJerseyMiku: "JerSey",
	_mLittleRedMiku: "Little Red Hood",
	_mWhiteGownMiku: "White One Piece",
	_mVintageDressMiku: "Vintage Dress",
	_mPinkPopsMiku: "Pink Pops",
	_mAngelMiku: "Angel",
	_mNaturalMiku: "Natural",
	_mSpiritualMiku: "Spiritual",
	_mColorfulGumdrop: "Colorful Gumdrop",
	_mYellowMiku: "Yellow",
	_mOutAboutMiku: "Out and About",
	_mShaihateMiku: "Saihate Miku",
	_mInfinityMiku: "Infinity",
	_mPowderMiku: "Powder",
	_mButterflyMiku: "Hatsune Miku Butterfly",
	_mCuteMiku: "Hatsune Miku Cute",
	_mHatsuneMikuSwimwearB: "Hatsune Miku Swimwear B",
	_mPinkPopsASMiku: "Pink Pops AS",
	
	_mKagamineRin: "Kagamine Rin Original",
	_mAsymmetricRRin: "Asymmetry R",
	_mCuteRin: "Kagamine Rin Cute",
	_mReactorRin: "Reactor",
	_mRoFStyleRin: "RoF Style",
	_mCheerfulCandy: "Cheerful Candy",
	_mKagamineRinSwimwearT: "Kagamine Rin Swimwear T",
	_mKagamineRinSwimwear: "Kagamine Rin Swimwear",
	
	_mKagamineLen: "Kagamine Len Original",
	_mAsymmetricLLen: "Asymmetry L",
	_mPunkishLen: "Punkish",
	_mSchoolJerseyLen: "School Jersey",
	_mKagamineLenSwimwearWS: "Kagamine Len Swimwear Water Suit",
	_mKagamineLenSwimwear: "Kagamine Len Swimwear",
	
	_mMegurineLuka: "Megurine Luka Original",
	_mMegurineLukaSwimwear: "Megurine Luka Swimwear",
	_mChiffonDressLuka: "Chiffon Dress",
	_mVFSuitLuka: "VF Suit",
	_mFrauleinLuka: "Fraulein",
	_mBlossomLuka: "Megurine Luka Flower",
	_mHardRockLuka: "Hard Rock",
	_mMegurineLukaSwimwearP: "Megurine Luka Swimwear P",
	
	_mKaito: "Kaito Original",	
	_mKaitoSwimwear: "KAITO Swimwear",
	_mCampusKaito: "Campus",
	_mClassicKaito: "Classic",
	_mCyberCatKaito: "Cyber Cat",
	_mKaitoSwimwearV: "KAITO Swimwear Visor",
	_mKaitoSwimwearVAlt: "KAITO Swimwear Visor AS",
	
	_mMeiko: "Meiko Original",
	_mMeikoSwimwear: "MEIKO Swimwear A",
	_mFluffyCoatMeiko: "Fluffy Coat",
	_mScarletMeiko: "Scarlet",
	_mModernGirlMeiko: "Modern Girl",
	_mMeikoSwimwearB: "MEIKO Swimwear B",
	_mModernGirlAltMeiko: "Modern Girl AS",
	
	_mAkitaNeru: "Akita Neru Original",
	_mAborigineNeru: "Ethnic",
	_mAkitaNeruSwimwear: "Akita Neru Swimwear",
	
	_mYowaneHaku: "Yowane Haku Original",
	_mCyberDriveHaku: "Cyber Dive",
	_mYowaneHakuSwimwear: "Yowane Haku Swimwear",
	
	_mSakineMeiko: "Sakine Meiko Original",
	_mBlackDressSakine: "Black Dress",
	_mSakineMeikoSwimswear: "Sakine Meiko Swimwear"
}

_dictCharNames = {
	_chMiku: "Hatsune Miku",
	_chRin: "Kagamine Rin",
	_chLen: "Kagamine Len",
	_chLuka: "Megurine Luka", 
	_chKaito: "Kaito",
	_chMeiko: "Meiko",
	_chNeru: "Neru",
	_chHaku: "Haku",
	_chSakine: "Sakine Meiko"
}

_dictDifficulty = {
	_dEasy: "Easy",
	_dNormal: "Normal",
	_dHard: "Hard",
	_dExtreme: "Extreme"
}

_dictSongEndResult = {
	_serCheap: "Cheap",
	_serStandard: "Standard",
	_serGreat: "Great",
	_serExcellent: "Excellent",
	_serPerfect: "Perfect"
}

_dictModuleAddress = {
	_mHatsuneMiku: [0, 0xce96cc],
	_mMeikoStyle: [1, 0xce96cc],
	_mRinStyle: [2, 0xce96cc],
	_mSpaceCH5: [3, 0xce96cc],
	_mSpaceCH: [4, 0xce96cc],
	_mGalliaSquad: [5, 0xce96cc],
	_mPStyleRP: [6, 0xce96cc],
	_mPStyleMG: [7, 0xce96cc],
	_mPStyleLP: [0, 0xce96cd],
	_mPStyleFB: [1, 0xce96cd],
	_mPStyleIS: [2, 0xce96cd],
	_mPStyleCW: [3, 0xce96cd],
	_mPStylePB: [4, 0xce96cd],
	_mPStyleCG: [5, 0xce96cd],
	_mCheer: [6, 0xce96cd],
	_mPlugIn: [7, 0xce96cd],
	_mGothic: [0, 0xce96ce],
	_mPrincess: [1, 0xce96ce],
	_mMiko: [2, 0xce96ce],
	_mCatGirl: [3, 0xce96ce],
	_mSleepy: [4, 0xce96ce],
	_mHeartHunter: [5, 0xce96ce],
	_mVocal: [6, 0xce96ce],
	_mPunk: [7, 0xce96ce],
	_mDancer: [0, 0xce96cf],
	_mStar: [1, 0xce96cf],
	_mFairy: [2, 0xce96cf],
	_mSchool: [3, 0xce96cf],
	_mSnow: [4, 0xce96cf],
	_mArabian: [5, 0xce96cf],
	_mElegant: [6, 0xce96cf],
	_mChina: [7, 0xce96cf],
	_mMagician: [0, 0xce96d0],
	_mWhiteDress: [1, 0xce96d0],
	_mPirate: [2, 0xce96d0],
	_mVN02: [3, 0xce96d0],
	_mGalaxy: [4, 0xce96d0],
	_mHa2Miku2: [5, 0xce96d0],
	_mHatsuneMikuSwimwearS: [6, 0xce96d0],
	_mHatsuneMikuSwimwear: [7, 0xce96d0],
	_mAileDAngeMiku: [0, 0xce96d1],
	_mSpacyNurseMiku: [1, 0xce96d1],
	_mSchoolNobleMiku: [2, 0xce96d1],
	_mJerseyMiku: [3, 0xce96d1],
	_mLittleRedMiku: [4, 0xce96d1],
	_mWhiteGownMiku: [5, 0xce96d1],
	_mVintageDressMiku: [6, 0xce96d1],
	_mPinkPopsMiku: [7, 0xce96d1],
	_mAngelMiku: [0, 0xce96d2],
	_mNaturalMiku: [1, 0xce96d2],
	_mSpiritualMiku: [2, 0xce96d2],
	_mColorfulGumdrop: [3, 0xce96d2],
	_mYellowMiku: [4, 0xce96d2],
	_mOutAboutMiku: [5, 0xce96d2],
	_mShaihateMiku: [6, 0xce96d2],
	_mInfinityMiku: [7, 0xce96d2],
	_mPowderMiku: [0, 0xce96d3],
	_mButterflyMiku: [1, 0xce96d3],
	_mCuteMiku: [2, 0xce96d3],
	_mHatsuneMikuSwimwearB: [3, 0xce96d3],
	_mPinkPopsASMiku: [4, 0xce96d3],
	_mKagamineRin: [5, 0xce96d3],
	_mKagamineRinSwimwear: [6, 0xce96d3],
	_mAsymmetricRRin: [7, 0xce96d3],
	_mCuteRin: [0, 0xce96d4],
	_mReactorRin: [1, 0xce96d4],
	_mRoFStyleRin: [2, 0xce96d4],
	_mCheerfulCandy: [3, 0xce96d4],
	_mKagamineRinSwimwearT: [4, 0xce96d4],
	_mKagamineLen: [5, 0xce96d4],
	_mKagamineLenSwimwear: [6, 0xce96d4],
	_mAsymmetricLLen: [7, 0xce96d4],
	_mPunkishLen: [0, 0xce96d5],
	_mSchoolJerseyLen: [1, 0xce96d5],
	_mKagamineLenSwimwearWS: [2, 0xce96d5],
	_mMegurineLuka: [3, 0xce96d5],
	_mMegurineLukaSwimwear: [4, 0xce96d5],
	_mChiffonDressLuka: [5, 0xce96d5],
	_mVFSuitLuka: [6, 0xce96d5],
	_mFrauleinLuka: [7, 0xce96d5],
	_mBlossomLuka: [0, 0xce96d6],
	_mHardRockLuka: [1, 0xce96d6],
	_mMegurineLukaSwimwearP: [2, 0xce96d6],
	_mKaito: [3, 0xce96d6],
	_mKaitoSwimwear: [4, 0xce96d6],
	_mCampusKaito: [5, 0xce96d6],
	_mClassicKaito: [6, 0xce96d6],
	_mCyberCatKaito: [7, 0xce96d6],
	_mKaitoSwimwearV: [0, 0xce96d7],
	_mKaitoSwimwearVAlt: [1, 0xce96d7],
	_mMeiko: [2, 0xce96d7],
	_mMeikoSwimwear: [3, 0xce96d7],
	_mFluffyCoatMeiko: [4, 0xce96d7],
	_mScarletMeiko: [5, 0xce96d7],
	_mModernGirlMeiko: [6, 0xce96d7],
	_mMeikoSwimwearB: [7, 0xce96d7],
	_mModernGirlAltMeiko: [0, 0xce96d8],
	_mAkitaNeru: [1, 0xce96d8],
	_mAborigineNeru: [2, 0xce96d8],
	_mAkitaNeruSwimwear: [3, 0xce96d8],
	_mYowaneHaku: [4, 0xce96d8],
	_mCyberDriveHaku: [5, 0xce96d8],
	_mYowaneHakuSwimwear: [6, 0xce96d8],
	_mSakineMeiko: [7, 0xce96d8],
	_mBlackDressSakine: [0, 0xce96d9],
	_mSakineMeikoSwimswear: [1, 0xce96d9]
}

_dictFlags = {
	_fSongs: [0xce980c, 0xce9811, 0, 5],
	_fSongsHard: [0xce9824, 0xce9829, 0, 6],
	_fSongsExtreme: [0xce982a, 0xce982f, 0, 6],
	
	_fDivaRooms: [0xce9716, 0xce9717, 0, 0],
	_fRoomTheme: [0xce9721, 0xce9721, 0, 7],
	_fShelfAccessory: [0xce9747, 0xce974d, 0, 2],
	_fWallAccessory: [0xce979d, 0xce97a3, 0, 0],
	_fFloorAccessory: [0xce972f, 0xce9730, 0, 5],
	_fVisualLibrary: [0xce9834, 0xce984d, 0, 6],
		
	_fModules: [0xce96cc, 0xce96d9, 0, 1],
	_fModulesMiku: [0xce96cc, 0xce96d3, 0, 4],
	_fModulesRin: [0xce96d3, 0xce96d4, 5, 4],
	_fModulesLen: [0xce96d4, 0xce96d5, 5, 2],
	_fModulesLuka: [0xce96d5, 0xce96d6, 3, 2],
	_fModulesKaito: [0xce96d6, 0xce96d7, 3, 1],
	_fModulesMeiko: [0xce96d7, 0xce96d8, 2, 0],
	_fModulesNeru: [0xce96d8, 0xce96d8, 1, 3],
	_fModulesHaku: [0xce96d8, 0xce96d8, 4, 6],
	_fModulesSakine: [0xce96d8, 0xce96d9, 7, 1],
	
	_fRoomEvents: [0xce97f1, 0xce97f9, 0, 2],
	_fTitles: [0xce9868, 0xce9874, 0, 6]
}

_dictGreatSongs = {
	_sWorldMine: 10,
	_sMelt: 10,
	_sStrobeNights: 10,
	_sPackaged: 10,
	_sMarginal: 10,
	_sMiraclePaint: 10,
	_sSongDesert: 10,
	_sSongLife: 10,
	_sWhiteDove: 10,
	_sMoon: 10,
	_sMikuBacteria: 10,
	_sSecretGarden: 10,
	_sCocoaGirls: 10,
	_sVelvetArabesque: 10,
	_sUpdatingLoveList: 10,
	_sMikuMiku: 10,
	_sFirstLove: 10,
	_sLookWayBaby: 10,
	_sFinder: 10,
	_sYellow: 10,
	_sColorfulMelody: 10,
	_sIntenseVoice: 25,
	_sRomeoCin: 10,
	_sMagnet: 10,
	_sDear: 10,
	_sYtoY: 10,
	_sGemini: 10,
	_sAiKotoba: 10,
	_sPoPiPo: 10,
	_sShaihate: 10,
	_sVoice: 10,
	_sLoveColored: 10,
	_sGigantic: 10,
	_sMeltdown: 10,
	_sKokoro: 10,
	_sButterfly: 10,
	_sDoubleLariat: 10,
	_sCantarella: 10,
	_sChangeMe: 10,
	_sSound: 10,
	_sCloverClub: 10,
	_sPromise: 10,
	_sReallyUnderstand: 10,
	_sInnocence: 10,
	_sFirstSound: 10,
	_sJustFriends: 10
}

_dictSongFail = {
	_chMiku: _fsMikuFail,
	_chRin: _fsRinFail,
	_chLen: _fsLenFail,
	_chLuka: _fsLukaFail, 
	_chKaito: _fsKaitoFail,
	_chMeiko: _fsMeikoFail,
	_chNeru: _fsNeruFail,
	_chHaku: _fsHakuFail,
	_chSakine: _fsSakineFail
}

_dictEmpty = {
	0: ""
}

_dictRin = {
	0: "",
	1: "️🍊"
}
_dictLen = {
	0: "",
	1: "️🍌"
}
_dictLuka = {
	0: "",
	1: "️🐙"
}
_dictKaito = {
	0: "",
	1: "️🍦"
}
_dictMeiko = {
	0: "",
	1: "️👗"
}
_dictNeru = {
	0: "",
	1: "️📱"
}
_dictHaku = {
	0: "",
	1: "️🍶"
}
_dictSakine = {
	0: "",
	1: "️👧"
}


//#endregion

//#region Memory Accessors
//-Static Song variables
songPlayDifficulty = byte(0xca3b84)
songPlayID = byte(0xca3b88)
currentModule = byte(0xca3b98)
secondModule = byte(0xca3bcc)
money = dword(0xca3c10)

songPointer = dword(0xc45708)

//-From 0x00 to 0xff
songLife = byte(songPointer + poffset + 0x22FDC)

//-Shows the final result. Use on LB Submit
songResultShownFlag = byte(songPointer + poffset + 0x22FAC) //-0xa to 0xb

songResultCool = dword(songPointer + poffset + 0x22FF0)
songResultFine = dword(songPointer + poffset + 0x22FF4)
songResultSafe = dword(songPointer + poffset + 0x22FF8)
songResultSad = dword(songPointer + poffset + 0x22FFC)
songResultWorst = dword(songPointer + poffset + 0x23000)
songCurrentCombo = dword(songPointer + poffset + 0x22FE4)
songResultCombo = dword(songPointer + poffset + 0x22FE8)

songResultScore = dword(songPointer + poffset + 0x22FE0)
songResultComboBonus = dword(songPointer + poffset + 0x2300C)
songResultChanceScore = dword(songPointer + poffset + 0x2301C)
//-Item must be 0xffffffff to submit LB
helpItem = dword(0xce9918)
chanceTimeFlag = byte(0xce990a)

songPlayingID = byte(songPointer + poffset + 0x22F04)
//-Use this to start a LB
songEndedFlag = byte(songPointer + poffset + 0x22FA8) 
//-0, 1, 2, 3, 4, 5 ser variables
songEndResult = byte(songPointer + poffset + 0x22FB8) 

//-Edit Mode
editModePointer1 = tbyte(0xca3b78)
editModePointer2 = tbyte(0xca3b7c)

titleFlag = byte(0xca3b90)

//#endregion

//#region Functions

function noItems() => helpItem == 0xffffffff
function onTitle() => titleFlag == 1
function wasOnTitle() => prev(titleFlag) == 1

function songClear(address, song, diff) => word(address 
								+ mscoreSongOffset * song
								+ mscoreDifficultyOffset * diff)
								
function songMax(address, song, diff) => dword(address 
								+ mscoreSongOffset * song
								+ mscoreDifficultyOffset * diff)

function clearedGreatOrBetter(song, diff){
	return songClear(_fsClearedGreat, song, diff) 
			+ songClear(_fsClearedExcellent, song, diff) 
			+ songClear(_fsClearedPerfect, song, diff) > 0
}

function clearedPerfect(song, diff){
	return songClear(_fsClearedPerfect, song, diff) > 0
}

function clearedSong(song, diff){
	return songClear(_fsClearedStandard, song, diff) 
			+ songClear(_fsClearedGreat, song, diff) 
			+ songClear(_fsClearedExcellent, song, diff) 
			+ songClear(_fsClearedPerfect, song, diff) > 0
}

function clearedSongWChar(songFail, song, diff){
	return songClear(songFail + _serStandard*2, song, diff) 
			+ songClear(songFail + _serGreat*2, song, diff) 
			+ songClear(songFail + _serExcellent*2, song, diff) 
			+ songClear(songFail + _serPerfect*2, song, diff)
}

function pclearedSongWChar(songFail, song, diff){
	return prev(songClear(songFail + _serStandard*2, song, diff)) 
			+ prev(songClear(songFail + _serGreat*2, song, diff))
			+ prev(songClear(songFail + _serExcellent*2, song, diff)) 
			+ prev(songClear(songFail + _serPerfect*2, song, diff))
}


function firstTimeClearedGreatOrPerfect(song, diff){
	return songPlayDifficulty == diff &&
			prev(songClear(_fsClearedGreat, song, diff)) +
			prev(songClear(_fsClearedExcellent, song, diff)) +
			prev(songClear(_fsClearedPerfect, song, diff)) == 0
}

function firstTimeClearedPerfect(song, diff){
	return songPlayDifficulty == diff &&
			prev(songClear(_fsClearedPerfect, song, diff)) == 0
}

function timesCleared(song, diff){
	return songClear(_fsClearedStandard, song, diff)
		+ songClear(_fsClearedGreat, song, diff)
		+ songClear(_fsClearedExcellent, song, diff)
		+ songClear(_fsClearedPerfect, song, diff)
}

function gotModule(moduleIndex){
	module = _dictModuleAddress[moduleIndex]
	
	return prev(bit(module[0], module[1])) == 0
			&& bit(module[0], module[1]) == 1
}
function hasModule(moduleIndex){
	module = _dictModuleAddress[moduleIndex]
	
	return bit(module[0], module[1]) == 1
}
function hadModule(moduleIndex){
	module = _dictModuleAddress[moduleIndex]
	
	return prev(bit(module[0], module[1]))
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

function flagCounterV2(flagArray) {
	result = 0
	
	for flagIndex in flagArray{
		flag = _dictFlags[flagIndex]
		startAddress = flag[0]
		endAddress = flag[1]
		startBit = flag[2]
		endBit = flag[3]	
		
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

function unlockedBitflagsV2(flagArray){
	result = 0
	totalFlags = 0
	
	for flagIndex in flagArray{
		flag = _dictFlags[flagIndex]
		startAddress = flag[0]
		endAddress = flag[1]
		startBit = flag[2]
		endBit = flag[3]	
		
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

function prevUnlockedBitflagsV2(flagArray){
	result = 0
	totalFlags = 0
	
	for flagIndex in flagArray{
		flag = _dictFlags[flagIndex]
		startAddress = flag[0]
		endAddress = flag[1]
		startBit = flag[2]
		endBit = flag[3]
		
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
	}
	
	return result == totalFlags - 1
}






function clearedHardOrExtreme(char, additionalConditions){    
	conditionsArray = []
	altConditions = always_false()
	songFailAddress = _dictSongFail[char]
	
	for song in _dictSongs {
		if (song < _sIevanPolkka){
			timesClearedHardAndExtreme = clearedSongWChar(songFailAddress, song, _dHard) + clearedSongWChar(songFailAddress, song, _dExtreme)
			prevTimesClearedHardAndExtreme = pclearedSongWChar(songFailAddress, song, _dHard) + pclearedSongWChar(songFailAddress, song, _dExtreme)
			
			array_push(conditionsArray, once(timesClearedHardAndExtreme > 0))
			altConditions = altConditions || prevTimesClearedHardAndExtreme == 0
		}
	}
	array_push(conditionsArray, always_false())
	altConditions = altConditions || additionalConditions
	//-return measured(tally(length(conditionsArray) - 1, conditionsArray)) && (always_false() || (never(tally(length(altConditionsArray) - 1, altConditionsArray))))
	
    return measured(tally(length(conditionsArray) - 1, conditionsArray)) && altConditions
}

function scoreShown() => songEndedFlag == 1 
						&& prev(songResultShownFlag) == 0xa
						&& songResultShownFlag == 0xb

function inEditMode() => editModePointer1 != 0 && editModePointer2 != 0
function notInEditMode() => editModePointer1 == 0 && editModePointer2 == 0
//#endregion

//#region Achievement logic
function greatSongAchievement(id, song, title, points){

	description = format("Get Great or better on [{0}] on all 4 difficulties", _dictSongs[song])
	
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayID == song
			&& prev(songEndedFlag) == 0
			&& songEndedFlag == 1
			&& clearedGreatOrBetter(song, _dEasy)
			&& clearedGreatOrBetter(song, _dNormal)
			&& clearedGreatOrBetter(song, _dHard)
			&& clearedGreatOrBetter(song, _dExtreme)
			&& (always_false() 
				|| firstTimeClearedGreatOrPerfect(song, _dEasy)
				|| firstTimeClearedGreatOrPerfect(song, _dNormal)
				|| firstTimeClearedGreatOrPerfect(song, _dHard)
				|| firstTimeClearedGreatOrPerfect(song, _dExtreme)
				)

	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)	
}

function perfectTutorialAchievement(id, title, points){

	description = "Get Perfect on [Tutorial - Ievan Polkka] on any difficulty"
	song = _sIevanPolkka
	
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayID == song
			&& songEndResult == _serPerfect
			&& songEndedFlag == 1 
			&& prev(songResultShownFlag) == 0xa
			&& songResultShownFlag == 0x18
	
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
		description = format("Get Great or better on [{0}], Extreme difficulty", _dictSongs[song])
	}
	if (ser == _serPerfect){
		description = format("Get Perfect on [{0}], Extreme difficulty", _dictSongs[song])
	}
	
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayID == song
			&& songPlayDifficulty == _dExtreme
			&& songEndResult >= ser
			&& scoreShown()

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function perfectAchievement(id, title, points){
		
	description = "Get a Perfect combo on any song, Normal or higher, without using items"
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayID != _sIevanPolkka
			&& songPlayDifficulty >= _dNormal
			&& songEndResult == _serPerfect
			&& scoreShown()
			&& noItems()

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function allFlagsAchievement(id, flagIndex, title, description, points){
	
	flags = _dictFlags[flagIndex]
	
	trigger = unlockedBitflags(flags) 
			&& prevUnlockedBitflags(flags)
			
	if (flagIndex != _fVisualLibrary){
		//-Maybe check if current screen is the shop?
		trigger = trigger && unless(wasOnTitle())
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function allFlagsArrayAchievement(id, flagIndexes, title, description, points){		
	
	trigger = unless(wasOnTitle()) 
			&& unlockedBitflagsV2(flagIndexes) 
			&& prevUnlockedBitflagsV2(flagIndexes)	

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function swimsuitAchievement(id, char, module, title, points){		
	description = format("Clear every song on Hard or Extreme with {0} and own the [{1}] module", _dictCharNames[char], _dictModuleOriginalNames[module])
	
	trigger = never(wasOnTitle())
			&& hasModule(module)
			&& clearedHardOrExtreme(char, hadModule(module) == 0)			

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}
function kaitoSwimsuitAchievement(id, title, points){		
	description = format("Clear {0} on Hard with an Excellent score using {1} (1) and [{2}] (2)",
		_dictSongs[_sCantarella], _dictModuleOriginalNames[_mKaitoSwimwearVAlt], _dictModuleOriginalNames[_mHatsuneMikuSwimwearB])
	
	trigger = songPointer > 0
			&& hasModule(_mKaitoSwimwearVAlt)
			&& hasModule(_mHatsuneMikuSwimwearB)
			&& currentModule == _mKaitoSwimwearVAlt
			&& secondModule == _mHatsuneMikuSwimwearB
			&& songPlayID == _sCantarella
			&& songPlayDifficulty == _dHard
			&& songEndResult >= _serExcellent
			&& scoreShown()			

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function finishWithAchievement(id, module, song, diff, rank, combo, score, title, points) {
	description = format("Using [{0}] clear {1} on {2}", _dictModuleOriginalNames[module],
		_dictSongs[song], _dictDifficulty[diff])
	
	trigger = songPointer > 0
			&& hasModule(module)
			&& currentModule == module
			&& songPlayID == song
			&& songPlayDifficulty == diff
			&& songEndResult >= rank
			&& scoreShown()

	if rank > _serStandard {
		description = description + format(" with {0}", _dictSongEndResult[rank])
			
		if (combo > 0){
			description = description + format(" and a combo of {0}", combo)
		
			trigger = trigger && songResultCombo >= combo
		}		
	}
	else{
		if combo > 0 {
			description = description + format(" with a combo of {0}", combo)
			
			trigger = trigger && songResultCombo >= combo
		}
		
		if score > 0 {
			description = description + format(" with a score of {0}", score)
			
			trigger = trigger && songResultScore >= score
		}
	}	
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function finishWithAchievementNote(id, module, song, diff, notBad, cool, title, points) {
	description = format("Using [{0}] clear {1} on {2}", _dictModuleOriginalNames[module],
		_dictSongs[song], _dictDifficulty[diff])
	
	trigger = songPointer > 0
			&& hasModule(module)
			&& currentModule == module
			&& songPlayID == song
			&& songPlayDifficulty == diff
			&& songEndResult >= _serStandard
			&& scoreShown()
			
	if notBad > 0 {
		description = description + " without Sad or Worst notes"
			
		trigger = trigger && songResultSad == 0 && songResultWorst == 0
	}
	
	if cool > 0 {
		description = description + format(" with {0} Cool notes", cool)
			
		trigger = trigger && songResultCool >= cool
	}
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function perfectChanceTimeAchievement(id, module, song, diff, title, points) {
	description = format("Using [{0}] get a perfect combo during Chance Time on {1} on {2}", _dictModuleOriginalNames[module],
		_dictSongs[song], _dictDifficulty[diff])
	
	trigger = never(songPointer == 0 || songResultScore == 0)
			&& hasModule(module)
			&& currentModule == module
			&& songPlayID == song
			&& songPlayDifficulty == diff
			&& once(prev(chanceTimeFlag) == 0 && chanceTimeFlag == 1)
			&& never(songCurrentCombo < prev(songCurrentCombo))			
			&& trigger_when(prev(chanceTimeFlag) == 1 && chanceTimeFlag == 0)
						
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

//#endregion

//#region Leaderboard Logic
function songLeaderboard(song, diff){

	title = format("{0} ({1})", _dictSongs[song], _dictDifficulty[diff])
    description = format("Finish {0} on {1} with the highest score (No Items)", _dictSongs[song], _dictDifficulty[diff])
		
    start = songPointer > 0
			&& notInEditMode()
			&& prev(songEndedFlag) == 0
			&& songEndedFlag == 1			
			&& songPlayID == song
			&& songPlayDifficulty == diff
			&& songEndResult >= _serStandard
			&& noItems()
			
    cancel = songPointer == 0 || inEditMode() || songLife == 0
	
    submit = scoreShown()
			
    value = songResultScore
	
    leaderboard(title, description, start, cancel, submit, value, "SCORE")    
}

//#endregion

//#region Achievements
swimsuitAchievement(172237, _chMiku, _mHatsuneMikuSwimwearB, "Hatsune Miku's #2 Fan", 10)
swimsuitAchievement(172239, _chRin, _mKagamineRinSwimwearT, "Kagamine Rin's #2 Fan", 10)
swimsuitAchievement(172240, _chLen, _mKagamineLenSwimwearWS, "Kagamine Len's #2 Fan", 10)
swimsuitAchievement(172241, _chLuka, _mMegurineLukaSwimwearP, "Megurine Luka's #2 Fan", 10)
swimsuitAchievement(172242, _chKaito, _mKaitoSwimwearV, "Kaito's #2 Fan", 10)
swimsuitAchievement(172243, _chMeiko, _mMeikoSwimwearB, "Meiko's #2 Fan", 10)
swimsuitAchievement(172244, _chNeru, _mAkitaNeruSwimwear, "Akita Neru's #2 Fan", 10)
swimsuitAchievement(172245, _chHaku, _mYowaneHakuSwimwear, "Yowane Haku's #2 Fan", 10)
swimsuitAchievement(172246, _chSakine, _mSakineMeikoSwimswear, "Sakine Meiko's #2 Fan", 10)
kaitoSwimsuitAchievement(172247, "The Blue Danube", 10)

perfectChanceTimeAchievement(172248, _mVintageDressMiku, _sRomeoCin, _dNormal, "Midnight Princess", 5) //-150
finishWithAchievement(172305, _mButterflyMiku, _sMagnet, _dNormal, _serStandard, 200, 0, "The Playful Butterfly", 5) //-150
finishWithAchievement(172307, _mSpiritualMiku, _sAiKotoba, _dHard, _serGreat, 150, 0, "My Love Words to You", 5) //-200
finishWithAchievementNote(172308, _mOutAboutMiku, _sSound, _dNormal, 0, 250, "Welcome to the Light Music Club", 5) //-150
finishWithAchievement(172309, _mLittleRedMiku, _sCloverClub, _dHard, _serStandard, 170, 0, "Singing Through the Woods", 5) //-150
finishWithAchievementNote(172310, _mYellowMiku, _sYellow, _dNormal, 0, 270, "A Sparkling Yellow Morning", 5) //-200
finishWithAchievement(172311, _mJerseyMiku, _sPoPiPo, _dExtreme, _serStandard, 0, 0, "Vegetable Juice, Just 200Y", 5) //-150
finishWithAchievementNote(172312, _mSchoolNobleMiku, _sCantarella, _dNormal, 1, 0, "Love-Poisoned Maiden", 5) //-150
finishWithAchievement(172313, _mPowderMiku, _sFirstLove, _dNormal, _serGreat, 260, 0, "Thank You, Goodbye", 5) //-150
perfectChanceTimeAchievement(172314, _mNaturalMiku, _sGigantic, _dNormal, "The Day I Grow Up", 5) //-200
finishWithAchievement(172315, _mWhiteGownMiku, _sDear, _dNormal, _serGreat, 180, 0, "To My Beloved One", 5) //-150
finishWithAchievementNote(172316, _mAileDAngeMiku, _sVoice, _dNormal, 0, 230, "My Silent Voice", 5) //-150
finishWithAchievement(172317, _mSpacyNurseMiku, _sLoveColored, _dExtreme, _serStandard, 0, 0, "The Virus of Love", 5) //-150
finishWithAchievementNote(172318, _mCuteMiku, _sPromise, _dNormal, 1, 0, "My Promise To You", 5) //-150
finishWithAchievement(172319, _mAngelMiku, _sFirstSound, _dNormal, _serGreat, 220, 0, "The First of Many", 5) //-150
finishWithAchievement(172320, _mShaihateMiku, _sShaihate, _dExtreme, _serStandard, 0, 0, "Parting Ways with a Smile", 5) //-200
finishWithAchievementNote(172321, _mPinkPopsMiku, _sLookWayBaby, _dNormal, 1, 0, "Your Love Is Mine", 5) //-150
perfectChanceTimeAchievement(172322, _mPinkPopsASMiku, _sLookWayBaby, _dHard, "Princess Complex", 5) //-150
finishWithAchievementNote(172323, _mColorfulGumdrop, _sColorfulMelody, _dNormal, 0, 280, "A Colorful Canvas", 5) //-200
finishWithAchievement(172324, _mInfinityMiku, _sIntenseVoice, _dExtreme, _serStandard, 0, 0, "- HAPPY END -", 5) //-200

finishWithAchievementNote(172325, _mAsymmetricRRin, _sGemini, _dNormal, 0, 200, "Together On Noisy Days", 5) //-150
finishWithAchievement(172326, _mReactorRin, _sMeltdown, _dExtreme, _serStandard, 0, 0, "Purge in Nuclear Fusion", 5) //-200
finishWithAchievement(172328, _mRoFStyleRin, _sMeltdown, _dHard, _serGreat, 210, 0, "Subject #21", 5) //-200
finishWithAchievement(172329, _mCuteRin, _sPromise, _dHard, _serGreat, 200, 0, "To Protect You Forever", 5) //-150
perfectChanceTimeAchievement(172330, _mCheerfulCandy, _sColorfulMelody, _dHard, "The Color of Sound", 5) //-200

finishWithAchievement(172331, _mPunkishLen, _sButterfly, _dExtreme, _serStandard, 0, 0, "The Emotion of Grief", 5) //-150
perfectChanceTimeAchievement(172332, _mSchoolJerseyLen, _sButterfly, _dHard, "Tune Of Dissonance", 5) //-150
finishWithAchievementNote(172333, _mAsymmetricLLen, _sGemini, _dNormal, 1, 0, "Together On Sorrowful Nights", 5) //-150

finishWithAchievement(172334, _mBlossomLuka, _sMagnet, _dHard, _serGreat, 150, 0, "The Blooming Blossom", 5) //-150
finishWithAchievementNote(172335, _mChiffonDressLuka, _sJustFriends, _dNormal, 1, 0, "When Love Ends", 5) //-150
finishWithAchievementNote(172337, _mFrauleinLuka, _sJustFriends, _dHard, 0, 300, "Friendship Remains", 5) //-150
perfectChanceTimeAchievement(172338, _mHardRockLuka, _sDoubleLariat, _dHard, "Rockin' Around the World", 5) //-150
finishWithAchievement(172339, _mVFSuitLuka, _sDoubleLariat, _dExtreme, _serStandard, 0, 0, "Virtual Fighter", 5) //-200

perfectChanceTimeAchievement(172340, _mClassicKaito, _sCantarella, _dNormal, "Toxic Lover", 5) //-150
finishWithAchievement(172341, _mCampusKaito, _sReallyUnderstand, _dHard, _serGreat, 150, 0, "Youthful School Days", 5) //-150
finishWithAchievement(172342, _mCyberCatKaito, _sFirstSound, _dExtreme, _serStandard, 0, 0, "Kaito and the Pussycats", 5) //-150

finishWithAchievementNote(172343, _mFluffyCoatMeiko, _sYtoY, _dHard, 1, 0, "So Cold Without You", 5) //-150
finishWithAchievement(172344, _mScarletMeiko, _sChangeMe, _dExtreme, _serStandard, 0, 0, "Lady In Red", 5) //-150
finishWithAchievementNote(172345, _mModernGirlMeiko, _sChangeMe, _dNormal, 0, 240, "Night's Still Young", 5) //-150
finishWithAchievement(172346, _mModernGirlAltMeiko, _sChangeMe, _dHard, _serGreat, 200, 0, "Back To The Dance Floor", 5) //-150

finishWithAchievement(172347, _mAborigineNeru, _sGigantic, _dExtreme, _serStandard, 0, 0, "To Crush Hatsune Miku", 5) //-200

finishWithAchievement(172348, _mCyberDriveHaku, _sSongDesert, _dExtreme, _serStandard, 0, 0, "Into the Sea of Light", 5) //-200

finishWithAchievement(172349, _mBlackDressSakine, _sCocoaGirls, _dExtreme, _serStandard, 0, 0, "Dear Pumpkin Girl", 5) //-200

//-Unlock all songs (10)
allFlagsAchievement(172249, _fSongs, "My Second Album", "Unlock all songs", 10)

//-Get every Diva Room and Theme (10)
allFlagsArrayAchievement(172250, [_fRoomTheme, _fDivaRooms], "Room With a View", "Get every Diva Room and Theme", 10)

//-Get every Room Accessory (25)
allFlagsAchievement(172251, _fShelfAccessory, "No Missing Souvenirs", "Get every Shelf Accessory", 25)

//-Get every Wall Accessory (10)
allFlagsAchievement(172252, _fWallAccessory, "No Empty Walls", "Get every Wall Accessory", 10)

//-Get every Floor Accessory (10)
allFlagsAchievement(172253, _fFloorAccessory, "No Room To Walk", "Get every Floor Accessory", 10)

//-Get every picture and video from the Visual Library (10)
allFlagsAchievement(172254, _fVisualLibrary, "A Tribute to Vocaloid", "Get every picture and video from the Visual Library", 10)

//-Get Perfect on any song Normal or Hard (10)
perfectAchievement(172256, "Path to DIVA", 10)

//-Finish all songs with Great or better on all 3 difficulties
greatPerfectAchievement(172257, _serGreat, _sRomeoCin, _dictSongs[_sRomeoCin], _dictGreatSongs[_sRomeoCin])
greatPerfectAchievement(172258, _serGreat, _sMagnet, _dictSongs[_sMagnet], _dictGreatSongs[_sMagnet])
greatPerfectAchievement(172259, _serGreat, _sAiKotoba, _dictSongs[_sAiKotoba], _dictGreatSongs[_sAiKotoba])
greatPerfectAchievement(172260, _serGreat, _sSound, _dictSongs[_sSound], _dictGreatSongs[_sSound])
greatPerfectAchievement(172261, _serGreat, _sKokoro, _dictSongs[_sKokoro], _dictGreatSongs[_sKokoro])
greatPerfectAchievement(172262, _serGreat, _sPackaged, _dictSongs[_sPackaged], _dictGreatSongs[_sPackaged])
greatPerfectAchievement(172263, _serGreat, _sButterfly, _dictSongs[_sButterfly], _dictGreatSongs[_sButterfly])
greatPerfectAchievement(172264, _serGreat, _sMarginal, _dictSongs[_sMarginal], _dictGreatSongs[_sMarginal])
greatPerfectAchievement(172265, _serGreat, _sSecretGarden, _dictSongs[_sSecretGarden], _dictGreatSongs[_sSecretGarden])
greatPerfectAchievement(172266, _serGreat, _sJustFriends, _dictSongs[_sJustFriends], _dictGreatSongs[_sJustFriends])
greatPerfectAchievement(172267, _serGreat, _sStrobeNights, _dictSongs[_sStrobeNights], _dictGreatSongs[_sStrobeNights])
greatPerfectAchievement(172268, _serGreat, _sCloverClub, _dictSongs[_sCloverClub], _dictGreatSongs[_sCloverClub])
greatPerfectAchievement(172269, _serGreat, _sYtoY, _dictSongs[_sYtoY], _dictGreatSongs[_sYtoY])
greatPerfectAchievement(172270, _serGreat, _sUpdatingLoveList, _dictSongs[_sUpdatingLoveList], _dictGreatSongs[_sUpdatingLoveList])
greatPerfectAchievement(172272, _serGreat, _sYellow, _dictSongs[_sYellow], _dictGreatSongs[_sYellow])
greatPerfectAchievement(172273, _serGreat, _sSongLife, _dictSongs[_sSongLife], _dictGreatSongs[_sSongLife])
greatPerfectAchievement(172274, _serGreat, _sChangeMe, _dictSongs[_sChangeMe], _dictGreatSongs[_sChangeMe])
greatPerfectAchievement(172275, _serGreat, _sPoPiPo, _dictSongs[_sPoPiPo], _dictGreatSongs[_sPoPiPo])
greatPerfectAchievement(172276, _serGreat, _sCantarella, _dictSongs[_sCantarella], _dictGreatSongs[_sCantarella])
greatPerfectAchievement(172277, _serGreat, _sFirstLove, _dictSongs[_sFirstLove], _dictGreatSongs[_sFirstLove])
greatPerfectAchievement(172278, _serGreat, _sSongDesert, _dictSongs[_sSongDesert], _dictGreatSongs[_sSongDesert])
greatPerfectAchievement(172279, _serGreat, _sCocoaGirls, _dictSongs[_sCocoaGirls], _dictGreatSongs[_sCocoaGirls])
greatPerfectAchievement(172280, _serGreat, _sGigantic, _dictSongs[_sGigantic], _dictGreatSongs[_sGigantic])
greatPerfectAchievement(172281, _serGreat, _sDear, _dictSongs[_sDear], _dictGreatSongs[_sDear])
greatPerfectAchievement(172282, _serGreat, _sGemini, _dictSongs[_sGemini], _dictGreatSongs[_sGemini])
greatPerfectAchievement(172283, _serGreat, _sVoice, _dictSongs[_sVoice], _dictGreatSongs[_sVoice])
greatPerfectAchievement(172284, _serGreat, _sWorldMine, _dictSongs[_sWorldMine], _dictGreatSongs[_sWorldMine])
greatPerfectAchievement(172285, _serGreat, _sMiraclePaint, _dictSongs[_sMiraclePaint], _dictGreatSongs[_sMiraclePaint])
greatPerfectAchievement(172286, _serGreat, _sMoon, _dictSongs[_sMoon], _dictGreatSongs[_sMoon])
greatPerfectAchievement(172287, _serGreat, _sVelvetArabesque, _dictSongs[_sVelvetArabesque], _dictGreatSongs[_sVelvetArabesque])
greatPerfectAchievement(172288, _serGreat, _sInnocence, _dictSongs[_sInnocence], _dictGreatSongs[_sInnocence])
greatPerfectAchievement(172290, _serGreat, _sMeltdown, _dictSongs[_sMeltdown], _dictGreatSongs[_sMeltdown])
greatPerfectAchievement(172291, _serGreat, _sReallyUnderstand, _dictSongs[_sReallyUnderstand], _dictGreatSongs[_sReallyUnderstand])
greatPerfectAchievement(172292, _serGreat, _sMelt, _dictSongs[_sMelt], _dictGreatSongs[_sMelt])
greatPerfectAchievement(172293, _serGreat, _sLoveColored, _dictSongs[_sLoveColored], _dictGreatSongs[_sLoveColored])
greatPerfectAchievement(172294, _serGreat, _sFinder, _dictSongs[_sFinder], _dictGreatSongs[_sFinder])
greatPerfectAchievement(172295, _serGreat, _sPromise, _dictSongs[_sPromise], _dictGreatSongs[_sPromise])
greatPerfectAchievement(172296, _serGreat, _sMikuBacteria, _dictSongs[_sMikuBacteria], _dictGreatSongs[_sMikuBacteria])
greatPerfectAchievement(172297, _serGreat, _sFirstSound, _dictSongs[_sFirstSound], _dictGreatSongs[_sFirstSound])
greatPerfectAchievement(172298, _serGreat, _sWhiteDove, _dictSongs[_sWhiteDove], _dictGreatSongs[_sWhiteDove])
greatPerfectAchievement(172299, _serGreat, _sShaihate, _dictSongs[_sShaihate], _dictGreatSongs[_sShaihate])
greatPerfectAchievement(172300, _serGreat, _sLookWayBaby, _dictSongs[_sLookWayBaby], _dictGreatSongs[_sLookWayBaby])
greatPerfectAchievement(172301, _serGreat, _sColorfulMelody, _dictSongs[_sColorfulMelody], _dictGreatSongs[_sColorfulMelody])
greatPerfectAchievement(172302, _serGreat, _sDoubleLariat, _dictSongs[_sDoubleLariat], _dictGreatSongs[_sDoubleLariat])
greatPerfectAchievement(172303, _serGreat, _sMikuMiku, _dictSongs[_sMikuMiku], _dictGreatSongs[_sMikuMiku])
greatPerfectAchievement(172304, _serGreat, _sIntenseVoice, _dictSongs[_sIntenseVoice], _dictGreatSongs[_sIntenseVoice])

perfectTutorialAchievement(172350, "SLeek Student", 1)

//-Get every module (10)
allFlagsAchievement(172351, _fModules, "DIVA's Stylist", "Get every Module", 25)

//-Watch every Room Event (25)
allFlagsAchievement(172353, _fRoomEvents, "A Day In Vocaloid's Life", "Watch every Room Event", 25)
//#endregion

//#region Leaderboards
for song in _dictSongs {
	if (song != _sIevanPolkka){	
		for diff in _dictDifficulty {
			songLeaderboard(song, diff)
		}
	}
}

//#endregion

//#region Rich Presence
rich_presence_conditional_display(onTitle(), "In the Title Screen")

rich_presence_conditional_display(songPointer != 0 && songPlayDifficulty == _dEasy, 
							"[{0}] Playing {1} ({2} {3}) [High Score: {4}] [MAX Combo: {5}] [Cleared: {16}{6} {7}{8}{9}{10}{11}{12}{13}{14}{15}]",
							rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
							rich_presence_lookup("song", songPlayID, _dictSongs, "???"),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty),
							rich_presence_lookup("starsE", songPlayID, _dictSongStarsEasy),
							rich_presence_value("val", songMax(_fsMaxScore, songPlayID, _dEasy)),
							rich_presence_value("val", songMax(_fsMaxCombo, songPlayID, _dEasy)),
							rich_presence_value("val", timesCleared(songPlayID, _dEasy)),
							rich_presence_lookup("miku", clearedSongWChar(_fsMikuFail, songPlayID, _dEasy), _dictEmpty, "💚"),
							rich_presence_lookup("rin", clearedSongWChar(_fsRinFail, songPlayID, _dEasy), _dictEmpty, "🍊"),
							rich_presence_lookup("len", clearedSongWChar(_fsLenFail, songPlayID, _dEasy), _dictEmpty, "🍌"),
							rich_presence_lookup("luka", clearedSongWChar(_fsLukaFail, songPlayID, _dEasy), _dictEmpty, "🐙"),
							rich_presence_lookup("kaito", clearedSongWChar(_fsKaitoFail, songPlayID, _dEasy), _dictEmpty, "🍦"),
							rich_presence_lookup("meiko", clearedSongWChar(_fsMeikoFail, songPlayID, _dEasy), _dictEmpty, "👗"),
							rich_presence_lookup("neru", clearedSongWChar(_fsNeruFail, songPlayID, _dEasy), _dictEmpty, "📱"),
							rich_presence_lookup("haku", clearedSongWChar(_fsHakuFail, songPlayID, _dEasy), _dictEmpty, "🍶"),
							rich_presence_lookup("sakine", clearedSongWChar(_fsSakineFail, songPlayID, _dEasy), _dictEmpty, "👧"),
							rich_presence_lookup("perfect", songClear(_fsClearedPerfect, songPlayID, _dEasy), _dictEmpty, "👑")
							)
							
rich_presence_conditional_display(songPointer != 0 && songPlayDifficulty == _dNormal, 
							"[{0}] Playing {1} ({2} {3}) [High Score: {4}] [MAX Combo: {5}] [Cleared: {16}{6} {7}{8}{9}{10}{11}{12}{13}{14}{15}]",
							rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
							rich_presence_lookup("song", songPlayID, _dictSongs, "???"),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty),
							rich_presence_lookup("starsN", songPlayID, _dictSongStarsNormal),
							rich_presence_value("val", songMax(_fsMaxScore, songPlayID, _dNormal)),
							rich_presence_value("val", songMax(_fsMaxCombo, songPlayID, _dNormal)),
							rich_presence_value("val", timesCleared(songPlayID, _dNormal)),
							rich_presence_lookup("miku", clearedSongWChar(_fsMikuFail, songPlayID, _dNormal), _dictEmpty, "💚"),
							rich_presence_lookup("rin", clearedSongWChar(_fsRinFail, songPlayID, _dNormal), _dictEmpty, "🍊"),
							rich_presence_lookup("len", clearedSongWChar(_fsLenFail, songPlayID, _dNormal), _dictEmpty, "🍌"),
							rich_presence_lookup("luka", clearedSongWChar(_fsLukaFail, songPlayID, _dNormal), _dictEmpty, "🐙"),
							rich_presence_lookup("kaito", clearedSongWChar(_fsKaitoFail, songPlayID, _dNormal), _dictEmpty, "🍦"),
							rich_presence_lookup("meiko", clearedSongWChar(_fsMeikoFail, songPlayID, _dNormal), _dictEmpty, "👗"),
							rich_presence_lookup("neru", clearedSongWChar(_fsNeruFail, songPlayID, _dNormal), _dictEmpty, "📱"),
							rich_presence_lookup("haku", clearedSongWChar(_fsHakuFail, songPlayID, _dNormal), _dictEmpty, "🍶"),
							rich_presence_lookup("sakine", clearedSongWChar(_fsSakineFail, songPlayID, _dNormal), _dictEmpty, "👧"),
							rich_presence_lookup("perfect", songClear(_fsClearedPerfect, songPlayID, _dNormal), _dictEmpty, "👑")
							)
							
rich_presence_conditional_display(songPointer != 0 && songPlayDifficulty == _dHard, 
							"[{0}] Playing {1} ({2} {3}) [High Score: {4}] [MAX Combo: {5}] [Cleared: {16}{6} {7}{8}{9}{10}{11}{12}{13}{14}{15}]",
							rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
							rich_presence_lookup("song", songPlayID, _dictSongs, "???"),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty),
							rich_presence_lookup("starsH", songPlayID, _dictSongStarsHard),
							rich_presence_value("val", songMax(_fsMaxScore, songPlayID, _dHard)),
							rich_presence_value("val", songMax(_fsMaxCombo, songPlayID, _dHard)),
							rich_presence_value("val", timesCleared(songPlayID, _dHard)),
							rich_presence_lookup("miku", clearedSongWChar(_fsMikuFail, songPlayID, _dHard), _dictEmpty, "💚"),
							rich_presence_lookup("rin", clearedSongWChar(_fsRinFail, songPlayID, _dHard), _dictEmpty, "🍊"),
							rich_presence_lookup("len", clearedSongWChar(_fsLenFail, songPlayID, _dHard), _dictEmpty, "🍌"),
							rich_presence_lookup("luka", clearedSongWChar(_fsLukaFail, songPlayID, _dHard), _dictEmpty, "🐙"),
							rich_presence_lookup("kaito", clearedSongWChar(_fsKaitoFail, songPlayID, _dHard), _dictEmpty, "🍦"),
							rich_presence_lookup("meiko", clearedSongWChar(_fsMeikoFail, songPlayID, _dHard), _dictEmpty, "👗"),
							rich_presence_lookup("neru", clearedSongWChar(_fsNeruFail, songPlayID, _dHard), _dictEmpty, "📱"),
							rich_presence_lookup("haku", clearedSongWChar(_fsHakuFail, songPlayID, _dHard), _dictEmpty, "🍶"),
							rich_presence_lookup("sakine", clearedSongWChar(_fsSakineFail, songPlayID, _dHard), _dictEmpty, "👧"),
							rich_presence_lookup("perfect", songClear(_fsClearedPerfect, songPlayID, _dHard), _dictEmpty, "👑")
							)
							
rich_presence_conditional_display(songPointer != 0 && songPlayDifficulty == _dExtreme, 
							"[{0}] Playing {1} ({2} {3}) [High Score: {4}] [MAX Combo: {5}] [Cleared: {16}{6} {7}{8}{9}{10}{11}{12}{13}{14}{15}]",
							rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
							rich_presence_lookup("song", songPlayID, _dictSongs, "???"),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty),
							rich_presence_lookup("starsX", songPlayID, _dictSongStarsExtreme),
							rich_presence_value("val", songMax(_fsMaxScore, songPlayID, _dExtreme)),
							rich_presence_value("val", songMax(_fsMaxCombo, songPlayID, _dExtreme)),
							rich_presence_value("val", timesCleared(songPlayID, _dExtreme)),
							rich_presence_lookup("miku", clearedSongWChar(_fsMikuFail, songPlayID, _dExtreme), _dictEmpty, "💚"),
							rich_presence_lookup("rin", clearedSongWChar(_fsRinFail, songPlayID, _dExtreme), _dictEmpty, "🍊"),
							rich_presence_lookup("len", clearedSongWChar(_fsLenFail, songPlayID, _dExtreme), _dictEmpty, "🍌"),
							rich_presence_lookup("luka", clearedSongWChar(_fsLukaFail, songPlayID, _dExtreme), _dictEmpty, "🐙"),
							rich_presence_lookup("kaito", clearedSongWChar(_fsKaitoFail, songPlayID, _dExtreme), _dictEmpty, "🍦"),
							rich_presence_lookup("meiko", clearedSongWChar(_fsMeikoFail, songPlayID, _dExtreme), _dictEmpty, "👗"),
							rich_presence_lookup("neru", clearedSongWChar(_fsNeruFail, songPlayID, _dExtreme), _dictEmpty, "📱"),
							rich_presence_lookup("haku", clearedSongWChar(_fsHakuFail, songPlayID, _dExtreme), _dictEmpty, "🍶"),
							rich_presence_lookup("sakine", clearedSongWChar(_fsSakineFail, songPlayID, _dExtreme), _dictEmpty, "👧"),
							rich_presence_lookup("perfect", songClear(_fsClearedPerfect, songPlayID, _dExtreme), _dictEmpty, "👑")
							)

rich_presence_conditional_display(inEditMode(), "[{0}] Playing around with the Song Editor [🎵:{1}/46] [🧸:{2}/131] [🖼️:{3}/207] [👫:{4}/106]",
					rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
					rich_presence_value("val", flagCounter(_dictFlags[_fSongs])),
					rich_presence_value("val", flagCounterV2([_fDivaRooms, _fRoomTheme, _fFloorAccessory, _fShelfAccessory, _fWallAccessory])),
					rich_presence_value("val", flagCounter(_dictFlags[_fVisualLibrary])),
					rich_presence_value("val", flagCounter(_dictFlags[_fModules])))

rich_presence_display("[{0}] [🎵:{1}/46] [🧸:{2}/131] [🖼️:{3}/207] [👫:{4}/106]",
					rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
					rich_presence_value("val", flagCounter(_dictFlags[_fSongs])),
					rich_presence_value("val", flagCounterV2([_fDivaRooms, _fRoomTheme, _fFloorAccessory, _fShelfAccessory, _fWallAccessory])),
					rich_presence_value("val", flagCounter(_dictFlags[_fVisualLibrary])),
					rich_presence_value("val", flagCounter(_dictFlags[_fModules])))

//#endregion
