// Klonoa: Door to Phantomile
// #ID = 11261

achievement(
    title = "We Gotta Save the Princess...Diva", description = "Defeat Rongo Lango and finish World 1", points = 5,
    id = 121284, badge = "135158", published = "10/08/2020 4:50:29 a. m.", modified = "26/08/2020 1:16:49 a. m.",
    trigger = prev(byte(0x0CAC52)) == 1 && byte(0x0CAC52) == 2
)

achievement(
    title = "Thank You for Saving Mommy", description = "Defeat Seadoph & Pamela and finish World 2", points = 5,
    id = 121882, badge = "135143", published = "15/08/2020 4:13:37 a. m.", modified = "26/08/2020 1:14:10 a. m.",
    trigger = prev(byte(0x0CAC52)) == 3 && byte(0x0CAC52) == 4
)

achievement(
    title = "No Time to Lose", description = "Defeat Gelg Bolm and finish World 3", points = 5,
    id = 122001, badge = "135145", published = "16/08/2020 3:28:50 p. m.", modified = "26/08/2020 1:13:47 a. m.",
    trigger = prev(byte(0x0CAC52)) == 5 && byte(0x0CAC52) == 6
)

achievement(
    title = "I'm Sorry, Grandpa...", description = "Defeat Baladium and finish World 4", points = 5,
    id = 122043, badge = "135151", published = "17/08/2020 3:51:43 a. m.", modified = "26/08/2020 1:13:32 a. m.",
    trigger = prev(byte(0x0CAC52)) == 7 && byte(0x0CAC52) == 8
)

achievement(
    title = "From the Sun to the Moon", description = "Defeat Joka and finish World 5", points = 10,
    id = 122052, badge = "135153", published = "18/08/2020 2:44:43 a. m.", modified = "26/08/2020 1:14:15 a. m.",
    trigger = prev(byte(0x0CAC52)) == 9 && byte(0x0CAC52) == 10
)

achievement(
    title = "Between Dreams and Nightmares", description = "Defeat Ghadius and finish World 6", points = 10,
    id = 122110, badge = "135131", published = "18/08/2020 12:49:08 p. m.", modified = "26/08/2020 1:15:27 a. m.",
    trigger = prev(byte(0x0CAC52)) == 11 && byte(0x0CAC52) == 12
)

achievement(
    title = "Thank You for Everything, Klonoa...", description = "Finish the game and save Phantomile", points = 25,
    id = 122495, badge = "135155", published = "22/08/2020 2:24:38 a. m.", modified = "26/08/2020 1:16:20 a. m.",
    trigger = prev(dword(0x187EC8)) == 134284287 && dword(0x187EC8) == 197625 && prior(byte(0x0CAC52)) == 12 && 
              byte(0x0CAC52) == 255 && byte(0x0CAC48) == 1 && byte(0x0BEC24) == 240
)

achievement(
    title = "A Song for the Broken-Hearted", description = "Reach the end of Extra Vision and get the Music Player", points = 10,
    id = 122570, badge = "135150", published = "23/08/2020 6:48:21 a. m.", modified = "29/08/2020 9:39:34 p. m.",
    trigger = never(byte(0x0CAC52) == 255) && prev(byte(0x0CAC52)) == 13 && byte(0x0CAC52) == 0 && 
              once(byte(0x0BE330) == 1) && prior(bit2(0x0CAC56)) == 0 && bit2(0x0CAC56) == 1
)

achievement(
    title = "Like Leaves in the Wind", description = "Blow the leaves in the title", points = 1,
    id = 121741, badge = "135140", published = "14/08/2020 4:21:59 a. m.", modified = "26/08/2020 1:14:31 a. m.",
    trigger = (prev(byte(0x0BEC41)) == 1 || prev(byte(0x0BEC41)) == 0) && byte(0x0BEC41) == 3 && byte(0x0CAC52) == 255 && 
              dword(0x0BDEF8) == 2249765
)

achievement(
    title = "Sounds of Struggle", description = "Ring the bell during the fight with Rongo Lango", points = 1,
    id = 121742, badge = "135124", published = "14/08/2020 4:22:09 a. m.", modified = "27/08/2020 3:48:03 a. m.",
    trigger = byte(0x0CAC52) == 1 && byte(0x0C5164) == 127 && byte(0x0BE1FE) == 31
)

achievement(
    title = "Sorry, Granny!", description = "Hit Granny during the fight with Gelg Bolm", points = 2,
    id = 122002, badge = "135152", published = "16/08/2020 4:09:00 p. m.", modified = "28/08/2020 11:47:18 p. m.",
    trigger = byte(0x0CAC52) == 5 && byte(0x0C64A4) == 255 && byte(0x12A7A1) == 3 && byte(0x0BE1FE) == 31
)

achievement(
    title = "The Coins of Life", description = "Collect 99 lives", points = 10,
    id = 121220, badge = "135128", published = "9/08/2020 7:00:21 p. m.", modified = "28/08/2020 11:52:24 p. m.",
    trigger = prev(byte(0x10E5CA)) == 98 && byte(0x10E5CA) == 99 && byte(0x0CAC52) <= 13
)

achievement(
    title = "No Phantomillian Left Behind", description = "Rescue all 6 Phantomilian prisoners in any level", points = 5,
    id = 121441, badge = "135141", published = "11/08/2020 12:33:23 a. m.", modified = "26/08/2020 1:14:48 a. m.",
    trigger = prev(byte(0x10E5CE)) == 1 && byte(0x10E5CE) == 0 &&
              ((byte(0x0CAC52) == 0 && byte(0x0CAC68) == 6) ||
               (byte(0x0CAC52) == 1 && byte(0x0CAC69) == 6) ||
               (byte(0x0CAC52) == 2 && byte(0x0CAC6A) == 6) ||
               (byte(0x0CAC52) == 3 && byte(0x0CAC6B) == 6) ||
               (byte(0x0CAC52) == 4 && byte(0x0CAC6C) == 6) ||
               (byte(0x0CAC52) == 5 && byte(0x0CAC6D) == 6) ||
               (byte(0x0CAC52) == 6 && byte(0x0CAC6E) == 6) ||
               (byte(0x0CAC52) == 7 && byte(0x0CAC6F) == 6) ||
               (byte(0x0CAC52) == 8 && byte(0x0CAC70) == 6) ||
               (byte(0x0CAC52) == 9 && byte(0x0CAC71) == 6) ||
               (byte(0x0CAC52) == 10 && byte(0x0CAC72) == 6) ||
               (byte(0x0CAC52) == 11 && byte(0x0CAC73) == 6))
)

achievement(
    title = "We shall be free!", description = "Rescue all 72 Phantomillian prisoners", points = 25,
    id = 121285, badge = "135149", published = "10/08/2020 4:51:24 a. m.", modified = "29/08/2020 10:57:41 p. m.",
    trigger = measured((byte(0x0CAC68) + byte(0x0CAC69) + byte(0x0CAC6A) + byte(0x0CAC6B) + byte(0x0CAC6C) +
               byte(0x0CAC6D) + byte(0x0CAC6E) + byte(0x0CAC6F) + byte(0x0CAC70) + byte(0x0CAC71) + byte(0x0CAC72) +
               byte(0x0CAC73)) == 72) &&
              ((bit0(0x0CAC56) == 0 && prev(byte(0x10E5CE)) == 1 && byte(0x10E5CE) == 0 && byte(0x0CAC52) == 11) ||
               (bit0(0x0CAC56) == 1 && prev(bit1(0x0CAC56)) == 0 && bit1(0x0CAC56) == 1 && prev(byte(0x0CAC52)) != 255))
)

achievement(
    title = "The Beginnings of Gale", description = "Collect 150 dream stones and finish Vision 1-1", points = 10,
    id = 121286, badge = "135112", published = "10/08/2020 4:51:34 a. m.", modified = "26/08/2020 9:58:09 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 0 && prev(byte(0x0CAC58)) < 150 && byte(0x0CAC58) >= 150
)

achievement(
    title = "The Diva and the Dark Spirit", description = "Collect 157 dream stones and finish Vision 1-2", points = 10,
    id = 121287, badge = "135113", published = "10/08/2020 4:51:38 a. m.", modified = "26/08/2020 9:58:13 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 1 && prev(byte(0x0CAC59)) < 157 && byte(0x0CAC59) >= 157
)

achievement(
    title = "Deep in the Dying Forest", description = "Collect 152 dream stones and finish Vision 2-1", points = 10,
    id = 121288, badge = "135114", published = "10/08/2020 4:51:42 a. m.", modified = "26/08/2020 9:58:17 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 2 && prev(byte(0x0CAC5A)) < 152 && byte(0x0CAC5A) >= 152
)

achievement(
    title = "Beyond the Backwards Waterfall", description = "Collect 150 dream stones and finish Vision 2-2", points = 10,
    id = 121289, badge = "135115", published = "10/08/2020 4:51:45 a. m.", modified = "26/08/2020 9:58:22 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 3 && prev(byte(0x0CAC5B)) < 150 && byte(0x0CAC5B) >= 150
)

achievement(
    title = "Rebirth of the Forest", description = "Collect 150 dream stones and finish Vision 3-1", points = 10,
    id = 121290, badge = "135116", published = "10/08/2020 4:51:49 a. m.", modified = "26/08/2020 9:58:26 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 4 && prev(byte(0x0CAC5C)) < 150 && byte(0x0CAC5C) >= 150
)

achievement(
    title = "The Stopped Gear", description = "Collect 150 dream stones and finish Vision 3-2", points = 10,
    id = 121291, badge = "135117", published = "10/08/2020 4:51:53 a. m.", modified = "26/08/2020 9:58:31 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 5 && prev(byte(0x0CAC5D)) < 150 && byte(0x0CAC5D) >= 150
)

achievement(
    title = "A Village in Danger", description = "Collect 150 dream stones and finish Vision 4-1", points = 10,
    id = 121292, badge = "135118", published = "10/08/2020 4:51:57 a. m.", modified = "26/08/2020 9:58:35 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 6 && prev(byte(0x0CAC5E)) < 150 && byte(0x0CAC5E) >= 150
)

achievement(
    title = "A Lull in the Wind", description = "Collect 151 dream stones and finish Vision 4-2", points = 10,
    id = 121293, badge = "135119", published = "10/08/2020 4:52:02 a. m.", modified = "26/08/2020 10:01:52 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 7 && prev(byte(0x0CAC5F)) < 151 && byte(0x0CAC5F) >= 151
)

achievement(
    title = "The Four Orbs", description = "Collect 153 dream stones and finish Vision 5-1", points = 10,
    id = 121294, badge = "135120", published = "10/08/2020 4:52:05 a. m.", modified = "26/08/2020 10:01:57 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 8 && prev(byte(0x0CAC60)) < 153 && byte(0x0CAC60) >= 153
)

achievement(
    title = "Between Light and Darkness", description = "Collect 150 dream stones and finish Vision 5-2", points = 10,
    id = 121295, badge = "135121", published = "10/08/2020 4:52:09 a. m.", modified = "26/08/2020 10:02:02 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 9 && prev(byte(0x0CAC61)) < 150 && byte(0x0CAC61) >= 150
)

achievement(
    title = "The Legendary Kingdom", description = "Collect 150 dream stones and finish Vision 6-1", points = 10,
    id = 121296, badge = "135122", published = "10/08/2020 4:52:13 a. m.", modified = "26/08/2020 10:02:06 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 10 && prev(byte(0x0CAC62)) < 150 && byte(0x0CAC62) >= 150
)

achievement(
    title = "The Time of Restoration", description = "Collect 150 dream stones and finish Vision 6-2", points = 10,
    id = 121297, badge = "135123", published = "10/08/2020 4:52:17 a. m.", modified = "26/08/2020 9:58:02 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 11 && prev(byte(0x0CAC63)) < 150 && byte(0x0CAC63) >= 150
)

achievement(
    title = "Klonoa's Grand Gale Strategy", description = "Collect 153 dream stones and finish Extra Vision", points = 10,
    id = 121298, badge = "135134", published = "10/08/2020 4:52:30 a. m.", modified = "26/08/2020 9:57:58 p. m.",
    trigger = prev(byte(0x0CAC52)) != 255 && byte(0x0CAC52) == 13 && byte(0x0CAC65) >= 153 && prev(byte(0x0CAC65)) < 153
)

achievement(
    title = "A Pain in the Backside", description = "Defeat Rongo Lango grabbing only 4 enemies and without being hit", points = 10,
    id = 121629, badge = "135147", published = "13/08/2020 11:42:39 a. m.", modified = "27/08/2020 3:48:14 a. m.",
    trigger = byte(0x0BE1FE) == 31 && byte(0x0CAC52) == 1 && prev(byte(tbyte(0x1202B8) + 0x000095)) == 3 && 
              byte(tbyte(0x1202B8) + 0x000095) == 0 && unless(once(byte(0x10E5D0) < prev(byte(0x10E5D0)))) && unless(repeated(5, (byte(tbyte(0x1202B8) +
               0x000095) > 0) && byte(0x0BEC24) == 200 && prev(byte(0x1067CC)) == 0 && byte(0x1067CC) == 1)) &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x1202B8) + 0x000095)) == 0) && byte(tbyte(0x1202B8) + 0x000095) == 16)))
)

achievement(
    title = "The Oversized Shrimp", description = "Defeat Rongo Lango in 25 seconds or less", points = 10,
    id = 121672, badge = "135146", published = "14/08/2020 2:22:54 a. m.", modified = "27/08/2020 3:48:08 a. m.",
    trigger = unless(repeated(1501, byte(0x10A294) != prev(byte(0x10A294)))) && 
              unless(once(byte(0x10E5CA) < prev(byte(0x10E5CA)))) && byte(0x0BE1FE) == 31 && byte(0x0CAC52) == 1 && prev(byte(tbyte(0x1202B8) + 0x000095)) == 3 && 
              byte(tbyte(0x1202B8) + 0x000095) == 0 &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x1202B8) + 0x000095)) == 0) && byte(tbyte(0x1202B8) + 0x000095) == 16)))
)

achievement(
    title = "My Kingdom for a Fish", description = "Defeat Seadoph by only grabbing him while he's riding Pamela and without being hit", points = 10,
    id = 121773, badge = "135138", published = "14/08/2020 12:51:58 p. m.", modified = "29/11/2020 3:39:45 a. m.",
    trigger = byte(0x0BE1FE) == 31 && prev(byte(0x106935)) == 4 && byte(0x106935) == 0 && byte(0x0CAC52) == 3 && 
              unless(once(byte(0x10E5D0) < prev(byte(0x10E5D0)))) && unless(once(byte(0x106935) > 0 && prev(byte(0x0BF356)) == 0 && byte(0x0BF356) == 255)) &&
              (always_false() || (never(byte(0x0BEC24) == 240) && never((prev(byte(0x106935)) == 0 && byte(0x106935) == 16))))
)

achievement(
    title = "The Corrupted King", description = "Defeat Seadoph and Pamela in 50 seconds or less", points = 10,
    id = 121881, badge = "135129", published = "15/08/2020 3:42:41 a. m.", modified = "29/11/2020 3:40:02 a. m.",
    trigger = unless(repeated(3001, byte(0x10A294) != prev(byte(0x10A294)))) && 
              unless(once(byte(0x10E5CA) < prev(byte(0x10E5CA)))) && byte(0x0BE1FE) == 31 && prev(byte(0x106935)) == 4 && byte(0x106935) == 0 && byte(0x0CAC52) == 3 &&
              (always_false() || (never(byte(0x0BEC24) == 240) && never((prev(byte(0x106935)) == 0 && byte(0x106935) == 16))))
)

achievement(
    title = "Jumping Flash!", description = "Defeat Gelg Bolm without floating in the air or being hit", points = 10,
    id = 121999, badge = "135139", published = "16/08/2020 3:28:14 p. m.", modified = "27/08/2020 4:10:34 a. m.",
    trigger = byte(0x0CAC52) == 5 && byte(0x0BE1FE) == 31 && prev(byte(tbyte(0x10A4D4) + 0x000095)) == 3 && 
              byte(tbyte(0x10A4D4) + 0x000095) == 0 && unless(once(byte(0x10E5D0) < prev(byte(0x10E5D0)))) && unless(once(byte(0x106792) == 20)) &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x10A4D4) + 0x000095)) == 0) && byte(tbyte(0x10A4D4) + 0x000095) == 16)))
)

achievement(
    title = "A Clockwork Peach", description = "Defeat Gelg Bolm in 1 minute 10 seconds or less", points = 10,
    id = 122000, badge = "135126", published = "16/08/2020 3:28:23 p. m.", modified = "27/08/2020 4:10:40 a. m.",
    trigger = unless(repeated(4201, byte(0x10A294) != prev(byte(0x10A294)))) && 
              unless(once(byte(0x10E5CA) < prev(byte(0x10E5CA)))) && byte(0x0BE1FE) == 31 && byte(0x0CAC52) == 5 && prev(byte(tbyte(0x10A4D4) + 0x000095)) == 3 && 
              byte(tbyte(0x10A4D4) + 0x000095) == 0 &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x10A4D4) + 0x000095)) == 0) && byte(tbyte(0x10A4D4) + 0x000095) == 16)))
)

achievement(
    title = "Two Lights in One Shot", description = "Defeat Baladium always hitting both adjacent weak points with one shot and without being hit", points = 10,
    id = 122044, badge = "135156", published = "17/08/2020 3:52:06 a. m.", modified = "27/08/2020 4:10:53 a. m.",
    trigger = byte(0x0CAC52) == 7 && byte(0x0BE1FE) == 31 && prev(byte(tbyte(0x12F510) + 0x000095)) == 4 && 
              byte(tbyte(0x12F510) + 0x000095) == 0 && unless(once(byte(0x10E5D0) < prev(byte(0x10E5D0)))) && 
              unless(once(bit1(tbyte(0x12F510) + 0x000095) == 1)) &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x12F510) + 0x000095)) == 0) && byte(tbyte(0x12F510) + 0x000095) == 16)))
)

achievement(
    title = "The Flying Cobra", description = "Defeat Baladium in 33 seconds or less", points = 10,
    id = 122045, badge = "135127", published = "17/08/2020 3:52:16 a. m.", modified = "27/08/2020 4:11:03 a. m.",
    trigger = unless(repeated(1981, byte(0x10A294) != prev(byte(0x10A294)))) && 
              unless(once(byte(0x10E5CA) < prev(byte(0x10E5CA)))) && byte(0x0BE1FE) == 31 && byte(0x0CAC52) == 7 && prev(byte(tbyte(0x12F510) + 0x000095)) > 0 && 
              byte(tbyte(0x12F510) + 0x000095) == 0 &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x12F510) + 0x000095)) == 0) && byte(tbyte(0x12F510) + 0x000095) == 16)))
)

achievement(
    title = "Finding the Right Tune", description = "Defeat Joka only going right (don't press left) and without being hit", points = 25,
    id = 122103, badge = "135148", published = "18/08/2020 3:19:25 a. m.", modified = "29/11/2020 3:40:08 a. m.",
    trigger = byte(0x0BE1FE) == 31 && prev(byte(0x1069E9)) == 2 && byte(0x1069E9) == 0 && byte(0x0CAC52) == 9 && 
              unless(once(byte(0x10E5D0) < prev(byte(0x10E5D0)))) && unless(once(byte(0x1069E9) > 0 && bit7(0x0BEC40) == 1)) &&
              (always_false() || (never(byte(0x0BEC24) == 240) && never((prev(byte(0x1069E9)) == 0 && byte(0x1069E9) == 16))))
)

achievement(
    title = "The Fool & The Wicked", description = "Defeat Joka in 2 minutes 40 seconds or less", points = 10,
    id = 122104, badge = "135136", published = "18/08/2020 3:19:38 a. m.", modified = "29/11/2020 3:40:19 a. m.",
    trigger = unless(repeated(9601, byte(0x10A294) != prev(byte(0x10A294)))) && 
              unless(once(byte(0x10E5CA) < prev(byte(0x10E5CA)))) && byte(0x0BE1FE) == 31 && prev(byte(0x1069E9)) == 2 && byte(0x1069E9) == 0 && byte(0x0CAC52) == 9 &&
              (always_false() || (never(byte(0x0BEC24) == 240) && never((prev(byte(0x1069E9)) == 0 && byte(0x1069E9) == 16))))
)

achievement(
    title = "A Dimension of Sound, Sight and Mind", description = "Defeat Ghadius without being teleported or getting hit", points = 10,
    id = 122112, badge = "135130", published = "18/08/2020 1:09:06 p. m.", modified = "29/11/2020 3:40:25 a. m.",
    trigger = byte(0x0BE1FE) == 31 && prev(byte(0x107745)) == 1 && byte(0x107745) == 0 && byte(0x0CAC52) == 11 && 
              unless(once(byte(0x10E5D0) < prev(byte(0x10E5D0)))) && unless(once(byte(0x107745) > 0 && byte(0x1075DC) == 2)) &&
              (always_false() || (never(byte(0x0BEC24) == 240) && never((prev(byte(0x107745)) == 0 && byte(0x107745) == 16))))
)

achievement(
    title = "The Distorted Lord of Nightmares", description = "Defeat Ghadius in 1 minute 20 seconds or less", points = 10,
    id = 122113, badge = "135142", published = "18/08/2020 1:09:13 p. m.", modified = "29/11/2020 3:40:40 a. m.",
    trigger = unless(repeated(4801, byte(0x10A294) != prev(byte(0x10A294)))) && 
              unless(once(byte(0x10E5CA) < prev(byte(0x10E5CA)))) && byte(0x0BE1FE) == 31 && prev(byte(0x107745)) == 1 && byte(0x107745) == 0 && byte(0x0CAC52) == 11 &&
              (always_false() || (never(byte(0x0BEC24) == 240) && never((prev(byte(0x107745)) == 0 && byte(0x107745) == 16))))
)

achievement(
    title = "Splendid Teamwork", description = "Complete Nahatomb's 1st phase by grabbing only 5 enemies and without being hit", points = 10,
    id = 122480, badge = "135154", published = "22/08/2020 1:25:00 a. m.", modified = "26/08/2020 1:15:44 a. m.",
    trigger = byte(0x0CAC52) == 12 && dword(0x0BDEF8) == 6500867 && prev(byte(tbyte(0x10A4D0) + 0x000095)) == 16 && 
              byte(tbyte(0x10A4D0) + 0x000095) == 0 && unless(once(byte(0x10E5D0) < prev(byte(0x10E5D0)))) && unless(repeated(6, (byte(tbyte(0x10A4D0) +
               0x000095) > 0) && byte(0x0BEC24) == 200 && prev(byte(0x1067CC)) == 0 && byte(0x1067CC) == 1)) &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x10A4D0) + 0x000095)) == 0) && byte(tbyte(0x10A4D0) + 0x000095) == 16)))
)

achievement(
    title = "Gluttony", description = "Complete Nahatomb's 1st phase in 60 seconds or less", points = 10,
    id = 122481, badge = "135137", published = "22/08/2020 1:25:10 a. m.", modified = "26/08/2020 1:15:49 a. m.",
    trigger = unless(repeated(3601, byte(0x10A294) != prev(byte(0x10A294)))) && 
              unless(once(byte(0x10E5CA) < prev(byte(0x10E5CA)))) && byte(0x0CAC52) == 12 && dword(0x0BDEF8) == 6500867 && prev(byte(tbyte(0x10A4D0) + 0x000095)) == 16 && 
              byte(tbyte(0x10A4D0) + 0x000095) == 0 &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x10A4D0) + 0x000095)) == 0) && byte(tbyte(0x10A4D0) + 0x000095) == 16)))
)

achievement(
    title = "Eyes Without a Face", description = "Complete Nahatomb's 2nd phase without floating or being hit", points = 10,
    id = 122482, badge = "135135", published = "22/08/2020 1:25:20 a. m.", modified = "26/08/2020 1:15:54 a. m.",
    trigger = byte(0x0CAC52) == 12 && dword(0x0BDEF8) == 5392146 && prev(byte(tbyte(0x10A4D0) + 0x000095)) == 2 && 
              byte(tbyte(0x10A4D0) + 0x000095) == 0 && unless(once(byte(0x10E5D0) < prev(byte(0x10E5D0)))) && unless(once(byte(0x106792) == 20)) &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x10A4D0) + 0x000095)) == 0) && byte(tbyte(0x10A4D0) + 0x000095) == 16)))
)

achievement(
    title = "In the Belly of the Beast", description = "Complete Nahatomb's 2nd phase in 55 seconds or less", points = 10,
    id = 122483, badge = "135125", published = "22/08/2020 1:25:32 a. m.", modified = "26/08/2020 1:16:01 a. m.",
    trigger = unless(repeated(3301, byte(0x10A294) != prev(byte(0x10A294)))) && 
              unless(once(byte(0x10E5CA) < prev(byte(0x10E5CA)))) && byte(0x0CAC52) == 12 && dword(0x0BDEF8) == 5392146 && prev(byte(tbyte(0x10A4D0) + 0x000095)) == 2 && 
              byte(tbyte(0x10A4D0) + 0x000095) == 0 &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x10A4D0) + 0x000095)) == 0) && byte(tbyte(0x10A4D0) + 0x000095) == 16)))
)

achievement(
    title = "No Cannon Left Unloaded", description = "Complete Nahatomb's 3rd phase only running to the left (don't press right) and without being hit", points = 10,
    id = 122484, badge = "135144", published = "22/08/2020 1:25:42 a. m.", modified = "11/09/2020 3:19:10 p. m.",
    trigger = byte(0x0CAC52) == 12 && dword(0x0BDEF8) == 6697475 && prev(byte(tbyte(0x10A4D0) + 0x000095)) == 16 && 
              byte(tbyte(0x10A4D0) + 0x000095) == 0 && unless(once(byte(0x10E5D0) < prev(byte(0x10E5D0)))) && 
              unless(once((byte(tbyte(0x10A4D0) + 0x000095) > 0) && bit5(0x0BEC40) == 1)) &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x10A4D0) + 0x000095)) == 0) && byte(tbyte(0x10A4D0) + 0x000095) == 16)))
)

achievement(
    title = "The Embodiment of Evil", description = "Complete Nahatomb's 3rd phase in 60 seconds or less", points = 10,
    id = 122485, badge = "135133", published = "22/08/2020 1:25:51 a. m.", modified = "26/08/2020 1:16:13 a. m.",
    trigger = unless(repeated(3601, byte(0x10A294) != prev(byte(0x10A294)))) && 
              unless(once(byte(0x10E5CA) < prev(byte(0x10E5CA)))) && byte(0x0CAC52) == 12 && dword(0x0BDEF8) == 6697475 && prev(byte(tbyte(0x10A4D0) + 0x000095)) == 16 && 
              byte(tbyte(0x10A4D0) + 0x000095) == 0 &&
              (always_false() || (never(byte(0x0BEC24) == 240) && 
                never((prev(byte(tbyte(0x10A4D0) + 0x000095)) == 0) && byte(tbyte(0x10A4D0) + 0x000095) == 16)))
)

achievement(
    title = "Wahoo!", description = "Reach the end of Extra Vision in 3 minutes or less", points = 25,
    id = 122571, badge = "135157", published = "23/08/2020 6:48:36 a. m.", modified = "26/08/2020 1:16:30 a. m.",
    trigger = dword(0x12AB74) <= 10800 && dword(0x12AB74) > 0 && byte(0x0CAC52) == 13 && 
              repeated(20, byte(0x0BE330) == 1) && never(byte(0x0BEC24) == 240)
)

achievement(
    title = "Dream Weaver", description = "Finish the game in 1 session without dying (or retrying the level)", points = 50,
    id = 122618, badge = "135132", published = "23/08/2020 11:10:56 p. m.", modified = "17/09/2020 3:19:26 a. m.",
    trigger = once(prior(byte(0x0CAC52)) == 255 && byte(0x0CAC52) == 0 && byte(0x0BEC24) == 200) && 
              once(prev(byte(0x0CAC52)) == 0 && byte(0x0CAC52) == 1) && once(prev(byte(0x0CAC52)) == 1 && byte(0x0CAC52) == 2) && 
              once(prev(byte(0x0CAC52)) == 2 && byte(0x0CAC52) == 3) && once(prev(byte(0x0CAC52)) == 3 && byte(0x0CAC52) == 4) && 
              once(prev(byte(0x0CAC52)) == 4 && byte(0x0CAC52) == 5) && once(prev(byte(0x0CAC52)) == 5 && byte(0x0CAC52) == 6) && 
              once(prev(byte(0x0CAC52)) == 6 && byte(0x0CAC52) == 7) && once(prev(byte(0x0CAC52)) == 7 && byte(0x0CAC52) == 8) && 
              once(prev(byte(0x0CAC52)) == 8 && byte(0x0CAC52) == 9) && once(prev(byte(0x0CAC52)) == 9 && byte(0x0CAC52) == 10) && 
              once(prev(byte(0x0CAC52)) == 10 && byte(0x0CAC52) == 11) && once(prev(byte(0x0CAC52)) == 11 && byte(0x0CAC52) == 12) && 
              (prior(byte(0x0CAC52)) == 12 && byte(0x0CAC52) == 255 && byte(0x0BEC24) == 200) && unless(once(byte(0x0BECA0) == 3 && byte(0x0BEC24) == 240)) && 
              unless(once(byte(0x10E5CA) < prev(byte(0x10E5CA)))) && bit0(0x0CAC56) == 0 &&
              (always_false() || (never((byte(0x0CAC52) == 255 && dword(0x0BDEF8) == 2249765 && byte(0x0BEC24) == 240))))
)

achievement(
    title = "xX360NoScOpExX", description = "Defeat Seadoph & Pamela by only grabbing Seadoph as he's riding Pamela", points = 0,
    id = 83678, badge = "90856", published = "17/09/2019 8:02:28 a. m.", modified = "23/08/2020 2:23:52 a. m.",
    trigger = byte(0x1042B0) == 4 && never(byte(0x1042B0) != 4) && never(prev(byte(0x10E5CA)) > byte(0x10E5CA)) && 
              repeated(100, byte(0x106935) == 16) && once(prior(byte(0x106935)) == 0) && repeated(100, byte(0x106935) == 0) && byte(0x106935) == 0 && 
              never((prev(byte(0x0BF356)) == 255 && prior(byte(0x0BF356)) == 0)) && byte(0x0CAC52) < 0
)

achievement(
    title = "A Quaint Beginning", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 1-1 (The Beginnings of Gale)", points = 0,
    id = 83668, badge = "90499", published = "17/09/2019 8:01:44 a. m.", modified = "23/08/2020 2:24:45 a. m.",
    trigger = byte(0x1042B0) == 1 && byte(0x10E60C) >= 150 && byte(0x10E60C) <= 160 && byte(0x10E5CE) == 6 && 
              byte(0x0CAC52) < 0 &&
              ((prev(byte(0x10E60C)) < 150 && prev(byte(0x10E60C)) != 0) ||
               (prev(byte(0x10E60C)) < 6 && prev(byte(0x10E60C)) != 0))
)

achievement(
    title = "Deep in the Dying Forest", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 2-1", points = 0,
    id = 121227, badge = "90504", published = "9/08/2020 9:22:41 p. m.", modified = "23/08/2020 2:24:56 a. m.",
    trigger = byte(0x0CAC52) != 2 && measured(byte(0x10E60C) >= 150) && byte(0x10E5CE) == 6 && byte(0x0CAC52) == 2 && 
              byte(0x0CAC52) < 0
)

achievement(
    title = "The Diva and the Dark Spirit", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 1-2", points = 0,
    id = 121226, badge = "90503", published = "9/08/2020 9:22:36 p. m.", modified = "23/08/2020 2:24:52 a. m.",
    trigger = never(byte(0x0CAC52) != 1) && byte(0x10E60C) >= 150 && byte(0x10E5CE) == 6 && byte(0x0CAC52) == 1 && 
              byte(0x0CAC52) < 0
)

achievement(
    title = "The Beginnings of Gale", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 1-1", points = 0,
    id = 121225, badge = "120630", published = "9/08/2020 9:22:32 p. m.", modified = "23/08/2020 2:23:11 a. m.",
    trigger = never(byte(0x0CAC52) != 0) && byte(0x10E60C) >= 150 && byte(0x10E5CE) == 6 && byte(0x0CAC52) == 0 && 
              byte(0x0CAC52) < 0
)

achievement(
    title = "Seadolph and Pamela ALT RIKU", description = "Damageless", points = 0,
    id = 121224, badge = "00000", published = "9/08/2020 9:21:34 p. m.", modified = "23/08/2020 2:24:40 a. m.",
    trigger = never(byte(0x1042B0) != 16) && never(byte(0x106935) == 255) && once(byte(0x106935) > prev(byte(0x106935))) && 
              byte(0x106935) == 0 && never(byte(0x10E5D0) != prev(byte(0x10E5D0))) && byte(0x0CAC52) < 0
)

achievement(
    title = "Seadolph and Pamela", description = "Defeat the Boss", points = 0,
    id = 121223, badge = "90856", published = "9/08/2020 9:21:26 p. m.", modified = "23/08/2020 2:24:35 a. m.",
    trigger = never(byte(0x1042B0) != 16) && once(byte(0x106935) == 255) && once(byte(0x106935) > 72) && 
              once(byte(0x106935) == 0) && once(byte(0x106935) == 1) && once(byte(0x106935) == 16) && byte(0x0CAC52) < 0
)

achievement(
    title = "King of Swing", description = "Defeat Baladium within four swings back and forth (~33 seconds)", points = 0,
    id = 83680, badge = "90859", published = "17/09/2019 8:02:36 a. m.", modified = "23/08/2020 2:24:11 a. m.",
    trigger = byte(0x1042B0) == 8 && dword(0x1068D0) <= 2000 && byte(0x0CAC52) < 0 &&
              ((once(byte(0x10A47C) == 16) && byte(0x10A47C) == 0) ||
               (once(byte(0x106939) == 16) && byte(0x106939) == 0) ||
               (once(byte(0x106949) == 16) && byte(0x106949) == 0))
)

achievement(
    title = "Plants are cool.....right?", description = "Defeat Gelg Bolm by only staying on the right side of the screen", points = 0,
    id = 83679, badge = "90858", published = "17/09/2019 8:02:32 a. m.", modified = "23/08/2020 2:23:57 a. m.",
    trigger = byte(0x1042B0) == 6 && byte(0x0CAC52) < 0 &&
              ((once(dword(0x0BF2A4) < 100) && never(prev(byte(0x10E5CA)) > byte(0x10E5CA)) && 
                once(byte(0x106A9D) == 16) && byte(0x106A9D) == 0 && never(word(0x10E5F6) < 119) && never(word(0x10E5F6) > 331)) ||
               (once(dword(0x0BF2A4) < 100) && never(prev(byte(0x10E5CA)) > byte(0x10E5CA)) && 
                once(byte(0x106ED9) == 16) && byte(0x106ED9) == 0 && never(word(0x10E5F6) < 119) && never(word(0x10E5F6) > 331)))
)

achievement(
    title = "Bumbo Dumbo", description = "Defeat Rongo Longo without jumping or taking damage", points = 0,
    id = 83677, badge = "90857", published = "17/09/2019 8:02:24 a. m.", modified = "23/08/2020 2:23:48 a. m.",
    trigger = byte(0x1042B0) == 2 && never(byte(0x1042B0) != 2) && never(prev(byte(0x10E5CA)) > byte(0x10E5CA)) && 
              repeated(100, byte(0x106D6D) == 16) && repeated(50, byte(0x106D6D) == 0) && never(byte(0x0BF01B) == 255) && byte(0x0CAC52) < 0
)

achievement(
    title = "Massive Machine", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 5-1 (The Four Orbs)", points = 0,
    id = 83676, badge = "90513", published = "17/09/2019 8:02:18 a. m.", modified = "23/08/2020 2:23:44 a. m.",
    trigger = byte(0x1042B0) == 9 && byte(0x10E60C) >= 150 && byte(0x10E60C) <= 160 && byte(0x10E5CE) == 6 && 
              byte(0x0CAC52) < 0 &&
              ((prev(byte(0x10E60C)) < 150 && prev(byte(0x10E60C)) != 0) ||
               (prev(byte(0x10E60C)) < 6 && prev(byte(0x10E60C)) != 0))
)

achievement(
    title = "Chi-Chi Chills", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 4-2 (A Lull in the Wind)", points = 0,
    id = 83675, badge = "90512", published = "17/09/2019 8:02:13 a. m.", modified = "23/08/2020 2:23:40 a. m.",
    trigger = byte(0x1042B0) == 8 && byte(0x10E60C) >= 150 && byte(0x10E60C) <= 160 && byte(0x10E5CE) == 6 && 
              byte(0x0CAC52) < 0 &&
              ((prev(byte(0x10E60C)) < 150 && prev(byte(0x10E60C)) != 0) ||
               (prev(byte(0x10E60C)) < 6 && prev(byte(0x10E60C)) != 0))
)

achievement(
    title = "Hurrying Home", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 4-1 (A Village In Danger)", points = 0,
    id = 83674, badge = "90509", published = "17/09/2019 8:02:09 a. m.", modified = "23/08/2020 2:23:36 a. m.",
    trigger = byte(0x1042B0) == 7 && byte(0x10E60C) >= 150 && byte(0x10E60C) <= 160 && byte(0x10E5CE) == 6 && 
              byte(0x0CAC52) < 0 &&
              ((prev(byte(0x10E60C)) < 150 && prev(byte(0x10E60C)) != 0) ||
               (prev(byte(0x10E60C)) < 6 && prev(byte(0x10E60C)) != 0))
)

achievement(
    title = "Plant-life Problems", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 3-2 (The Stopped Gear)", points = 0,
    id = 83673, badge = "90508", published = "17/09/2019 8:02:06 a. m.", modified = "23/08/2020 2:23:32 a. m.",
    trigger = byte(0x1042B0) == 6 && byte(0x10E60C) >= 150 && byte(0x10E60C) <= 160 && byte(0x10E5CE) == 6 && 
              byte(0x0CAC52) < 0 &&
              ((prev(byte(0x10E60C)) < 150 && prev(byte(0x10E60C)) != 0) ||
               (prev(byte(0x10E60C)) < 6 && prev(byte(0x10E60C)) != 0))
)

achievement(
    title = "Continuing the Quest", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 3-1 (Rebirth of the Forest)", points = 0,
    id = 83672, badge = "90506", published = "17/09/2019 8:02:02 a. m.", modified = "23/08/2020 2:23:28 a. m.",
    trigger = byte(0x1042B0) == 5 && byte(0x10E60C) >= 150 && byte(0x10E60C) <= 160 && byte(0x10E5CE) == 6 && 
              byte(0x0CAC52) < 0 &&
              ((prev(byte(0x10E60C)) < 150 && prev(byte(0x10E60C)) != 0) ||
               (prev(byte(0x10E60C)) < 6 && prev(byte(0x10E60C)) != 0))
)

achievement(
    title = "Drenched Detour", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 2-2 (Beyond the Backwards Waterfall)", points = 0,
    id = 83671, badge = "90505", published = "17/09/2019 8:01:58 a. m.", modified = "23/08/2020 2:23:24 a. m.",
    trigger = byte(0x1042B0) == 4 && byte(0x10E60C) >= 150 && byte(0x10E60C) <= 160 && byte(0x10E5CE) == 6 && 
              byte(0x0CAC52) < 0 &&
              ((prev(byte(0x10E60C)) < 150 && prev(byte(0x10E60C)) != 0) ||
               (prev(byte(0x10E60C)) < 6 && prev(byte(0x10E60C)) != 0))
)

achievement(
    title = "Off to Granny's", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 2-1 (Deep in the Dying Forest)", points = 0,
    id = 83670, badge = "90504", published = "17/09/2019 8:01:53 a. m.", modified = "23/08/2020 2:23:20 a. m.",
    trigger = byte(0x1042B0) == 3 && byte(0x10E60C) >= 150 && byte(0x10E60C) <= 160 && byte(0x10E5CE) == 6 && 
              byte(0x0CAC52) < 0 &&
              ((prev(byte(0x10E60C)) < 150 && prev(byte(0x10E60C)) != 0) ||
               (prev(byte(0x10E60C)) < 6 && prev(byte(0x10E60C)) != 0))
)

achievement(
    title = "Battle by the Bell", description = "Collect 150+ gems and rescue all 6 prisoners in Vision 1-2 (The Diva and the Dark Spirit)", points = 0,
    id = 83669, badge = "90503", published = "17/09/2019 8:01:48 a. m.", modified = "23/08/2020 2:23:16 a. m.",
    trigger = byte(0x1042B0) == 2 && byte(0x10E60C) >= 150 && byte(0x10E60C) <= 160 && byte(0x10E5CE) == 6 && 
              byte(0x0CAC52) < 0 &&
              ((prev(byte(0x10E60C)) < 150 && prev(byte(0x10E60C)) != 0) ||
               (prev(byte(0x10E60C)) < 6 && prev(byte(0x10E60C)) != 0))
)

function levelLeaderboard(lvl, visName){

	title = format("Vision {0}", visName)
    description = format("Finish Vision {0} as fast as you can", visName)
		
    start = byte(0x0cac52) == lvl && //-Level
			bit1(0x0cac56) == 1 &&//-Vision Clear
			byte(0x0be34e) == 0 && //--Some other flag
			byte(0x0be1fe) == 0x1e && //-Stupid generic variable to say No Boss
			prev(byte(0x0be348)) == 0 && //--Death flag
			prev(byte(0x0be374)) == 1 && byte(0x0be374) == 0 //-The flag
			
			
    cancel = byte(0x0be34e) > 0 || 
			(byte(0x0be344) == 0x0 && //--Finish flag
			byte(0x0beca0) > 0x0 && //--Pause flag
			prev(byte(0x0be374)) == 0 && byte(0x0be374) == 1)
	
    submit = prev(byte(0x0be344)) == 0 && byte(0x0be344) == 0x1f &&  //--Finish flag
			prev(byte(0x0be374)) == 0 && byte(0x0be374) == 1 //-The flag
			
    value = measured(byte(0x0beca0) == 0)
	
    leaderboard(title, description, start, cancel, submit, value, "FRAMES")    
}

levelLeaderboard(0, "1-1")
levelLeaderboard(1, "1-2")
levelLeaderboard(2, "2-1")
levelLeaderboard(3, "2-2")
levelLeaderboard(4, "3-1")
levelLeaderboard(5, "3-2")
levelLeaderboard(6, "4-1")
levelLeaderboard(7, "4-2")
levelLeaderboard(8, "5-1")
levelLeaderboard(9, "5-2")
levelLeaderboard(10, "6-1")
levelLeaderboard(11, "6-2")