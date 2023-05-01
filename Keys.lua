-- Raw/Unhashed API keys from (a certain) ranking service. No longer needed after shutdown
--[[ ID: FA!
291446+2-1.9!8!2!0_806611267991+524288-1.9!8!2!0_04260355+128-1.9!8!2!0_4893919482671+4194304-1.9!8!2!0_44738133+128-1.9!8!2!0_403267395822+524288-1.9!8!2!0_6148662373+8192-1.9!8!2!0_6313237672+8192-1.9!8!2!0_61463642+128-1.9!8!2!0_88098061+128-1.9!8!2!0_4811458690531+4194304-1.9!8!2!0_466927999702+524288-1.9!8!2!0_2591226+16-1.9!8!2!0_88202247582+65536-1.9!8!2!0_251585900342+524288-1.9!8!2!0_654397+2-1.9!8!2!0_8676775718781+4194304-1.9!8!2!0_2137387993661+4194304-1.9!8!2!0_0067187123+8192-1.9!8!2!0_293152+2-1.9!8!2!0_21398143+128-1.9!8!2!0_6775999423+8192-1.9!8!2!0_8003425743+8192-1.9!8!2!0_274942604+1024-1.9!8!2!0_6148662373+8192-1.9!8!2!0_6775999423+8192-1.9!8!2!0_0021162257461+4194304-1.9!8!2!0_6311102+16-1.9!8!2!0_675848333+1024-1.9!8!2!0_6148662373+8192-1.9!8!2!0_84007784+128-1.9!8!2!0_6148662373+8192-1.9!8!2!0_654397+2-1.9!8!2!0
--]]

local Data = {}
Data.CurrentHash = nil
Data.Groups = {
				["Aroma Cafe"]        = { Id=9976905 , Mode = "Application"  ,   API = "RdYsWN7kaq9PzXEGGemgM2Zml9CZW0zp7CmJlpGZ", Name = "Aroma!"                     ,   GameId = 6518535691},
				["Corner Cup Cafe"]   = { Id=5550884 , Mode = "Rank Purchase",   API = "7m4uy2C8Cb2ZRDpTohYHtDTCbK1XZhW9wt2ZUgcj", Name = "The Corner Cup Café"        ,   GameId = 0},
				["Firestove"]         = { Id=8033739 , Mode = "Rank Purchase",   API = "YtOx3Ez5Tq34ZqqlLOZXg6CVYfDOh1wx2ILdT9vQ", Name = "Firestove"                  ,   GameId = 6026529013},
				["San Mateo"]         = { Id=7549599 , Mode = "Application"  ,   API = "SfmL0dDeB08erqlmRgTZAUAO3y06pU11xQYm25Ie", Name = "San Mateo Correctional Center", GameId = 5650608159},
				["Angels Touch"]      = { Id=8676495 , Mode = "Application"  ,   API = "trkMVpXAjCauHxlSRS69F1jbAQni9yQXdkVumlJi", Name = "Angels Touch"               ,   GameId = 6558980151},
				["Strada Cafe"]       = { Id=9220121 , Mode = "Rank Purchase",   API = "TVnPbqj4FA9fUNBH0Sw2l4Lplj4wSsQt3fkIafcC", Name = "Strada Cafe"                ,   GameId = 0},
				["Amulet Cafe"]       = { Id=6635823 , Mode = "Rank Purchase",   API = "M0h9AsB3NT80XKBNkxZhq3xJmHRF7ioP2MoXEYrd", Name = "Amulet Cafe"                ,   GameId = 8842026351},
				["Sweet Barista"]     = { Id=7093409 , Mode = "Application"  ,   API = "dyZZGkQQxulZH4UMf44T3ORJbxzhhp77GIY6MN20", Name = "Sweet Barista Café"         ,   GameId = 6192965794},
				["Orca Cafe"]         = { Id=10485506, Mode = "Application"  ,   API = "rJC2wTSlqn6buOeKrT5jRAyaAUOTR7U8KhSFd9L7", Name = "Orca Café"                  ,   GameId = 6783988896},
				["OQ6"]               = { Id=3090269 , Mode = "Rank Purchase",   API = "fUq9reN7cY7EG4wmmGy0z24PhKqvprSB4fmuaSn2", Name = "OQ6 Incorporated"           ,   GameId = 0},
				["Sugary Cafe"]       = { Id=5743036 , Mode = "Rank Purchase",   API = "MVU3JxOqbp3HzAI7DHF5d3HRZIyzYdPM89jVXihz", Name = "Sugary Cafe"                ,   GameId = 0},
				["Dentist Frenzy"]    = { Id=9116698 , Mode = "Application"  ,   API = "qNWCv79tOSflIUbuf90H4sfFVgKdhKf9mdp1h0ab", Name = "Dentist Frenzy"             ,   GameId = 0},
				["Tea Bubble Cafe"]   = { Id=8704590 , Mode = "Application"  ,   API = "wqafqXyZwhKj8Evsc9FvarvNVMcN7w96pErfLIqf", Name = "Tea Bubble Cafe"            ,   GameId = 8830990174},
				["Sunshine Daycare"]  = { Id=10690011, Mode = "Applcation"   ,   API = "DUtAONbD484ExNMGt4KqJ2HIlcTuacSRO6jacisi", Name = "Sunshine Daycare Studios"   ,   GameId = 6818443227},
				["Eagle Cafe"]        = { Id=11292263, Mode = "Application"  ,   API = "O1z7sRpGhs2nAZsV0G259QiHTzG3hH56HNgD6Nlh", Name = "Eagle Café"                 ,   GameId = 7026747782},
				["Quartz Airline"]    = { Id=11430408, Mode = "Application"  ,   API = "NICM9aqfzB5gVBr5ZmDHV6MN2H6Sm3eW7roXtBgw", Name = "Quartz Airline"             ,   GameId = 0},
				["Everest Bakery"]    = { Id=10368292, Mode = "Application"  ,   API = "CGNmW6lFtF1sQVQt3KX8U8iLgmgvvhhP8jR5Pkis", Name = "Everest Bakery"             ,   GameId = 7172331126}
}

return Data
