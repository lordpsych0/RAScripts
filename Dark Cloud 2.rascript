// Dark Cloud 2
// #ID = 1308

//*
//- https://docs.google.com/spreadsheets/d/1eI4GceYGU3plYHovn8X9kjFNhgZnq6cdOe-fYD8CxM8/edit#gid=0
//- https://quest.guide/dark-cloud-2/#/chapter/1
//-https://www.ign.com/wikis/dark-cloud-2/Walkthrough:_Chapter_1
//-https://www.playstationtrophies.org/forum/topic/266746-dark-cloud-2-trophy-guide-amp-roadmap/
//-https://quest.guide/dark-cloud-2/#/chapters

//-https://psnprofiles.com/guide/3895-dark-cloud-2-ideas-scoops-and-inventions-guide
//-https://www.almarsguides.com/retro/walkthroughs/ps2/games/darkcloud2/
//-https://darkcloud.fandom.com/wiki/Inventing#Inventions
*/

//#region zFramework {
function isTrue(p) => p == 1
function isFalse(p) => p == 0
function turnOn(p) => prev(p) == 0 && p == 1
function turnOff(p) => prev(p) == 1 && p == 0
function fromTo(add, x, y) => prev(add) == x && add == y
function increasedBy(add, am) {
	if (am == 0) return add > prev(add)
	else return add == prev(add) + am
}
function decreasedBy(add, am) {
	if (am == 0) return add < prev(add)
	else return add == prev(add) - am
}
//#endregion }

//#region Variables {

//- function Chapters()
_chpPrologue = 1
_chp1 = 2
_chp1a = 3
_chp2 = 4
_chp3 = 5
_chp4 = 6
_chp5 = 7
_chp6 = 8
_chp7 = 9
_chp8 = 10

//- function Locations()
//-Ch1
_iaCedricShop = 11
_iaPollyBakery = 12
_iaMortonSundries = 13
_iaWeaponShop = 14
_iaPoliceHQ = 15
_iaBar = 16
_iaStation = 17
_iaPalmBrinks = 18 //-Include Tree
_iaSunMoon = 19
_iaChurch = 20
_iaUChannelExit = 21
_iaTrain = 22
_iaCityHall = 23
_iaParn = 24
_iaMortonHouse = 25
_iaMansion = 26
_iaZelMine = 27
_iaDrDell = 28
_iaPier = 29
//-Ch2
_iaSindain = 30
_iaJurakMall = 31
//-Ch3
_iaBalanceValley = 32
_iaStarlighCanyon = 33
_iaStarlightTemple = 34
_iaFishContest = 35
_chp3a = 45 //-This is only used for segregation
//-Ch4
_iaVeniccio = 36
_iaLunaLabs = 37
_iaFinnyFrenzy = 38
//-Ch5
_iaHeimRada = 39
_iaGundoradaWorkshop = 40
//-Ch6
_iaMoonFlowerEntrance = 41
_iaKazarov = 42
//-Ch7
_iaMoonFlowerPalace = 43
_iaMoonFlowerPalaceExtra = 45
//-Ch8
_iaZelMine8 = 44

//- function Items()
//---Max Right weapon
_imaxrBattleWrench = 0x1
_imaxrDrillWrench = 0x2
_imaxrSmashWrench = 0x3
_imaxrStingerWrench = 0x4
_imaxrPoisonWrench = 0x5
_imaxrCubicHammer = 0x6
_imaxrDigiHammer = 0x7
_imaxrHeavyHammer = 0x8
_imaxrTurtleShellHammer = 0xf
_imaxrBigBucksHammer = 0x10
_imaxrFrozenTuna = 0x11
_imaxrKuberaHand = 0x12
_imaxrSigmaBreaker = 0x13
_imaxrGradeZero = 0x14
_imaxrLegend = 0x15
_imaxrTrueBattleWrench = 0x5a

//---Max Left Weapon
_imaxlClassicGun = 0x16
_imaxlDryerGun = 0x17
_imaxlTrumpetGun = 0x18
_imaxlBellTrigger = 0x19
_imaxlMagicGun = 0x1a
_imaxlSoulBreaker = 0x1b
_imaxlGrenadeLauncher = 0x1c
_imaxlDarkViper = 0x1d
_imaxlTwinBuster = 0x1e
_imaxlJurakGun = 0x1f
_imaxlQuestionShooter = 0x20
_imaxlStealGun = 0x21
_imaxlSupernova = 0x22
_imaxlStarBreaker = 0x23
_imaxlWildCat = 0x24
_imaxlSexyPanther = 0x25
_imaxlDesperado = 0x26
_imaxlSigmaBazooka = 0x27
_imaxlLastResort = 0x28

//---Spheda
_isHandyStick = 0x9
_isTurkey = 0xa
_isSwan = 0xb
_isFlamingo = 0xc
_isFalcon = 0xd
_isAlbatross = 0xe

//---Monica Right Weapon
_imonrLongSword = 0x29
_imonrBroadSword = 0x2a
_imonrBaselard = 0x2b
_imonrGladius = 0x2c
_imonrWiseOwlSword = 0x2d
_imonrCliffKnife = 0x2e
_imonrAntiqueSword = 0x2f
_imonrBastardSword = 0x30
_imonrKitchenKnife = 0x31
_imonrTsukikage = 0x32
_imonrSunSword = 0x33
_imonrSerpentSlicer = 0x34
_imonrShamshir = 0x36
_imonrAmaNoMurakumo = 0x37
_imonrLambsSword = 0x38
_imonrDarkCloud = 0x39
_imonrBraveArk = 0x3a
_imonrBigBang = 0x3b
_imonrAtlamilliaSword = 0x3c
_imonrMardanSword = 0x3d
_imonrGarayanSword = 0x3e
_imonrMardanGarayan = 0x3f
_imonrRulersSword = 0x40
_imonrEvilcise = 0x41
_imonrSmallSword = 0x42
_imonrSandBreaker = 0x43
_imonrDrainSeeker = 0x44
_imonrChopper = 0x45
_imonrChoora = 0x46
_imonrClaymore = 0x47
_imonrManeater = 0x48
_imonrBoneRapier = 0x49
_imonrSax = 0x4a
_imonr7BranchSword = 0x4b
_imonrDusack = 0x4c
_imonrCrossHeinder = 0x4d
_imonr7thHeaven = 0x4e
_imonrSwordOfZeus = 0x4f
_imonrChronicleSword = 0x50
_imonrChronicle2 = 0x51
_imonrHolyDaedalusBlade = 0x52
_imonrMuramasa = 0x53
_imonrDarkExcalibur = 0x54
_imonrSargatanas = 0x55
_imonrHalloweenBlade = 0x56
_imonrShiningBravado = 0x57
_imonrIslandKing = 0x58
_imonrGriffonFork = 0x59
_imonlRoyalSword = 0x6e

//---Monica Left Weapon
_imonlMagicBrassard = 0x5b
_imonlGoldBrassard = 0x5c
_imonlBanditBrassard = 0x5d
_imonlCrystalBrassard = 0x5e
_imonlPlatinumBrassard = 0x5f
_imonlGoddessBrassard = 0x60
_imonlSpiritBrassard = 0x61
_imonlDestructionBrassard = 0x62
_imonlSatanBrassard = 0x63
_imonlAthenasBrassard = 0x64
_imonlMobiusBangle = 0x65
_imonlAngelShooter = 0x66
_imonlPocklekul = 0x67
_imonlThornArmlet = 0x68
_imonlStarArmlet = 0x69
_imonlMoonArmlet = 0x6a
_imonlSunArmlet = 0x6b
_imonlFiveStarArmlet = 0x6c
_imonlLove = 0x6d

//-Items
_itMonsterNotes = 0xac //-Blue book
_itFishingRod = 0x12e 
_itBadgeBox = 0x134 
_itAquarium = 0x135 
_itInsideScoopMemo = 0x163 //-Green book
_itPhotoAlbum = 0x165 //-Orange book
_itCamera = 0x171
_itNameChangeTicket = 0x180
_itNotebook = 0x182 //-Red book
_itClownHat = 0x74
_itGiftCapsule = 0x130
_itPotatoPie = 0x184
_itWitchParfait = 0x185
_itVoiceUnit = 0x1a6

//- function Inventions()
_invFirstInvention = 0x1e270bc

_ivAlbatross = _isAlbatross
_ivAntiCurseAmulet = 0xff
_ivAntiGooAmulet = 0x100
_ivAntiPetrifyAmulet = 0xfd
_ivAntidoteAmulet = 0x101
_ivAntidoteDrink = 0x113
_ivAquarium = 0x135
_ivBanditBrassard = _imonlBanditBrassard
_ivBarrelCannon = 0x92
_ivBarrelCannonII = 0x18b
_ivBarrelCannonIII = 0x18c
_ivBarrelCannonIV = 0x18d
_ivBellTrigger = _imaxlBellTrigger
_ivBomb = 0x118
_ivBoneRapier = _imonrBoneRapier
_ivBread = 0x10c
_ivBucketLeg = 0x9d
_ivBucketPack = 0xa7
_ivBuggy = 0x9f
_ivCannonballArm = 0x91
_ivCannonballArmII = 0x188
_ivCannonballArmIII = 0x189
_ivCannonballArmIV = 0x18a
_ivCaterpillar = 0x9c
_ivCheese = 0x10d
_ivCleanerPack = 0xa8
_ivClownBody = 0x8b
_ivClownFoot = 0xa3
_ivClownHand = 0x97
_ivClownHandII = 0x19a
_ivClownHandIII = 0x19b
_ivClownHandIV = 0x19c
_ivClownShoes = 0x79
_ivCubicHammer = _imaxrCubicHammer
_ivDarkViper = _imaxlDarkViper
_ivDigiHammer = _imaxrDigiHammer
_ivDoublePudding = 0x10f
_ivDragonShoes = 0x78
_ivDrillArm = 0x93
_ivDrillArmII = 0x18e
_ivDrillArmIII = 0x18f
_ivDrillArmIV = 0x190
_ivDrumCanBody = 0x87
_ivEnergyPack = 0xa5
_ivEnergyPackBarrel = 0xa6
_ivEnergyPackUrn = 0xa9
_ivEscapePowder = 0x125
_ivFalcon = _isFalcon
_ivFinalBomb = 0x187
_ivFlamingo = _isFlamingo
_ivGiftCapsule = _itGiftCapsule
_ivGrenadeLauncher = _imaxlGrenadeLauncher
_ivHammerArm = 0x95
_ivHammerArmII = 0x194
_ivHammerArmIII = 0x195
_ivHammerArmIV = 0x196
_ivHeavyHammer = _imaxrHeavyHammer
_ivHolyWater = 0x114
_ivImprovedBomb = 0x186
_ivIronLeg = 0x9b
_ivJetHover = 0xa2
_ivKnightBoots = 0x81
_ivLaserArm = 0x99
_ivLaserArmII = 0x1a0
_ivLaserArmIII = 0x1a1
_ivLaserArmIV = 0x1a2
_ivLeatherShoes = 0x75
_ivLevelupPowder = 0x127
_ivLightspeed = 0x133
_ivLureRod = 0x12f
_ivMachineGunArm = 0x96
_ivMachineGunArmII = 0x197
_ivMachineGunArmIII = 0x198
_ivMachineGunArmIV = 0x199
_ivMagicGun = _imaxlMagicGun
_ivMetalBoots = 0x82
_ivMilkCanBody = 0x88
_ivMissilePodArm = 0x94
_ivMissilePodArmII = 0x191
_ivMissilePodArmIII = 0x192
_ivMissilePodArmIV = 0x193
_ivMultiFeet = 0xa1
_ivNonStopAmulet = 0xfe
_ivNovaCannon = 0x9a
_ivNovaCannonII = 0x1a3
_ivNovaCannonIII = 0x1a4
_ivNovaCannonIV = 0x1a5
_ivPantherBoots = 0x86
_ivPoisonWrench = _imaxrPoisonWrench
_ivPremiumChicken = 0x10e
_ivPrincessBoots = 0x85
_ivPropellerLeg = 0xa0
_ivQuestionShooter = _imaxlQuestionShooter
_ivRefridgeratorBody = 0x89
_ivResurrectionPowder = 0x111
_ivRidepodFuel = 0x17d
_ivRollerFoot = 0x9e
_ivRulersSword = _imonrRulersSword
_ivSamuraiArm = 0x98
_ivSamuraiArmII = 0x19d
_ivSamuraiArmIII = 0x19e
_ivSamuraiArmIV = 0x19f
_ivSamuraiBody = 0x8c
_ivSandBreaker = _imonrSandBreaker
_ivSexyPanther = _imaxlSexyPanther
_ivSmashWrench = _imaxrSmashWrench
_ivSoap = 0x115
_ivSoulBreaker = _imaxlSoulBreaker
_ivSpikeBoots = 0x84
_ivStaminaDrink = 0x112
_ivStarBreaker = _imaxlStarBreaker
_ivStealGun = _imaxlStealGun
_ivStingerWrench = _imaxrStingerWrench
_ivSunandMoonArmour = 0x8e
_ivSuperAlloyBody = 0x8d
_ivSwan = _isSwan
_ivTastyWater = 0x1a9
_ivTreasureKey = 0x129
_ivTripleUrnPack = 0xaa
_ivTrumpetGun = _imaxlTrumpetGun
_ivTurkey = _isTurkey
_ivTwinBuster = _imaxlTwinBuster
_ivWildcat = _imaxlWildCat
_ivWingBoots = 0x83
_ivWingShoes = 0x76
_ivWiseOwlSword = _imonrWiseOwlSword
_ivWoodenBoxBody = 0x8a
_ivWorkShoes = 0x77


//--function Ideas()
_idTrashcan 	= 0x1
_idMailbox 		= 0x2
_idStreetlight 	= 0x3
_idFountain 	= 0x4
_idBarrel 		= 0x5
_idLamp 		= 0x6
_idBench 		= 0x7
_idParasol 		= 0x8
_idFlag 		= 0x9
_idShruberry 	= 0xa
_idWindow 		= 0xb
_idWoodenBox 	= 0xc
_idManhole 		= 0xd
_idTrafficLight = 0xe
_idDrawbridge 	= 0xf
_idRiver 		= 0x10
_idPost 		= 0x11
_idClock 		= 0x12
_idTable 		= 0x13
_idStaircase 	= 0x14
_idMonument 	= 0x15
_idTree 		= 0x16
_idBridge 		= 0x17
_idPier 		= 0x18
_idRock 		= 0x19
_idRailroad 	= 0x1a
_idPumpkin 		= 0x1b
_idCart 		= 0x1c
_idFence 		= 0x1d
_idGate 		= 0x1e
_idChimey 		= 0x1f
_idHoe			= 0x20
_idSunshade		= 0x21
_idMilkCan		= 0x22
_idPipe			= 0x23
_idBelt			= 0x24
_idOldStylRobot = 0x25
_idWeightGauge	= 0x26
_idRapper		= 0x27
_idFan			= 0x28
_idVacumm		= 0x29
_idVacummBag	= 0x2a
_idTinyHammer	= 0x2b
_idABookReader	= 0x2c
_idBinoculars	= 0x2d
_idConstructor	= 0x2e
_idIronBridge	= 0x2f
_idLight		= 0x30
_idFlower		= 0x31
_idWithJurak	= 0x32
_idPot			= 0x33
//-_idPalmBrinks	= 0x34
_idCloth		= 0x35
_idEgg			= 0x36
//-_idPalmBrinks	= 0x37
//-_idPalmBrinks	= 0x38
_idMushroom		= 0x39
_idHat			= 0x3a
//-_idPalmBrinks	= 0x3b
_idBone			= 0x3c
_idEyeball		= 0x3d
_idChair		= 0x3e
_idBottle		= 0x3f
_idFigure		= 0x40
_idRug			= 0x41
_idCurtain		= 0x42
//-_idPalmBrinks	= 0x43
_idPiano		= 0x44
//-_id				= 0x45
_idCar			= 0x46
_idBook			= 0x47
_idWheel		= 0x48
_idRobot		= 0x49
_idBed			= 0x4a
_idDresser		= 0x4b
_idChandelier	= 0x4c
_idTelescope	= 0x4d
_idPainting		= 0x4e
_idQuartz		= 0x4f
_idHorn			= 0x50
//-_id				= 0x51
_idHookedNose	= 0x52
_idFireplace	= 0x53
_idDeerHorn		= 0x54
_idElenaPort	= 0x55
_idDrawer		= 0x56
_idVegetFruit	= 0x57
_idFish			= 0x58
_idStove		= 0x59
_idLadder		= 0x5a
_idPhone		= 0x5b
_idLetter		= 0x5c
_idRefri		= 0x5d
_idScale		= 0x5e
_idElectBulle	= 0x5f
_idVictorStand	= 0x60
_idWaterTank	= 0x61
_idOpposedIsl	= 0x62
_idGlowGate		= 0x63
_idIronMaiden	= 0x64
_idShowWindow	= 0x65
_idGoldStore	= 0x66
_idWeapon		= 0x67
_idShield		= 0x68
_idRedHouse		= 0x69
_idWindmill		= 0x6a
_idLunaSShard	= 0x6b
_idPalmTree		= 0x6c
_idTorch		= 0x6d
_idLinHouse		= 0x6e
_idMountGundor	= 0x6f
_idGeyser		= 0x70
_idHotSpringP	= 0x71
_idGrass		= 0x72
_idWorkCrane	= 0x73
_idGenerator	= 0x74
_idHammer		= 0x75
_idElevator		= 0x76
_idDecoLights	= 0x77
_idPhonograph	= 0x78
_idJurakEye		= 0x79
_idJurakNose	= 0x7a
_idSearchLight	= 0x7b
_idSign			= 0x7c
_idRifle		= 0x7d
_idCandle		= 0x7e
_idGlassesCase	= 0x7f
_idFreightTrain	= 0x80
_idBread		= 0x81
_idCup			= 0x82
_idVendingMach	= 0x83
_idRegister		= 0x84
_idWheatFlour	= 0x85
_idCan			= 0x86
_idOven			= 0x87
_idPaints		= 0x88
_idWaterfall	= 0x89
_idSaw			= 0x8a
_idHammock		= 0x8b
_idWeatherVane	= 0x8c
_idPaznosPatrn	= 0x8d
_idVentilation	= 0x8e
_idPropeller	= 0x8f
_idComputer		= 0x90
_idTransDev		= 0x91
_idEggTrans		= 0x92
_idTV			= 0x93
_idSmallGen		= 0x94
_idLaundry		= 0x95
_idBanana		= 0x96
_idJurakArmSign	= 0x97
_idMushBurgSign	= 0x98
_idWoodyTailorS	= 0x99
_idGoldDoor		= 0x9a
_idLabyDoor		= 0x9b
_idFlowerChande	= 0x9c
_idWorkRobot	= 0x9d
_idWorkEq		= 0x9e
_idAirCleaner	= 0x9f
_idEnergyPipe	= 0xa0
_idEggChair		= 0xa1
_idWorkArm		= 0xa2
_idFuturon800	= 0xa3
_idSystem5WP2	= 0xa4
_idNeoProjector	= 0xa5
_idWoodBookshel	= 0xa6
_idFlowerChair	= 0xa7
_idStand		= 0xa8
//-_id				= 0xa9
_idPowerArm		= 0xaa
_idLargeCrane	= 0xab
_idBoat			= 0xac
_idLigthLunaSt	= 0xad
_idFlowerBathL	= 0xae
_idLotusFlower	= 0xaf
_idWaterfCurt	= 0xb0
_idBlueLatern	= 0xb1
_idSunTable		= 0xb2
_idSunChair		= 0xb3
_idWaterWheel	= 0xb4
_idRelaxFount	= 0xb5
_idSilverBench	= 0xb6
//-_id				= 0xb7
_idCamelliaTree	= 0xb8
_idGoldGate		= 0xb9
_idStarlStair	= 0xba
_idStardustPoun	= 0xbb
_idStarlTunnel	= 0xbc
_idFlowerBed	= 0xbd
_idMoonColumn	= 0xbe
_idRoadGoldbad	= 0xbf
_idDeadTree		= 0xc0
_idTheMoon		= 0xc1
_idTheSun		= 0xc2
_idMorningSun	= 0xc3
_idEveningSun	= 0xc4
_idDrumCan		= 0xc5
_idElectricSes	= 0xc6
_idDisplayRobo	= 0xc7
_idRunawDragon	= 0xc8
_idChinesLanter	= 0xc9
_idScroll		= 0xca
_idLaoChaoT		= 0xcb
_idSpecPekDuck	= 0xcc
_idPorkDump		= 0xcd
_idBaskStreamer	= 0xce
_idRotatingSign	= 0xcf
_idHandSewn		= 0xd0
_idStarLamp		= 0xd1
_idPeepingPole	= 0xd2
_idCrescShapLig	= 0xd3
_idStarglass	= 0xd4
_idHolyEmblem	= 0xd5
_idStainedGlass	= 0xd6
_idFrescoPaint	= 0xd7
_idSaintWriting	= 0xd8
_idWindmFeather	= 0xd9
_idSulphurJuice	= 0xda
_idPatternedRug	= 0xdb
_idAlexandraBed	= 0xdc
_idPollyBakSign	= 0xdd
_idCedricShopS	= 0xde
_idMortonSundS	= 0xdf
_idDellClinicS	= 0xe0
_idPoliceSign	= 0xe1
_idParnStudSi	= 0xe2
_idWeaponShopS	= 0xe3
_idBarSign		= 0xe4
_idCafeSign		= 0xe5
_idPinky		= 0xe6
_idCoal			= 0xe7
_idFireHouse	= 0xe8
_idPotTorch		= 0xe9
_idFruit		= 0xea
_idWell			= 0xeb
_idWarehouse	= 0xec
_idIronShed		= 0xed
_idLog			= 0xee
_idCinders		= 0xef
_idMud			= 0xf0
_idEarthAltar	= 0xf1
_idWindAltar	= 0xf2
_idFireAltar	= 0xf3
_idWaterAltar	= 0xf4
_idGiantYordaT	= 0xf5
_idBlackstoneO	= 0xf6
_idFishingCoSi	= 0xf7
_idFishRaceSi	= 0xf8
_idMrBigShotSha	= 0xf9
_idZelmiteFound	= 0xfa

//- function Scoops()
_scBurnDragonF	= 0x3e8
_scSpinningIvan	= 0x3e9
_scChargRam		= 0x3ea
_scPhantoMemo	= 0x3eb
_scChangDogSt	= 0x3ec
_scFaintBonLor	= 0x3ed
_scNightStalker	= 0x3ee
_scDangerPumpk	= 0x3ef
//-_sc				= 0x3f0
_scHurrayRockMa	= 0x3f1
_scNiceMassage	= 0x3f2
_scGyumosYell	= 0x3f3
_scSpookyGrSmil	= 0x3f4
_scBraveLLinda	= 0x3f5
_scClownRoboAtt	= 0x3f6
_scRButterUnite	= 0x3f7
_scPuppedShin	= 0x3f8
_scTheUltGasp	= 0x3f9
_scBaronHangOn	= 0x3fa
_scToreNap		= 0x3fb
//-_sc				= 0x3fc
_scFaceBehEvil	= 0x3fd
_scFloatEarchD	= 0x3fe
_scBomberBoom	= 0x3ff
_scFloatsRevive	= 0x400
//-_sc				= 0x401
_scGriffonRFace	= 0x402
_scDrJaming		= 0x403


//-- function Dungeons&Floors()
_dUChannel = 1
_dRBWoods = 2
_dSCanyon = 3
_dORCave = 4
_dMGundore = 5
_sMFPalace = 6
_sZMine = 7

//-Floors
_fOutsideWorld = 1
_fBattleRats = 2
_fGhostChannel = 3
_fUChannel4 = 4
_fUChannel5 = 5
_fUChannel6 = 6
_fUChannel7 = 7
_fRBWood1 = 8

//-Floor Address
_faMainFlags = 0x1e1de22
_faMainAllMonsters = 0x1e1de23
_faMainMonstersKilled = 0x1e1de24
_faMainTimesVisited = 0x1e1de26

//- function BestiaryMonsters()
_mRat = 0x1e646d2
_mBeachRat = 0x1e646de

//- function Photos()
_phIdeaPhotoAdd = 0x1e63880
_phIdeaBookAdd = 0x1e269e8
_phIdeaAlbumAdd = 0x1ecbfd0
_phIdeaOfPhoto = 0x1e26df2



//#endregion }

//#region Dictionaries {
//- function Locations()
_dictMap = {
	0x0: "Sindain",
	0x1: "Balance Valley",
	0x2: "Veniccio",
	0x3: "Heim Rada",
	0x4: "Moon Flower Palace",
	0x9: "Veniccio",
	0xa: "Palm Brinks",
	0xb: "Palm Brinks Station",
	0xc: "Palm Brinks Square",
	0xd: "Palm Brinks Residence",
	0xe: "Palm Brinks Park",
	0xf: "Channel Reservoir",
	0x10: "Sindain Station",
	0x11: "Palm Brinks",
	0x12: "Inside of Train",
	0x13: "Palm Brinks",
	0x14: "Palm Brinks",
	0x15: "Channel Reservoir",
	0x16: "Channel Entrance",
	0x17: "Inside of Locomotive",
	0x18: "Rainbow Falls",
	0x19: "Jurak Mall",
	0x1a: "Starlight Temple",
	0x1b: "Cedric's Shop",
	0x1c: "Polly's Bakery",
	0x1d: "Rental Storehouse",
	0x1e: "Weapon Shop",
	0x1f: "Morton's Sundries",
}

_dictFloor = {
	_fOutsideWorld: "To the Outside Wor1d",
	_fBattleRats: "Battle with Rats",
	_fGhostChannel: "Ghost in the Channel",
	_fUChannel4: "",
	_fUChannel5: "Steve's Battle",
	_fUChannel6: "Sweet, Scary Treasure Chest",
	_fUChannel7: "",
	_fRBWood1: "",
}

_dictDungeon = {
	_dUChannel: "Underground Channel",
	_dRBWoods: "Rainbow Butterfly Wood",
	_dSCanyon: "Starlight Canyon",
	_dORCave: "Ocean's Roar Cave",
	_dMGundore: "Mount Gundore",
	_sMFPalace: "Moon Flower Palace",
	_sZMine: "Zelmite Mine",
}

_dictDunFloor = {
	_fOutsideWorld: _dictDungeon[_dUChannel],
	_fBattleRats: _dictDungeon[_dUChannel],
	_fGhostChannel: _dictDungeon[_dUChannel],
	_fUChannel4: "",
	_fUChannel5: "Steve's Battle",
	_fUChannel6: "Sweet, Scary Treasure Chest",
	_fUChannel7: "",
	_fRBWood1: "",
}

//- function Items()

_dictItems = {
	//-Wrenches
	_imaxrBattleWrench: "Battle Wrench",
	_imaxrDrillWrench: "Drill Wrench",
	_imaxrSmashWrench : "Smash Wrench",
	_imaxrStingerWrench : "Stinger Wrench",
	_imaxrPoisonWrench : "Poison Wrench",
	_imaxrCubicHammer : "Cubic Hammer",
	_imaxrDigiHammer : "Digi Hammer",
	_imaxrHeavyHammer : "Heavy Hammer",
	_imaxrTurtleShellHammer : "Turtle Shell Hammer",
	_imaxrBigBucksHammer : "Big Bucks Hammer",
	_imaxrFrozenTuna : "Frozen Tuna",
	_imaxrKuberaHand : "Kubera Hand",
	_imaxrSigmaBreaker : "Sigma Breaker",
	_imaxrGradeZero : "Grade Zero",
	_imaxrLegend : "Legend",
	_imaxrTrueBattleWrench: "True Battle Wrench",
	//-Spheda
	_isHandyStick : "Handy Stick",
	_isTurkey : "Turkey",
	_isSwan : "Swan",
	_isFlamingo : "Flamingo",
	_isFalcon : "Falcon",
	_isAlbatross : "Albatross",
	//-Guns
	_imaxlClassicGun: "Classic Gun",
	_imaxlDryerGun: "Dryer Gun",
	_imaxlTrumpetGun: "Trumpet Gun",
	_imaxlBellTrigger: "Bell Trigger",
	_imaxlMagicGun: "Magic Gun",
	_imaxlSoulBreaker: "Soul Breaker",
	_imaxlGrenadeLauncher: "Grenade Launcher",
	_imaxlDarkViper: "Dark Viper",
	_imaxlTwinBuster: "Twin Buster",
	_imaxlJurakGun: "Jurak Gun",
	_imaxlQuestionShooter: "Question Shooter",
	_imaxlStealGun: "StealGun",
	_imaxlSupernova: "Supernova",
	_imaxlStarBreaker: "Star Breaker",
	_imaxlWildCat: "Wild Cat",
	_imaxlSexyPanther: "Sexy Panther",
	_imaxlDesperado: "Desperado",
	_imaxlSigmaBazooka: "SigmaBazooka",
	_imaxlLastResort: "Last Resort",
	//-Swords
	_imonrLongSword: "Long Sword",
	_imonrBroadSword: "Broad Sword",
	_imonrBaselard: "Baselard",
	_imonrGladius: "Gladius",
	_imonrWiseOwlSword: "Wise Owl Sword",
	_imonrCliffKnife: "CliffKnife",
	_imonrAntiqueSword: "Antique Sword",
	_imonrBastardSword: "Bastard Sword",
	_imonrKitchenKnife: "Kitchen Knife",
	_imonrTsukikage: "Tsukikage",
	_imonrSunSword: "Sun Sword",
	_imonrSerpentSlicer: "Serpent Slicer",
	_imonrShamshir: "Shamshir",
	_imonrAmaNoMurakumo: "Ama No Murakumo",
	_imonrLambsSword: "Lamb's Sword",
	_imonrDarkCloud: "Dark Cloud",
	_imonrBraveArk: "Brave Ark",
	_imonrBigBang: "Big Bang",
	_imonrAtlamilliaSword: "Atlamillia Sword",
	_imonrMardanSword: "Mardan Sword",
	_imonrGarayanSword: "Garayan Sword",
	_imonrMardanGarayan: "Mardan Garayan",
	_imonrRulersSword: "Ruler's Sword",
	_imonrEvilcise: "Evilcise",
	_imonrSmallSword: "Small Sword",
	_imonrSandBreaker: "Sand Breaker",
	_imonrDrainSeeker: "Drain Seeker",
	_imonrChopper: "Chopper",
	_imonrChoora: "Choora",
	_imonrClaymore: "Claymore",
	_imonrManeater: "Maneater",
	_imonrBoneRapier: "BoneRapier",
	_imonrSax: "Sax",
	_imonr7BranchSword: "7 Branch Sword",
	_imonrDusack: "Dusack",
	_imonrCrossHeinder: "Cross Heinder",
	_imonr7thHeaven: "7th Heaven",
	_imonrSwordOfZeus: "Sword Of Zeus",
	_imonrChronicleSword: "Chronicle Sword",
	_imonrChronicle2: "Chronicle 2",
	_imonrHolyDaedalusBlade: "Holy Daedalus Blade",
	_imonrMuramasa: "Muramasa",
	_imonrDarkExcalibur: "Dark Excalibur",
	_imonrSargatanas: "Sargatanas",
	_imonrHalloweenBlade: "Halloween Blade",
	_imonrShiningBravado: "Shining Bravado",
	_imonrIslandKing: "Island King",
	_imonrGriffonFork: "Griffon Fork",
	_imonlRoyalSword: "Royal Sword",
	//-Armlets
	_imonlMagicBrassard: "Magic Brassard",
	_imonlGoldBrassard: "Gold Brassard",
	_imonlBanditBrassard: "Bandit Brassard",
	_imonlCrystalBrassard: "Crystal Brassard",
	_imonlPlatinumBrassard: "Platinum Brassard",
	_imonlGoddessBrassard: "Goddess Brassard",
	_imonlSpiritBrassard: "Spirit Brassard",
	_imonlDestructionBrassard: "DestructionBrassard",
	_imonlSatanBrassard: "Satan Brassard",
	_imonlAthenasBrassard: "Athenas Brassard",
	_imonlMobiusBangle: "Mobius Bangle",
	_imonlAngelShooter: "Angel Shooter",
	_imonlPocklekul: "Pocklekul",
	_imonlThornArmlet: "Thorn Armlet",
	_imonlStarArmlet: "Star Armlet",
	_imonlMoonArmlet: "Moon Armlet",
	_imonlSunArmlet: "SunArmlet",
	_imonlFiveStarArmlet: "Five Star Armlet",
	_imonlLove: "Love"
}

_dictMaxStats = {
	_imaxrLegend: [500, 99, 250, 250, 250, 250, 250, 250, 250, 250],
	_imaxlSupernova: [500, 99, 250, 250, 250, 250, 250, 250, 250, 250],
	_imonrIslandKing: [500, 99, 250, 250, 250, 250, 250, 250, 250, 250],
	_imonlFiveStarArmlet: [500, 99, 300, 300, 300, 300, 250, 250, 250, 250]
}

//- function Chapters()

_dictChapter = {
	_chpPrologue: "Prologue - A Night at the Circus",
	_chp1: "To the Outside World",
	_chp1a: "To the Outside World",
	_chp2: "Resurrection of the Great Elder",
	_chp3: "The Sage of the Stars",
	_chp4: "Good-Bye Shingala",
	_chp5: "Conflict of the Past and Future",
	_chp6: "When Two Eras Collide",
	_chp7: "Palace of Flowers",
	_chp8: "The Forgotten Adventure"
}
_dictChapterNum = {
	_chpPrologue: "",
	_chp1: "1",
	_chp1a: "1",
	_chp2: "2",
	_chp3: "3",
	_chp3a: "3",
	_chp4: "4",
	_chp5: "5",
	_chp6: "6",
	_chp7: "7",
	_chp8: "8"
}

//- function Ideas()

_dictIdeaOrder = {
	_idAirCleaner	: 0,
	_idAlexandraBed	: 1,
	_idABookReader	: 2,
	_idBanana		: 3,
	_idBarSign	 	: 4,
	_idBarrel		: 5,
	_idBaskStreamer	: 6,
	_idBed			: 7,
	_idBelt			: 8,
	_idBench 		: 9,
	_idBinoculars	: 10,
	_idBlackstoneO	: 11,
	_idBlueLatern	: 12,
	_idBoat			: 13,
	_idBone			: 14,
	_idBook			: 15,
	_idBottle		: 16,
	_idBread		: 17,
	_idBridge 		: 18,
	_idCafeSign     : 19,
	_idCamelliaTree : 20,
	_idCan          : 21,
	_idCandle       : 22,
	_idCar          : 23,
	_idCart         : 24,
	_idCedricShopS  : 25,
	_idChair        : 26,
	_idChandelier   : 27,
	_idChimey       : 28,
	_idChinesLanter : 29,
	_idCinders      : 30,
	_idClock        : 31,
	_idCloth        : 32,
	_idCoal         : 33,
	_idComputer     : 34,
	_idConstructor  : 35,
	_idCrescShapLig : 36,
	_idCup          : 37,
	_idCurtain      : 38,
	_idDeadTree     : 39,
	_idDecoLights   : 40,
	_idDeerHorn     : 41,
	_idDellClinicS  : 42,
	_idDisplayRobo  : 43,
	_idDrawbridge   : 44,
	_idDrawer       : 45,
	_idDresser      : 46,
	_idDrumCan      : 47,
	_idEarthAltar   : 48,
	_idEgg          : 49,
	_idEggChair     : 50,
	_idEggTrans     : 51,
	_idElectBulle   : 52,
	_idElectricSes  : 53,
	_idElenaPort    : 54,
	_idElevator     : 55,
	_idEnergyPipe   : 56,
	_idEveningSun   : 57,
	_idEyeball      : 58,
	_idFan          : 59,
	_idFence        : 60,
	_idFigure       : 61,
	_idFireAltar    : 62,
	_idFireHouse    : 63,
	_idFireplace    : 64,
	_idFish         : 65,
	_idFishRaceSi   : 66,
	_idFishingCoSi  : 67,
	_idFlag         : 68,
	_idFlower       : 69,
	_idFlowerBathL  : 70,
	_idFlowerBed    : 71,
	_idFlowerChair  : 72,
	_idFlowerChande : 73,
	_idFountain     : 74,
	_idFreightTrain : 75,
	_idFrescoPaint  : 76,
	_idFruit        : 77,
	_idFuturon800   : 78,
	_idGate         : 79,
	_idGenerator    : 80,
	_idGeyser       : 81,
	_idGiantYordaT  : 82,
	_idGlassesCase  : 83,
	_idGlowGate     : 84,
	_idGoldGate     : 85,
	_idGoldStore    : 86,
	_idGoldDoor     : 87,
	_idGrass        : 88,
	_idHammer       : 89,
	_idHammock      : 90,
	_idHandSewn     : 91,
	_idHat          : 92,
	_idHoe          : 93,
	_idHolyEmblem   : 94,
	_idHookedNose   : 95,
	_idHorn         : 96,
	_idHotSpringP   : 97,
	_idIronBridge   : 98,
	_idIronMaiden   : 99,
	_idIronShed     : 100,
	_idJurakArmSign : 101,
	_idJurakEye     : 102,
	_idJurakNose    : 103,
	_idLabyDoor     : 104,
	_idLadder       : 105,
	_idLamp         : 106,
	_idLaoChaoT     : 107,
	_idLargeCrane   : 108,
	_idLaundry      : 109,
	_idLetter       : 110,
	_idLight        : 111,
	_idLigthLunaSt  : 112,
	_idLinHouse     : 113,
	_idLog          : 114,
	_idLotusFlower  : 115,
	_idLunaSShard   : 116,
	_idMailbox      : 117,
	_idManhole      : 118,
	_idMilkCan      : 119,
	_idMonument     : 120,
	_idMoonColumn   : 121,
	_idMorningSun   : 122,
	_idMortonSundS  : 123,
	_idMountGundor  : 124,
	_idMrBigShotSha : 125,
	_idMud          : 126,
	_idMushroom     : 127,
	_idMushBurgSign : 128,
	_idNeoProjector : 129,
	_idOldStylRobot : 130,
	_idOpposedIsl   : 131,
	_idOven         : 132,
	_idPainting     : 133,
	_idPaints       : 134,
	_idPalmTree     : 135,
	_idParasol      : 136,
	_idParnStudSi   : 137,
	_idPatternedRug : 138,
	_idPaznosPatrn  : 139,
	_idPeepingPole  : 140,
	_idPhone        : 141,
	_idPhonograph   : 142,
	_idPiano        : 143,
	_idPier         : 144,
	_idPinky        : 145,
	_idPipe         : 146,
	_idPoliceSign   : 147,
	_idPollyBakSign : 148,
	_idPorkDump     : 149,
	_idPost         : 150,
	_idPot          : 151,
	_idPotTorch     : 152,
	_idPowerArm     : 153,
	_idPropeller    : 154,
	_idPumpkin      : 155,
	_idQuartz       : 156,
	_idRailroad     : 157,
	_idRapper       : 158,
	_idRedHouse     : 159,
	_idRefri        : 160,
	_idRegister     : 161,
	_idRelaxFount   : 162,
	_idRifle        : 163,
	_idRiver        : 164,
	_idRoadGoldbad  : 165,
	_idRobot        : 166,
	_idRock         : 167,
	_idRotatingSign : 168,
	_idRug          : 169,
	_idRunawDragon  : 170,
	_idSaintWriting : 171,
	_idSaw          : 172,
	_idScale        : 173,
	_idScroll       : 174,
	_idSearchLight  : 175,
	_idShield       : 176,
	_idShowWindow   : 177,
	_idShruberry    : 178,
	_idSign         : 179,
	_idSilverBench  : 180,
	_idSmallGen     : 181,
	_idSpecPekDuck  : 182,
	_idStainedGlass : 183,
	_idStaircase    : 184,
	_idStand        : 185,
	_idStarLamp     : 186,
	_idStardustPoun : 187,
	_idStarglass    : 188,
	_idStarlStair   : 189,
	_idStarlTunnel  : 190,
	_idStove        : 191,
	_idStreetlight  : 192,
	_idSulphurJuice : 193,
	_idSunChair     : 194,
	_idSunTable     : 195,
	_idSunshade     : 196,
	_idSystem5WP2   : 197,
	_idTV           : 198,
	_idTable        : 199,
	_idTelescope    : 200,
	_idTheMoon      : 201,
	_idTheSun       : 202,
	_idTinyHammer   : 203,
	_idTorch        : 204,
	_idTrafficLight : 205,
	_idTransDev     : 206,
	_idTrashcan     : 207,
	_idTree         : 208,
	_idVacumm       : 209,
	_idVacummBag    : 210,
	_idVegetFruit   : 211,
	_idVendingMach  : 212,
	_idVentilation  : 213,
	_idVictorStand  : 214,
	_idWarehouse    : 215,
	_idWaterAltar   : 216,
	_idWaterTank    : 217,
	_idWaterWheel   : 218,
	_idWaterfall    : 219,
	_idWaterfCurt   : 220,
	_idWeapon       : 221,
	_idWeaponShopS  : 222,
	_idWeatherVane  : 223,
	_idWeightGauge  : 224,
	_idWell         : 225,
	_idWheatFlour   : 226,
	_idWheel        : 227,
	_idWindAltar    : 228,
	_idWindmill     : 229,
	_idWindmFeather : 230,
	_idWindow       : 231,
	_idWithJurak    : 232,
	_idWoodBookshel : 233,
	_idWoodenBox    : 234,
	_idWoodyTailorS : 235,
	_idWorkArm      : 236,
	_idWorkCrane    : 237,
	_idWorkEq       : 238,
	_idWorkRobot    : 239,
	_idZelmiteFound : 240
}

//-241 Ideas. 53 Scoops = 294 slots
_dictChapterIdeas = {
//-		_chp1: [_idABookReader, _idBarSign, _idBarrel, _idBelt, _idBench, _idBinoculars, _idBlackstoneO, _idBook, _idBottle, _idBread, _idCafeSign, _idCan, _idCar, _idCart, _idCedricShopS, _idChair, _idChandelier, _idChimey, _idClock, _idConstructor, _idCup, _idDrawbridge, _idEveningSun, _idFan, _idFlag, _idFlower, _idFlowerChair, _idFountain, _idFreightTrain, _idGoldStore, _idIronBridge, _idIronMaiden, _idLadder, _idLamp, _idLight, _idMailbox, _idManhole, _idMilkCan, _idMorningSun, _idMortonSundS, _idOldStylRobot, _idOven, _idPainting, _idParasol, _idPhonograph, _idPiano, _idPipe, _idPoliceSign, _idPollyBakSign, _idPost, _idPot, _idPumpkin, _idRailroad, _idRapper, _idRefri, _idRegister, _idRiver, _idShield, _idShowWindow, _idShruberry, _idSign, _idStaircase, _idStreetlight, _idSunshade, _idTable, _idTheMoon, _idTheSun, _idTinyHammer, _idTrafficLight, _idTrashcan, _idTree, _idVacumm, _idVacummBag, _idVegetFruit, _idVendingMach, _idWaterfall, _idWeapon, _idWeaponShopS, _idWeightGauge, _idWheatFlour, _idWheel, _idWindow, _idWoodenBox],
//-		_chp2: [_idBed, _idBoat, _idBone, _idBridge, _idCandle, _idCloth, _idCoal, _idCurtain, _idDeerHorn, _idDellClinicS, _idDrawer, _idDresser, _idEgg, _idElenaPort, _idEyeball, _idFence, _idFigure, _idFireHouse, _idFireplace, _idFish, _idFruit, _idGate, _idGlassesCase, _idGrass, _idHammock, _idHoe, _idJurakArmSign, _idJurakEye, _idJurakNose, _idLetter, _idLog, _idMonument, _idMushroom, _idMushBurgSign, _idPaints, _idPalmTree, _idParnStudSi, _idPhone, _idPier, _idPotTorch, _idQuartz, _idRifle, _idRobot, _idRock, _idRug, _idSaw, _idStainedGlass, _idStand, _idStove, _idTelescope, _idWaterWheel, _idWithJurak, _idWoodBookshel, _idWoodyTailorS],
//-		_chp3: [_idBaskStreamer, _idChinesLanter, _idCrescShapLig, _idElectBulle, _idFishingCoSi, _idFrescoPaint, _idGiantYordaT, _idGlowGate, _idHandSewn, _idHat, _idHolyEmblem, _idHorn, _idLaoChaoT, _idLaundry, _idLinHouse, _idPeepingPole, _idPorkDump, _idRotatingSign, _idRunawDragon, _idSaintWriting, _idScale, _idScroll, _idSpecPekDuck, _idStarLamp, _idStarglass, _idTorch, _idVictorStand, _idWarehouse, _idWeatherVane, _idWell],
//-		_chp4: [_idAirCleaner, _idBanana, _idEggChair, _idEggTrans, _idEnergyPipe, _idFishRaceSi, _idFuturon800, _idIronShed, _idLigthLunaSt, _idLunaSShard, _idNeoProjector, _idOpposedIsl, _idRedHouse, _idSearchLight, _idSmallGen, _idSystem5WP2, _idTV, _idVentilation, _idWaterTank, _idWindmill, _idWindmFeather, _idWorkArm, _idWorkEq, _idWorkRobot],
//-		_chp5: [_idCinders, _idComputer, _idDecoLights, _idDisplayRobo, _idDrumCan, _idElectricSes, _idElevator, _idGeyser, _idHammer, _idHotSpringP, _idLargeCrane, _idMountGundor, _idMud, _idPatternedRug, _idPaznosPatrn, _idPowerArm, _idPropeller, _idSulphurJuice, _idTransDev, _idWorkCrane],
//-		_chp6: [_idDeadTree, _idEarthAltar, _idFireAltar, _idGoldGate, _idHookedNose, _idPinky, _idWaterAltar, _idWindAltar],
//-		_chp7: [_idAlexandraBed, _idBlueLatern, _idCamelliaTree, _idFlowerBathL, _idFlowerBed, _idFlowerChande, _idGoldDoor, _idLabyDoor, _idLotusFlower, _idMoonColumn, _idRelaxFount, _idRoadGoldbad, _idSilverBench, _idStardustPoun, _idStarlStair, _idStarlTunnel, _idSunChair, _idSunTable, _idWaterfCurt],
	_iaCedricShop: [_idOldStylRobot, _idWeightGauge, _idFan, _idTinyHammer, _idBinoculars, _idABookReader, _idVacummBag, _idVacumm, _idConstructor, _idPipe, _idManhole, _idFlag],
	_iaPollyBakery: [_idBread, _idCan, _idFlower, _idOven, _idMilkCan, _idPollyBakSign, _idSunshade, _idWindow, _idRegister],
	_iaMortonSundries: [_idBook, _idChair, _idChandelier, _idPainting, _idPhonograph, _idVegetFruit, _idVendingMach, _idWheatFlour, _idBarrel, _idPumpkin, _idSign],
	_iaWeaponShop: [_idGoldStore, _idIronMaiden, _idLamp, _idLight, _idShield, _idShowWindow, _idWeapon, _idWoodenBox, _idMailbox, _idWeaponShopS ],
	_iaPoliceHQ: [_idBench, _idClock, _idPost, _idShruberry, _idBelt, _idCart , _idChimey, _idPoliceSign, _idStreetlight],
	_iaBar: [_idBottle, _idCar, _idLadder, _idPiano, _idRapper, _idTable, _idWheel, _idBarSign, _idCafeSign, _idParasol],
	_iaStation: [_idFlowerChair, _idCup, _idPot, _idStaircase, _idBlackstoneO, _idFreightTrain],	
	_iaSunMoon: [_idTheSun, _idTheMoon, _idMorningSun, _idEveningSun],
	_iaPalmBrinks: [_idTrashcan, _idFountain, _idRiver, _idTrafficLight, _idTree, _idRailroad, _idBoat, _idPier, _idElectBulle, _idFishingCoSi, _idGlowGate, _idScale, _idOpposedIsl, _idVictorStand, _idWaterTank],
	_iaUChannelExit: [_idIronBridge, _idWaterfall],
	_iaTrain: [_idCoal, _idFireHouse],
	_iaCityHall: [_idGlassesCase, _idDeerHorn, _idStand],
	_iaChurch: [_idCandle, _idRug],
	_iaParn: [_idParnStudSi, _idBed, _idCloth, _idCurtain, _idFigure, _idPaints],
	_iaMortonHouse: [_idDrawer, _idHoe, _idRefri],
	_iaMansion: [_idElenaPort, _idFireplace, _idRifle, _idStainedGlass, _idDresser, _idRobot, _idTelescope, _idPalmTree, _idFish, _idStove, _idPhone, _idLetter, _idFence, _idGate, _idBridge],
	_iaDrDell: [_idDellClinicS, _idBone, _idEyeball, _idEgg, _idSaw],
	//-Ch2
	_iaSindain: [_idFruit, _idGrass, _idHammock, _idJurakEye, _idJurakNose, _idLog, _idPotTorch, _idQuartz, _idWaterWheel, _idWithJurak, _idWoodBookshel],
	_iaJurakMall: [_idJurakArmSign, _idMushroom, _idMushBurgSign, _idWoodyTailorS],
	//-Ch3
	_iaBalanceValley: [_idBaskStreamer, _idChinesLanter, _idFrescoPaint, _idHandSewn, _idHolyEmblem, _idLaundry, _idLinHouse, _idRotatingSign, _idSaintWriting, _idStarLamp, _idWarehouse, _idWeatherVane, _idWell],
	_iaStarlighCanyon: [_idGiantYordaT],
	_iaStarlightTemple: [_idCrescShapLig, _idHat, _idHorn, _idLaoChaoT, _idPeepingPole, _idPorkDump, _idRunawDragon, _idScroll, _idSpecPekDuck, _idStarglass, _idTorch],
	//-Ch4
	_iaVeniccio: [_idBanana, _idIronShed, _idLigthLunaSt, _idLunaSShard, _idRedHouse, _idSmallGen, _idTV, _idVentilation, _idWindmill, _idWindmFeather],
	_iaLunaLabs: [_idAirCleaner, _idEggChair, _idEggTrans, _idEnergyPipe, _idFuturon800, _idNeoProjector, _idSearchLight, _idSystem5WP2, _idWorkArm, _idWorkEq, _idWorkRobot],
	//-Ch5
	_iaHeimRada: [_idCinders, _idGeyser, _idHotSpringP, _idLargeCrane, _idMountGundor, _idMud],
	_iaGundoradaWorkshop: [_idComputer, _idElevator, _idGenerator, _idPaznosPatrn, _idPowerArm, _idPropeller, _idTransDev, _idWorkCrane, _idDecoLights, _idDisplayRobo, _idDrumCan, _idElectricSes, _idHammer, _idPatternedRug, _idSulphurJuice],
	//-Ch6
	_iaMoonFlowerEntrance: [_idDeadTree, _idGoldGate, _idPinky],
	_iaKazarov: [_idEarthAltar, _idFireAltar, _idWaterAltar, _idWindAltar],
	//-Ch7
	_iaMoonFlowerPalace: [_idAlexandraBed, _idBlueLatern, _idCamelliaTree, _idFlowerBathL, _idFlowerBed, _idFlowerChande, _idGoldDoor, _idHookedNose, _idLabyDoor, _idLotusFlower, _idRelaxFount, _idRoadGoldbad, _idWaterfCurt, _idSilverBench],
	_iaMoonFlowerPalaceExtra: [_idMoonColumn, _idStardustPoun, _idStarlStair, _idStarlTunnel, _idSunChair, _idSunTable],
	//-Ch8
	_chp8: [_idMrBigShotSha, _idZelmiteFound]
}

//- function Inventions()
//-128 Inventions
_dictChapterInventions = {
	_chp1a: [_ivAquarium, _ivBanditBrassard, _ivCannonballArm, _ivCaterpillar, _ivClownHand, _ivEnergyPack, _ivEnergyPackBarrel, _ivKnightBoots, _ivTastyWater, _ivTrumpetGun],
	_chp2: [_ivAntiPetrifyAmulet, _ivBarrelCannon, _ivBellTrigger, _ivBomb, _ivBoneRapier, _ivBread, _ivCannonballArmII, _ivClownBody, _ivClownFoot, _ivClownShoes, _ivDoublePudding, _ivGiftCapsule, _ivGrenadeLauncher, _ivIronLeg, _ivImprovedBomb, _ivLeatherShoes, _ivLightspeed, _ivLureRod, _ivSwan, _ivWorkShoes],
	_chp3: [_ivAntiCurseAmulet, _ivAntidoteAmulet, _ivAntidoteDrink, _ivAntiGooAmulet, _ivBarrelCannonII, _ivBucketLeg, _ivBucketPack, _ivCannonballArmIII, 
			_ivCheese, _ivClownHandII, _ivDragonShoes, _ivDrillArm, _ivHolyWater, _ivMachineGunArm, _ivMachineGunArmII],
	_chp3a: [_ivMagicGun, _ivMilkCanBody, _ivMissilePodArm, _ivNonStopAmulet, _ivPremiumChicken,
			_ivRollerFoot, _ivSamuraiArm, _ivSamuraiBody, _ivSandBreaker, _ivSmashWrench, _ivSoap, _ivSpikeBoots, _ivStaminaDrink, _ivStarBreaker, _ivWiseOwlSword, _ivWoodenBoxBody],
	_chp4: [_ivBarrelCannonIII, _ivBuggy, _ivCannonballArmIV, _ivCleanerPack, _ivClownHandIII, _ivCubicHammer, _ivDarkViper, _ivFlamingo, _ivHammerArm, _ivMissilePodArmII, _ivMultiFeet, _ivPropellerLeg, _ivQuestionShooter, _ivRefridgeratorBody, _ivStingerWrench, _ivSuperAlloyBody, _ivTurkey, _ivWildcat, _ivWingBoots, _ivWingShoes],
	_chp5: [_ivAlbatross, _ivBarrelCannonIV, _ivClownHandIV, _ivDigiHammer, _ivDrillArmII, _ivDrumCanBody, _ivEnergyPackUrn, _ivEscapePowder, _ivFalcon, _ivFinalBomb, _ivHammerArmII, _ivHeavyHammer, _ivLaserArm, _ivMachineGunArmIII, _ivMetalBoots, _ivMissilePodArmIII, _ivNovaCannon, _ivPantherBoots, _ivPoisonWrench, _ivRulersSword, _ivSamuraiArmII, _ivSoulBreaker, _ivStealGun, _ivSunandMoonArmour],
	_chp6: [_ivDrillArmIII, _ivHammerArmIII, _ivLaserArmII, _ivMachineGunArmIV, _ivMissilePodArmIV, _ivNovaCannonII],
	_chp7: [_ivDrillArmIV, _ivHammerArmIV, _ivJetHover, _ivLaserArmIII, _ivLaserArmIV, _ivLevelupPowder, _ivNovaCannonIII, _ivPrincessBoots, _ivResurrectionPowder, _ivRidepodFuel, _ivSamuraiArmIII, _ivSexyPanther, _ivTreasureKey, _ivTripleUrnPack, _ivTwinBuster],
	_chp8: [_ivNovaCannonIV, _ivSamuraiArmIV]
}

//#endregion }

//#region Memory Accessors {

//-General
gold = dword(0x1e6384c)

//-Game
playtime = dword(0x1e03210)
chapter = byte(0x1e03218)

//-Location
mapId = word(0x1e03228)
prevMapId = word(0x1e0322c)
floorId = byte(0x1e1ddc8)
prevFloorId = byte(0x1e1dde4)

//-Story
storyflag1 = byte(0x1e0191a)

//-Menus & HUD
buildUpWindowFlag = byte(0x1ecdc22) 
switchWindow = dword(0x1ecdc18)
buildUp2 = byte(0x1ece038)

//-Item Handling
itemPointer = dword(0x377850)

//--Synth
synthPointer = dword(0x1ece048)

//--BuildUp
buildUpPointer = dword(0x1ecdc44)
buildUpPointer2 = dword(0x1ece044)

function itemId(ptr) => word(ptr + 0x2)
function itemNameChangeFlag(ptr) => byte(ptr + 0x5)
function itemAtk(ptr) => word(ptr + 0x22)
function itemDur(ptr) => word(ptr + 0x24)
function itemFlame(ptr) => word(ptr + 0x26)
function itemChill(ptr) => word(ptr + 0x28)
function itemLight(ptr) => word(ptr + 0x2a)
function itemCyclone(ptr) => word(ptr + 0x2c)
function itemSmash(ptr) => word(ptr + 0x2e)
function itemExorcism(ptr) => word(ptr + 0x30)
function itemBeast(ptr) => word(ptr + 0x32)
function itemScale(ptr) => word(ptr + 0x34)
function itemSynthPoints(ptr) => word(ptr + 0x3c)

//-Floor Flags
function floorAddress(add, fl) => add + 14*(fl-1)
function floorUnlocked(fl) => bit0(floorAddress(_faMainFlags, fl))
function floorFinished(fl) => bit1(floorAddress(_faMainFlags, fl))
function floorMedal1(fl) => bit4(floorAddress(_faMainFlags, fl))
function floorMedal2(fl) => bit7(floorAddress(_faMainFlags, fl))
function floorMedal3(fl) => bit3(floorAddress(_faMainFlags, fl))
function floorKillAll(fl) => bit2(floorAddress(_faMainAllMonsters, fl))
function floorNumberKilled(fl) => word(floorAddress(_faMainMonstersKilled, fl))
function floorTimesVisited(fl) => word(floorAddress(_faMainTimesVisited, fl))

//-Photos
photoMovingNew = byte(0x377650)
photoNewToMove = byte(0x377654)
photoMenuPointer = dword(0x377668)
photoMenuOption = byte(photoMenuPointer + 0x14)
photoToBeDeleted = photoMenuPointer + 0x5c4
inventingFlag = byte(photoMenuPointer + 0x580)
inventionToDiscover = word(photoMenuPointer + 0x582)
function inPhotoAlbum() => photoMenuOption == 0xb || photoMenuOption == 9

//#endregion }

//#region Functions {
function inTitle() => dword(0x3d3898) == 0xffffffff//-mapId == 0xffff
function saveProtection() => prev(mapId) != 0xffff && playtime > prev(playtime)
function prologueEnd() => fromTo(storyflag1, 2, 3)
function finishChap(ch) {
	if (ch == _chpPrologue)
		return chapter == _chpPrologue && prologueEnd()
	if (ch == _chp1)
		return fromTo(chapter, _chp1a, _chp2)
	if (ch == _chp2)
		return fromTo(chapter, _chp2, _chp3)
	if (ch == _chp3)
		return fromTo(chapter, _chp3, _chp4)
	if (ch == _chp4)
		return fromTo(chapter, _chp4, _chp5)
	if (ch == _chp5)
		return fromTo(chapter, _chp5, _chp6)
	if (ch == _chp6)
		return fromTo(chapter, _chp6, _chp7)
	if (ch == _chp7)
		return fromTo(chapter, _chp7, _chp8) //-TODO: Verify
	if (ch == _chp8)
		return fromTo(chapter, _chp8, 11) //-TODO: Get
}


function maxStat(wp, ptr) {
	maxStat = _dictMaxStats[wp]
	
	return itemId(ptr) == wp
		&& itemNameChangeFlag(ptr) == 0
		&& prev(ptr) > 0
		&& prev(itemSynthPoints(ptr)) > itemSynthPoints(ptr)
		&& (
			(prev(itemDur(ptr)) < maxStat[1] && itemDur(ptr) >= maxStat[1]) ||
			(prev(itemAtk(ptr)) < maxStat[0] && itemAtk(ptr) >= maxStat[0]) ||
			(prev(itemFlame(ptr)) < maxStat[2] && itemFlame(ptr) >= maxStat[2]) ||
			(prev(itemChill(ptr)) < maxStat[3] && itemChill(ptr) >= maxStat[3]) ||
			(prev(itemLight(ptr)) < maxStat[4] && itemLight(ptr) >= maxStat[4]) ||
			(prev(itemCyclone(ptr)) < maxStat[5] && itemCyclone(ptr) >= maxStat[5]) ||
			(prev(itemSmash(ptr)) < maxStat[6] && itemSmash(ptr) >= maxStat[6]) ||
			(prev(itemExorcism(ptr)) < maxStat[7] && itemExorcism(ptr) >= maxStat[7]) ||
			(prev(itemBeast(ptr)) < maxStat[8] && itemBeast(ptr) >= maxStat[8]) ||
			(prev(itemScale(ptr)) < maxStat[9] && itemScale(ptr) >= maxStat[9])
			)
}

function foundIdea(id) {	
	result = word(_phIdeaBookAdd) == id //-Slot 0
	for index in range(1, 293){ //-Slot 1 to 293
		result = result || word(_phIdeaBookAdd + 2 * index) == id
	}
	return once(result)
}
function foundIdea2(id) {	
	result = word(_phIdeaAlbumAdd) == id //-Look in Slot 0
	maxAddress = _dictIdeaOrder[id] //-Idea Max number after ordered
	
	if (maxAddress > 0)
		for index in range(1, maxAddress){ //-Slot 1 to X
			result = result || word(_phIdeaAlbumAdd + 2 * index) == id
		}
	return once(result)
}

function hadPhotos(photos){
	result = always_false()
	for phto in photos 
	{ 
		result = result || hasPhoto(phto)
	}
	return result || (never(inTitle()) && always_false())					//-Check every item in camera
}

function hasPhoto(id){
	result = unless(byte(photoToBeDeleted) == 0) && once(isTrue(photoMovingNew) && word(_phIdeaOfPhoto) == id) //-&& byte(_phToBeDeleted) == 1)//-Photo 1
	
	for index in range(1, 29){ //-Photo 2 to 29
		result = result || (unless(byte(photoToBeDeleted + index) == 0) && once(isTrue(photoMovingNew) && word(_phIdeaOfPhoto + 24 * index) == id)) 
						//-&& byte(_phToBeDeleted + index) == 1)
	}
	return result
}

function foundInvention(id) {	
	result = word(_invFirstInvention) == id //-Slot 0
	for index in range(1, 127){ //-Slot 1 to 127
		result = result || word(_invFirstInvention + 4 * index) == id
	}
	return once(result)
}

function isNewInvention(invents){
	result = always_false()
	for inv in invents{
		result = result || inventionToDiscover == inv
	}
	return result || (never(inTitle()) && always_false())
}


//#endregion

//#region Achievement logic
function chapterAchievement(id, ch, title, points){
	if (ch == _chpPrologue)
		description = "Escape the circus tent."
	else
		description = format("Complete Chapter {0} - {1}", 
				_dictChapterNum[ch], _dictChapter[ch])
	
	//-TODO: Map, SaveProtect
	
	trigger = finishChap(ch)
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function weaponBuildAchievement(id, wpFrom, wpTo, title, points){
	
	itId = itemId(buildUpPointer2)
	itNCh = itemNameChangeFlag(buildUpPointer2)
	
	trigger =  buildUp2 == 2
			&& buildUpPointer2 != 0
			&& itNCh == 0
			&& itId == wpTo
			//-Old Logic
			//-never(prev(switchWindow) != switchWindow)
			//-&& once(buildUpWindowFlag == 1)
			
			
	if (wpFrom == 0){
		description = format("Build up to the {0}", 
				_dictItems[wpTo])
				
		trigger = trigger && prev(itId) != wpTo
	}
	else{
		description = format("Build up to the {0} from a {1}", 
				_dictItems[wpTo], _dictItems[wpFrom])
				
		trigger = trigger && prev(itId) == wpFrom
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function weaponSynthMaxAchievement(id, wp, title, points){
	
	description = format("Synth a legit {0}	with max stats", _dictItems[wp])
	trigger =  synthPointer != 0
			&& maxStat(wp, synthPointer)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function floorMedalAchievement(id, fl, title, points){
	
	description = format("Get every medal at {0} floor in {1}", _dictFloor[fl], _dictDunFloor[fl])
	trigger =  floorId == fl
			&& isTrue(floorUnlocked(fl))
			&& isTrue(floorFinished(fl))
			&& measured(floorMedal1(fl) + floorMedal2(fl) + floorMedal3(fl) == 3)
			&& (isFalse(prev(floorMedal1(fl))) ||
				isFalse(prev(floorMedal2(fl))) ||
				isFalse(prev(floorMedal3(fl))))
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function ideaAchievement(id, chp, title, desc, points){
	
	description = format("Get every photo Idea obtainable {0} (open Idea Book)", desc)

	trigger =  unless(!inPhotoAlbum()) && 
				measured(tally_of(_dictChapterIdeas[chp], length(_dictChapterIdeas[chp]), foundIdea2)) &&
				hadPhotos(_dictChapterIdeas[chp])
				//-(always_false() ||
				//-	trigger_when(0 == 1))
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function inventionAchievement(id, chp, title, points){
	
	description = format("Invent everything available since chapter {0}", _dictChapterNum[chp])

	trigger =  measured(tally_of(_dictChapterInventions[chp], length(_dictChapterInventions[chp]), foundInvention)) &&
				turnOff(inventingFlag) && 
				isNewInvention(_dictChapterInventions[chp])
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}


//#endregion

//#region Leaderboard Logic
function exampleLeaderboard(id){
	
	title = "Example"
	description = format("Example {0}", _dictExample[exAddress])
	
    start = always_false()
	
    cancel = always_false()
	
    submit = always_true()
			
    value = exAddress
	
    leaderboard(title, description, start, cancel, submit, value, "SECS", lower_is_better=false, id = id)    
}

//#endregion }

//#region Achievements {
//------Total: 386 Achievements, ???? Points------
//-********* function StoryAchievements()*********** (9)
//- Freak Show - Escape the circus tent. (3) //-Use story flag
chapterAchievement(0, _chpPrologue, "Freak Show", 3)
//- To the Outside World - Complete Chapter One (10) //-From here, use Chapter values
chapterAchievement(0, _chp1, "To the Outside World", 10)
//- Resurrection of the Great Elder - Complete Chapter Two (10)
chapterAchievement(0, _chp2, "Resurrection of the Great Elder", 10)
//- The Sage of the Stars - Complete Chapter Three. (10)
chapterAchievement(0, _chp3, "The Sage of the Stars", 10)
//- Good-Bye Shingala - Complete Chapter Four. (10)
chapterAchievement(0, _chp4, "Good-Bye Shingala", 10)
//- Conflict of the Past and Future - Complete Chapter Five. (10)
chapterAchievement(0, _chp5, "Conflict of the Past and Future", 10)
//- When Two Eras Collide - Complete Chapter Six (10)
chapterAchievement(0, _chp6, "When Two Eras Collide", 10)
//-  - Complete Chapter Seven/Finish the game (25)
chapterAchievement(0, _chp7, "Palace of Flowers", 25)
//- The Forgotten Adventure - Complete Chapter Eight (25)
chapterAchievement(0, _chp8, "The Forgotten Adventure", 25)

//-********* function WeaponAchievements()*********** (42)
//-Beware of the Change Name glitch, make sure everything is built
//-The idea is for the player to get every weapon at some point

//-------------Max Right---------------
//-Build up to the Stinger Wrench (5)
weaponBuildAchievement(0, 0, _imaxrStingerWrench, "Sting n' Steal", 5)
//-Build up to the Cubic Hammer (5)
weaponBuildAchievement(0, 0, _imaxrCubicHammer, "Damage Cubed", 5)
//-Build up to the Frozen Tuna (3)
weaponBuildAchievement(0, 0, _imaxrFrozenTuna, "Eat Fish!", 5)
//-Build up to the Big Bucks Hammer from a Kubera's Hand (5)
weaponBuildAchievement(0, _imaxrKuberaHand, _imaxrBigBucksHammer, "Path of the Politician", 5)
//-Build up to the Grade Zero (10)
weaponBuildAchievement(0, 0, _imaxrGradeZero, "Back to Zero", 10)
//-Build up to the Legend (10)
weaponBuildAchievement(0, 0, _imaxrLegend, "I am Legend", 10)
//-Synth a legit Legend with max stats (25)
weaponSynthMaxAchievement(0, _imaxrLegend, "Legenday Mechanic", 25)

//-------------Max Left---------------
//-Build up to the Dark Viper (5)
weaponBuildAchievement(0, 0, _imaxlDarkViper, "Black Mamba", 5)
//-Build up to the Soul Breaker from a Magic Gun (5)
weaponBuildAchievement(0, 0, _imaxlSoulBreaker, "A Soul for a soul", 5)
//-Build up to the Sexy Panther (5)
weaponBuildAchievement(0, 0, _imaxlSexyPanther, "My Little Pussycat", 5)
//-Build up to the Question Shooter from a Jurak Gun (5)
weaponBuildAchievement(0, _imaxlJurakGun, _imaxlQuestionShooter, "What is a Gun?", 5)
//-Build up to the Supernova (10)
weaponBuildAchievement(0, 0, _imaxlSupernova, "A Star Was", 10)
//-Build up to the Last Resort (10)
weaponBuildAchievement(0, 0, _imaxlLastResort, "Prepare to be Vanished", 10)
//-Build up to the Sigma Bazooka (10)
weaponBuildAchievement(0, 0, _imaxlSigmaBazooka, "I got you, Sigma!", 10)
//-Synth a legit Supernova with max stats (25)
weaponSynthMaxAchievement(0, _imaxlSupernova, "Star Destroyer", 25)

//-------------Monica Right---------------
//-Build up to the Shamshir (3)
weaponBuildAchievement(0, 0, _imonrShamshir, "Sashimi Maker", 3)
//-Build up to the Halloween Blade (5)
weaponBuildAchievement(0, 0, _imonrHalloweenBlade, "This is HalloBlade", 5)
//-Build up to the Big Bang (5)
weaponBuildAchievement(0, 0, _imonrBigBang, "In a Hot, Dense State", 5)
//-Build up to the Claymore (5)
weaponBuildAchievement(0, 0, _imonrClaymore, "Yoma Hunter", 5)
//-Build up to the Ruler's Sword (5)
weaponBuildAchievement(0, 0, _imonrRulersSword, "Aga's Treasure", 5)
//-Build up to the Tsukikage (5)
weaponBuildAchievement(0, 0, _imonrTsukikage, "Moonlight Power", 5)
//-Build up to the Lamb's Sword (5)
weaponBuildAchievement(0, 0, _imonrLambsSword, "Hungry Like the Wolf", 5)
//-Build up to the Maneater (5)
weaponBuildAchievement(0, 0, _imonrManeater, "She's a Maneater", 5)
//-Build up to the Sword of Zeus (10)
weaponBuildAchievement(0, 0, _imonrSwordOfZeus, "Lighting at Mt. Olympus", 10)
//-Build up to the 7th Heaven (10)
weaponBuildAchievement(0, 0, _imonr7thHeaven, "Road to Paradise", 10)
//-Build up to the Griffon Fork from a Dark Excalibur (10)
weaponBuildAchievement(0, _imonrDarkExcalibur, _imonrGriffonFork, "Path of Darkness", 10)
//-Build up to the Chronicle 2 (10)
weaponBuildAchievement(0, 0, _imonrChronicle2, _dictItems[_imonrChronicle2], 10)
//-Build up to the 7 Branch Sword (10)
weaponBuildAchievement(0, 0, _imonr7BranchSword, _dictItems[_imonr7BranchSword], 10)
//-Build up to the Atlamillia Sword (10)
weaponBuildAchievement(0, 0, _imonrAtlamilliaSword, _dictItems[_imonrAtlamilliaSword], 10)
//-Build up to the Muramasa (10)
weaponBuildAchievement(0, 0, _imonrMuramasa, _dictItems[_imonrMuramasa], 10)
//-Build up to the Dark Cloud (10)
weaponBuildAchievement(0, 0, _imonrDarkCloud, _dictItems[_imonrDarkCloud], 10)
//-Build up to the Mardanan Garayan (10)
weaponBuildAchievement(0, 0, _imonrMardanGarayan, _dictItems[_imonrMardanGarayan], 10)
//-Build up to the Island King (10)
weaponBuildAchievement(0, 0, _imonrIslandKing, _dictItems[_imonrIslandKing], 10)
//-Synth a legit Island King with max stats (25)
weaponSynthMaxAchievement(0, _imonrIslandKing, "Ruler of the Continent", 25)


//-------------Monica Left---------------
//-Build up to the Pocklekul from the Thorn Armlet (5)
weaponBuildAchievement(0, _imonlThornArmlet, _imonlPocklekul, _dictItems[_imonlPocklekul], 5)
//-Build up to the Mobious Bangle (5)
weaponBuildAchievement(0, 0, _imonlMobiusBangle, _dictItems[_imonlMobiusBangle], 5)
//-Build up to the Angel Shooter (5)
weaponBuildAchievement(0, 0, _imonlAngelShooter, _dictItems[_imonlAngelShooter], 5)
//-Build up to the Satan Brassard (5)
weaponBuildAchievement(0, 0, _imonlSatanBrassard, _dictItems[_imonlSatanBrassard], 5)
//-Build up to the Star Armlet (5)
weaponBuildAchievement(0, 0, _imonlStarArmlet, _dictItems[_imonlStarArmlet], 5)
//-Build up to the Five-Star Armlet (10)
weaponBuildAchievement(0, 0, _imonlFiveStarArmlet, _dictItems[_imonlFiveStarArmlet], 10)
//-Build up to the Love (10)
weaponBuildAchievement(0, 0, _imonlLove, _dictItems[_imonlLove], 10)
//-Synth a legit Five-Star Armlet with max stats (25)
weaponSynthMaxAchievement(0, _imonlFiveStarArmlet, "Highest Rated Witch", 25)

//-********* function PhotoAchievements() *********** (45)
//-Get every photo Idea obtainable in Chapter 1
//-		ideaAchievement(0, _chp1, "Palm Brinks Photos", 10)
	ideaAchievement(0, _iaCedricShop, "Cedric's Maintenance Shop", "around Cedric's Maintenance Shop", 3)
	ideaAchievement(0, _iaPollyBakery, "Polly's Bakery Shop", "around Polly's Bakery Shop", 3)
	ideaAchievement(0, _iaMortonSundries, "Morton's Sundries", "around Morton's Sundries", 3)
	ideaAchievement(0, _iaWeaponShop, "Weapon Shop", "around the Weapon Shop", 3)
	ideaAchievement(0, _iaPoliceHQ, "Police Station", "around the Police Station", 3)
	ideaAchievement(0, _iaBar, "Too young to be here", "around Palm Brinks Bar", 3)
	ideaAchievement(0, _iaStation, "At the Train Station", "around the Train Station", 3)
	ideaAchievement(0, _iaPalmBrinks, "Well known around the neighborhood", "around Palm Brinks", 3)
	ideaAchievement(0, _iaSunMoon, "Better get a telescope next time", "from the Sun and Moon", 3)
	ideaAchievement(0, _iaTrain, "Inside the Train", "inside the train", 1)
	ideaAchievement(0, _iaCityHall, "Where is the Mayor?", "around City Hall", 2)
	ideaAchievement(0, _iaChurch, "Better be quiet...", "inside the Church", 1)
	ideaAchievement(0, _iaParn, "Parn's Studio", "around Parn's Studio", 3)
	ideaAchievement(0, _iaMortonHouse, "Morton's House", "inside Morton's House", 1)
	ideaAchievement(0, _iaMansion, "Max's Home", "at Max's home", 3)
	ideaAchievement(0, _iaDrDell, "Visit at the Dentist", "inside Dr. Dell's clinic", 2)
	
//-Get every photo Scoop obtainable in Chapter 1 
//-Invent everything that can be invented from Chapter 1 "From Palm Brinks to the world"
inventionAchievement(0, _chp1a, "Invent CH1", 5)

//-Get every photo Idea obtainable in Chapter 2
		ideaAchievement(0, _iaSindain, "Sindain", "at Sindain", 4)
		ideaAchievement(0, _iaJurakMall, "Shopping Days", "around Jurak's Mall", 2)

//-Get every photo Scoop obtainable in Chapter 2 
//-Invent everything that can be invented from Chapter 2 
inventionAchievement(0, _chp2, "Invent CH2", 10)

//-Get every photo Idea obtainable in Chapter 3
		ideaAchievement(0, _iaBalanceValley, "Balance Valley", "at Balance Valley", 4)
		ideaAchievement(0, _iaStarlighCanyon, "Starlight Canyon", "at the Starlight Canyon", 1) //-1 photo
		ideaAchievement(0, _iaStarlightTemple, "Starlight Temple", "at the Starlight Temple", 4)

//-Get every photo Scoop obtainable in Chapter 3 
//-Invent everything that can be invented from Chapter 3 
inventionAchievement(0, _chp3, "Invent CH3", 5)
inventionAchievement(0, _chp3a, "Invent CH3a", 5)

//-Get every photo Idea obtainable in Chapter 4
		ideaAchievement(0, _iaVeniccio, "Veniccio", "at Veniccio", 4)
		ideaAchievement(0, _iaLunaLabs, "Luna Labs", "at Luna Labs", 3)
//-Get every photo Scoop obtainable in Chapter 4 
//-Invent everything that can be invented from Chapter 4 
inventionAchievement(0, _chp4, "Invent CH4", 10)

//-Get every photo Idea obtainable in Chapter 5
		ideaAchievement(0, _iaHeimRada, "Heim Rada [m]", "at Heim Rada", 3)
		ideaAchievement(0, _iaGundoradaWorkshop, "Gundorada Workshop", "at Gundorada Workshop", 3)
//-Get every photo Scoop obtainable in Chapter 5 
//-Invent everything that can be invented from Chapter 5 
inventionAchievement(0, _chp5, "Invent CH5", 10)

//-Get every photo Idea obtainable in Chapter 6
		ideaAchievement(0, _iaMoonFlowerEntrance, "Moon Flower Palace (Entrance) [m]", "at the entrance of the Moon Flower Palace", 2)
		ideaAchievement(0, _iaKazarov, "Kazarov Stonehenge", "at Kazarov Stonehenge", 2)
//-Get every photo Scoop obtainable in Chapter 6 
//-Invent everything that can be invented from Chapter 6 
inventionAchievement(0, _chp6, "Invent CH6", 5)

//-Get every photo Idea obtainable in Chapter 7
		ideaAchievement(0, _iaMoonFlowerPalace, "Moon Flower Palace", "at the Moon Flower Palace", 5)
		ideaAchievement(0, _iaMoonFlowerPalaceExtra, "Moon Flower Palace Extra", "at the Moon Flower Palace 2", 3)

//-Get every photo Scoop obtainable in Chapter 7 
//-Invent everything that can be invented from Chapter 7 
inventionAchievement(0, _chp7, "Invent CH7", 5)

//-Get every photo Idea obtainable in Chapter 8
		ideaAchievement(0, _chp8, "Zelmite Mine", "at Zelmite Mine", 2)

//-Get every photo Scoop obtainable in Chapter 8 
//-Invent everything that can be invented from Chapter 8
inventionAchievement(0, _chp8, "Invent CH8", 2)

//-Get the Diamond from Donny
//-Get the Bandit Coin from Donny
//-Get the Explorer's Helmet from Donny
//-Get the Explorer's Shoes from Donny
//-Get the Explorer's Outfit from Donny
//-Get the Moon Badge from Donny
//-Get the Sun Badge from Donny

//-Get the Brave Little Linda scoop		(1)
//-Get the Cinders photo                (1)
//-Get the Clown Robo's Attack scoop    (1)
//-Get the Dead Tree photo              (1)
//-Get the Doctor Janing scoop          (1)
//-Get the Fire Squall scoop            (1)
//-Get the Flying Battleship scoop      (1)
//-Get the Griphon's Real Face scoop    (1)
//-Get the King Mardan scoop            (1)
//-Get the Legend of the Moon scoop     (1)
//-Get the Phantom Memo Eater scoop     (1)
//-Get the Puppet Shingala scoop        (1)
//-Get the R. Buttlerfly Restored scoop (1)
//-Get the The Ultimate Gaspard scoop   (1)

//-************ function Fishing()************** (31)
//-Catch a Baku Baku
//-Catch a Baron Garayan
//-Catch a Bobo
//-Catch a Bon
//-Catch a Den
//-Catch a Gobbler
//-Catch a Gummy
//-Catch a Hama Hama
//-Catch a Heela
//-Catch a Kaiji
//-Catch a Mardan Garayan
//-Catch a Negie
//-Catch a Niler
//-Catch a Nonky
//-Catch a Picolly
//-Catch a Priscleen
//-Catch a Tarton
//-Catch a Umadakara 

//-Win a battle in the Battle Tank (Discarded because u need this to raise strength)

//-Have a fish with X Boost - How fast it is.
//-Have a fish with X Endurance - How long the fish can push itself.
//-Have a fish with X Strength - How hard the fish will bump another fish.
//-Have a fish with X Tenacity - How Quickly the fish will bump other fish.
//-Have a fish with X Stamina - How long the fish can take a bump.
//-Have a fish with X Mood - It determines the fish's personality.
//- Have a fish that is equal or bigger than X Length - How long it is.
//- Have a fish that is equal or heavier than X Weight - How Big it is

//-Win the Fishing contest on 1st place

//-Win the Fish Frenzie, Beginner on 1st place (3)
//-Win the Fish Frenzie, Junior on 1st place (5)
//-Win the Fish Frenzie, Senior on 1st place (10)
//-Win the Fish Frenzie, Master on 1st place (25)

//-Get X Flight - How far you can cast the line, in meters. (useless)
//-Get X Strength - How big a fish you can handle.
//-Get X Resillience - How strong the line is.
//-Get X Grip - How much the controller vibrates when getting a bite. (useless)
//-Get X Luck - Odds of fish type and size, as well as bite rate.

//-******** function RecruitCharacters()*********** (21)
//-Recruit Adel				 (5)
//-Recruit Claire            (5)
//-Recruit Corinne           (5)
//-Recruit Doctor Dell       (5)
//-Recruit Donny             (5)
//-Recruit Fabio             (5)
//-Recruit Ferdinand         (5)
//-Recruit Gordon            (5)
//-Recruit Mayor Need        (5)
//-Recruit Max's Dad         (5)
//-Recruit Milane            (5)
//-Recruit Mina              (5)
//-Recruit Olivie            (5)
//-Recruit Parn              (5)
//-Recruit Pau               (5)
//-Recruit Polly             (5)
//-Recruit Priest Bruno      (5)
//-Recruit Rosa              (5)
//-Recruit Rufio             (5)
//-Recruit Sheriff Blinkhorn (5)
//-Recruit Stewart           (5)

//--********functions AllMonstersKilled*********** (7)
//-Defeat all monsters on every floor of Underground Channel (10)
//-Defeat all monsters on every floor of Rainbow Butterfly Forest (10)
//-Defeat all monsters on every floor of Starlight Canyon (10)
//-Defeat all monsters on every floor of Ocean's Roar Cave (10)
//-Defeat all monsters on every floor of Mount Gundore (25)
//-Defeat all monsters on every floor of Moon Flower Palace (25)
//-Defeat all monsters on every floor of Zelmite Mine (25)

//-********* function Medals()********************* (127)
//-------Chapter 1-----------
//-To the Outside World
floorMedalAchievement(0, _fOutsideWorld, _dictFloor[_fOutsideWorld], 3)
//-Battle with Rats
floorMedalAchievement(0, _fBattleRats, _dictFloor[_fBattleRats], 3)
//-Ghost in the Channel
floorMedalAchievement(0, _fGhostChannel, _dictFloor[_fGhostChannel], 3)
//-Steve's Battle
//-Sweet, Scary Treasure Chest

//-------Chapter 2-----------
//-Frightening Forest
//-Strange Tree
//-Rolling Shells
//-This is a Geostone?
//-Noise in the Forest
//-I'm a Pixie
//-Legendary Killer Snake
//-Grotesque Spider Lady
//-Rainbow Falls Entrance

//-------Chapter 3-----------
//-Headlong Dash
//-Fire and Ice Don't Mix
//-Earth-Shaking Demon
//-Powerful Yo-Yo Robot
//-Elephant Army in Valley
//-Dangerous Treasure Chest
//-Little Dragon Counterattack
//-Warrior in Stalight Canyon
//-Smiling Fairy Village
//-Cursed Mask
//-We're the Roly Poly Brothers
//-Dragon Slayer
//-Rama Priests Like Cheese
//-Nature's Threat
//-Moon Baron
//-Lighthouse Appears

//-------Chapter 4-----------
//-Pirates!
//-Tons of Fish
//-Tank and Boss
//-Water Monster
//-Scary Auntie Medusa
//-Sand Molers
//-Bat Den
//-Pirate's Hideout
//-Wandering Zappy
//-Banquet of the Dead
//-Improvements
//-Return of the Serpent
//-Cursed Sea
//-Sea of Atrocity

//-------Chapter 5-----------
//-Battle with Griffon's Army
//-Mt. Gundor Wind
//-Little Dragons on the Mountain
//-Steam Goyone
//-Mountain Baddie Appears
//-Magmanoff
//-Danger Zone
//-Secret of Fire Mountain
//-Deathtrap
//-Desperation on the Mountain
//-Pains in the Neck
//-Walking the Path of Flames
//-Burning Undead
//-Fire Dragon
//-Treasure Chest Danger Zone
//-Road to the River of Flames

//-------Chapter 6-----------
//-Looking for the Earth Gem
//-Something Rare Here!
//-Scary Tree
//-Looking for the Wind Gem
//-Evil Spirit in the Valley
//-Brave Warriors in the Valley
//-Looking for the Water Gem
//-Pirates' Revenge
//-Death Ocean
//-Looking for the Fire Gem
//-Explosive Hot Spring
//-Crazy Mountain

//-------Chapter 7-----------
//-Ancient Wind
//-Card Warriors Gather
//-Dangerous Treasure
//-Zombie Zone
//-Feeling Out of Place
//-Living Statue
//-Danger Zone
//-Scary Women
//-Hell Elephant
//-Crush the Undead
//-Missing Gem Dealer
//-Max's Longest Day
//-Hell's Corridor
//-Monica All Alone
//-Raging Spirits
//-Lonely Machine
//-Nobility
//-Palace Watchdog
//-Road to Memories
//-Final Trump Card
//-Elemental Party
//-Warndering Knight's Soul
//-Beware Carelessness
//-Final Battle

//-------Chapter 8-----------
//-Get the Zelmite!
//-Moon Mole
//-Powerful Frog
//-Evil Bat Invasion
//-Crossroads of Destiny
//-Scary Face
//-Powerful Wild Boar
//-Murderous Tank
//-Which One?
//-The Old Woman Saw It
//-A Giant Snake!
//-Undaunted Soldiers
//-Hell, Ward 1
//-Road to Truth
//-Crossroads
//-Lost Road
//-Indecision
//-Little Dragon Army
//-Captain Returns
//-Hell's Turning Point
//-Mummy Heaven
//-Ward 3 Entrance
//-Flotsam's Broken Army
//-Hell, Ward 3-Wellside Gossip
//-Devil Elemental
//-Mariner
//-Ultimate Snake
//-Omen
//-Anxiety
//-Firm Belief
//-Seeping Light

//-*********** functions Monsterpedia()********* (8)
//-Get all the Monster entries from Chapter 1
//-Get all the Monster entries from Chapter 2
//-Get all the Monster entries from Chapter 3
//-Get all the Monster entries from Chapter 4
//-Get all the Monster entries from Chapter 5
//-Get all the Monster entries from Chapter 6
//-Get all the Monster entries from Chapter 7
//-Get all the Monster entries from Chapter 8

//-******** function MonsterTransform()******** (57)
//-Get the Beast Badge / Sewer rat
	//-Beach rat
		//-Castle Eater
			//-Death Mouse
	//-Ram
		//-Rifle Wolf
			//-Smiling Wolf
		//-Savage Ram
			//-Bandou
			
//-Get the Windup Badge / Bomberhead
	//-Triple Cracker
		//-Danger Bomb
			//-Sweet Dynamite
			
//-Get the Aquatic Badge / Froggy
	//-Geron
		//-Gamal
			//-Putos
		//-Moon Goyone
			//-Mariner
			
//-Get the Flora Badge / Himara
	//-Balalla
		//-Stormflower
			//-Mandora
		//-Mallone
			//-Scarecrow
			
//-Get the Magical Badge / Baron Balloon
	//-Flotsam Ballon
		//-Count Ballon
			//-Duke Ballon
		//-Guardia
			//-Dark Keeper
			
//-Get the Darkling Badge / Spider Lady
	//-Shiva
		//-Spider Woman
			//-Bambamchoo
		//-Miss Gourgon
			//-Mrs. Gourgon
			
//-Get the Reptile Badge / Wind Gemron
	//-Ice Gemron
		//-Thunder Gemron
			//-Fire Gemron
			//-Holy Gemron
			
//-Get the Spirit Badge / Pixie
	//-Sylph
		//-Faerie
		//-Imp
		
//-Get the Undead Badge / Skeletal Knight
	//-Hornhead
		//-Master Jacket
			//-Rare Jacket
		//-Whitebeard
			//-Oyakata
			
//-Get the Card Badge / Club
	//-Diamond
		//-Heart
			//-Spade
			//-Joker

//--************ function Spheda()************** (9)
//-Clear the distortion in Barga's Valley and get the Swan Club (5)
//-Build up to the Albatross (10)

//-Get every Spheda main prize from Underground Channel (10)
//-Get every Spheda main prize from Rainbow Butterfly Forest (10)
//-Get every Spheda main prize from Starlight Canyon (10)
//-Get every Spheda main prize from Ocean's Roar Cave (10)
//-Get every Spheda main prize from Mount Gundore (25)
//-Get every Spheda main prize from Moon Flower Palace (10)
//-Get every Spheda main prize from Zelmite Mine (25)

//--************ function Georama()************** (11)
//-Build a Straw House		(2)
//-Build a Wooden House     (2)
//-Build a Brick House      (2)
//-Build an Iron House      (2)
//-Build a Church           (2)

//-Get every assignable person into a house (10)

//-Get 100% Georama on the Sindain region			(25)
//-Get 100% Georama on the Balance Valley region    (25)
//-Get 100% Georama on the Venniccio region         (25)
//-Get 100% Georama on the Heim Rada region         (25)
//-Get 100% Georama on the Moon Flower Palace       (25)

//--************ function Ridepod() ************** (16)

//-Get every/max Cannonball Arm (5)
//-Get every/max Clown Hand (5)
//-Get every/max Samurai Arm (5)
//-Get every/max Hammer Arm (5)
//-Get every/max Drill Arm (5)
//-Get every/max Barrel Cannon (5)
//-Get every/max Machine Gun Arm (5)
//-Get every/max Missile Pod Arm (5)
//-Get every/max Nova Cannon (5)
//-Get every/max Laser Arm (5)
//-Get every/max core (10)
//-Get every/max Shield Kit (10)
//-Get every Body part (10)
//-Get every Lower part (10)
//-Get every Energy Pack (10)
//-Get the Voice Unit (1)

//--************ function Powerups() ************** (10)

//-Get every powerup from Chapter 1
//-Get every powerup and treasure from Chapter 2
//-Get every powerup and treasure from Chapter 3
//-Get every powerup and treasure from Chapter 4
//-Get every powerup from Chapter 5
//-Get every powerup and treasure from Chapter 6
//-Get every powerup from Chapter 7

//-Get every Fruit of Eden
//-Get every Potato Pie
//-Get every Witch Parfait

//--************ function BossesDamageless()**************
//-TBD
//#endregion }

//#region Leaderboards {


//#endregion }

//#region Rich Presence {
//-rich_presence_conditional_display(always_false(), 
//-			"Example {0} {1}",
//-			rich_presence_value("val", exAddress),
//-			rich_presence_lookup("example", exAddress, _dictExample, "default"))

rich_presence_display("Playing Dark Cloud 2")
//#endregion }
