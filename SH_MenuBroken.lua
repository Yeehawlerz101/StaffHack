
-- Colors --
-- Desc: Just writing colors so instead of numbers I can just use terms like red or blue later on. --

red = Color(255,0,0,255);
black = Color(0,0,0,255);
green = Color(0,255,0,255);
white = Color(255,255,255,255);
blue = Color(0,0,255,255);
cyan = Color(0,255,255,255);
pink = Color(255,0,255,255);
blue = Color(0,0,255,255);
grey = Color(100,100,100,255);
gold = Color(255,228,0,255);
lightblue = Color(155,205,248);
lightgreen = Color(174,255,0);
iceblue = Color(116,187,251,255);
orange = Color(255,165,0,255);


-- Boot Message --
-- Desc: So you know what you are running and version. --
 MsgC( cyan,[[
 _______________________ _______ _______            _______ _______ _       
(  ____ \__   __(  ___  |  ____ (  ____ \  |\     /(  ___  |  ____ \ \    /\
| (    \/  ) (  | (   ) | (    \/ (    \/  | )   ( | (   ) | (    \/  \  / /
| (_____   | |  | (___) | (__   | (__      | (___) | (___) | |     |  (_/ / 
(_____  )  | |  |  ___  |  __)  |  __)     |  ___  |  ___  | |     |   _ (  
      ) |  | |  | (   ) | (     | (        | (   ) | (   ) | |     |  ( \ \ 
/\____) |  | |  | )   ( | )     | )        | )   ( | )   ( | (____/\  /  \ \
\_______)  )_(  |/     \|/      |/         |/     \|/     \(_______/_/    \/
]])




MsgC( blue,[[ 
 _______ _______ ______  _______    ______                 
(       |  ___  |  __  \(  ____ \  (  ___ \|\     /|       
| () () | (   ) | (  \  ) (    \/  | (   ) | \   / )   _   
| || || | (___) | |   ) | (__      | (__/ / \ (_) /   (_)  
| |(_)| |  ___  | |   | |  __)     |  __ (   \   /         
| |   | | (   ) | |   ) | (        | (  \ \   ) (      _   
| )   ( | )   ( | (__/  ) (____/\  | )___) )  | |     (_)  
|/     \|/_____\(______/(_______/__|/_\___/   \_/          
|\     /(  ____ (  ____ \     / ) ___  \                   
( \   / ) (    \/ (    \/    / /\/   \  \                  
 \ (_) /| (__   | (__       / /    ___) /                  
  \   / |  __)  |  __)     ( (    (___ (                   
   ) (  | (     | (         \ \       ) \                  
   | |  | (____/\ (____/\    \ \/\___/  /                  
   \_/  (_______(_______/     \_)______/                   
  /__\                                                     
 ( \/ )                                                    
  \  /                                                     
  /  \/\                                                   
 / /\  /                                                   
(  \/  \                                                   
 \___/\/__________       _______ _______                   
(       )__   __/ \    /(  ___  |  ____ )\     /|          
| () () |  ) (  |  \  / / (   ) | (    )( \   / )          
| || || |  | |  |  (_/ /| |   | | (____)|\ (_) /           
| |(_)| |  | |  |   _ ( | |   | |  _____) \   /            
| |   | |  | |  |  ( \ \| |   | | (        ) (             
| )   ( |__) (__|  /  \ \ (___) | )        | |             
|/     \\_______/_/    \(_______)/         \_/             
                                                           

]])
MsgC( black,[[

         _______ _______    _______           
|\     /(  ____ (  ____ )  (  __   ) |\     /|
| )   ( | (    \/ (    )|  | (  )  | ( \   / )
| |   | | (__   | (____)|  | | /   |  \ (_) / 
( (   ) )  __)  |     __)  | (/ /) |   ) _ (  
 \ \_/ /| (     | (\ (     |   / | |  / ( ) \ 
  \   / | (____/\ ) \ \__  |  (__) |_( /   \ )
   \_/  (_______//   \__/  (_______|_)/     \|
                                              

]])

chat.AddText( red, "Staff Hack")
chat.AddText( red, "Version: 0.X")
chat.AddText( black, "Made by Yee<3 & Mikopy")
chat.AddText( black, "Get updates from")
chat.AddText( white, "https://goo.gl/1HZuRW")



-- Fonts --
-- Desc: Custom Fonts. --
	--ESP Name Fonts
surface.CreateFont("PlyNameESP_Clrd", { size = 15, weight = 800, antialias = true, font = "Marlett"})
surface.CreateFont("PlyNameESP_Black", { size = 17, weight = 800, antialias = true, font = "Marlett"})
	--ESP HP Fonts
	CloseCaption_BoldItalic 
	surface.CreateFont("PlyHPESP_Clrd", { size = 15, weight = 800, antialias = true, font = "CloseCaption_BoldItalic "})
	surface.CreateFont("PlyHPESP_Black", { size = 17, weight = 800, antialias = true, font = "CloseCaption_BoldItalic "})
--


SHackmessages = {}
SHackmessages[1] = "// Welcome to our server!"
SHackmessages[2] = "// I am ready to help!"
SHackmessages[3] = "// Please favourite our server. <3"
SHackmessages[4] = "// Please consider donating for exclusive benefits!"
SHackmessages[5] = "// Remember we are here to help!"
SHackmessages[6] = "// We are also human, we may have bad days but we will try to help!"
SHackmessages[7] = "// Whats your favourite type of music?"
SHackmessages[8] = "// You playing on this server motivates us to make our server better!"


local cmdStr = "SHack"

local function OOCchats()
    if GetConVarNumber(cmdStr.."_chat") == 1 then
        LocalPlayer():ConCommand("say "..table.Random(SHackmessages).." " )
end
end

timer.Create("chattimer", 50, 0, OOCchats)


--
	--General Player Info (HP & Name, will be adding Armor) 
--


hook.Add( "HUDPaint", "userESP", function()
	if (GetConVarNumber(cmdStr.."_userESP") == 1) then
	for k,v in pairs ( player.GetAll() ) do
			local plyPos = v:GetPos()
			local pos = ( plyPos + Vector( 0, 0, 90 )):ToScreen()
			local plyName = v:Nick()
			local plyHP = "Health: " .. v:Health()
			local ply = LocalPlayer()
			draw.SimpleTextOutlined( plyName, "PlyNameESP_Clrd", pos.x, pos.y, team.GetColor(v:Team()), 1, 1, 1, Color( 0, 0, 0 ) )
			draw.SimpleTextOutlined( plyName, "PlyNameESP_Black", pos.x, pos.y, Color( 0, 0, 0 ), 1, 1, 1, Color( 0, 0, 0 ) )
			draw.SimpleTextOutlined( plyHP, "PlyHPESP_Clrd", pos.x, pos.y + 15, Color( 10, 255, 10 ), 1, 1, 1, Color( 0, 0, 0 ) )
			draw.SimpleTextOutlined( plyHP, "PlyHPESP_Black", pos.x, pos.y + 15, Color( 0, 0, 0 ), 1, 1, 1, Color( 0, 0, 0 ) )
		end
	end
end)

--
	--Derma Menu starting Function
--

concommand.Add( "+SHMenu", function()

end)



