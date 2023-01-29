----------------------------------------
------     Paket 3. CITIBINATE     -----
----------------------------------------

world1 = "SKY01SORENTO" -- CAPSLOCK
world2 = "SKYSORENTO" -- CAPSLOCK
world3 = "SKYSORENTO010"
world4 = "SAM01SHINPO"
world5 = "SAMSHINPO"
world6 = "SAMSHINPO010"
world7 = "KULL01KENKO"
world8 = "KULLKENKO"
world9 = "KULLKENKO010"

paket = 12 	--bot ke
urlWeb = "https://discord.com/api/webhooks/994161674586169434/3hha4hC0_5OXJeE2gxnIJnFR1U-0xmnySlrk0WcApTPA0zMfb3jR5xiper35MjV3HSP5"
idMsg = 1043776628536389692

whDompet = "https://discord.com/api/webhooks/1045351812141699073/5XHH_-2rnkmYWSyiZhz0Mx2QUzPssXwzvlKFyX--HIbojiAlZG_4QR_WFwVZTY2ohQ6Y"
idMsgDompet = 1045352738315309057

----------------------------------------
----------------------------------------
----------------------------------------

idSeed = 4585
idTree = 4584

dPlace = 200
jPunch = 3

dPanen1 = 230
dPanen2 = 250
dTanem = 230

xBreak = 2
yBreak = 51
xDrop = 2
yDrop = 48

------------------------
---- Config Webhook ----
------------------------
function getDataWh()
	nBot = "GUEST" --getBot().name
	sleep(100)
	lvBot = getBot().level
	sleep(100)
	cWorld = getBot().world
	sleep(100)
	gBot = findItem(112)
	sleep(100)
	sWl = scan(242)
end

function inputDataWH()
	namaBot = ":farmer: : "..nBot
	sleep(100)
	levelBot = ":tools: : level "..lvBot
	sleep(100)
	currentWorld = ":earth_asia: : "..cWorld
	sleep(100)
	gemsBot = ":gem: : "..gBot
	sleep(100)
	scanWL = ":dollar: : "..sWl
end

function statusBot()
	if getBot().status == "online" then
		statBot = ":green_circle: : **ONLINE**"
	elseif getBot().status == "offline" then
		statBot = ":red_circle: : **OFFLINE**"
	elseif getBot().status == "suspended" then
		statBot = ":no_entry: : **SUSPENDED**"
	elseif getBot().status == "login fail" then
		statBot = ":warning: : **Login Fail**"
	end
end

function laporan()
	getDataWh()
	sleep(300)
	inputDataWH()
	sleep(200)
	statusBot()
	sleep(200)
	wh = {}
	sleep(500)
	wh.url = urlWeb.."/messages/"..idMsg
	sleep(500)
	wh.embed = [[{
		"title": "ROTASI PAKET ]]..paket..[[ : ]]..statusRotasi..[[",
		"color": "10223871",
		"description": "]]..namaBot..[[\n]]..statBot..[[\n]]..levelBot..[[\n]]..currentWorld..[[\n]]..gemsBot..[[\n]]..scanWL..[[",
		"footer" : {"text": "]]..(os.date("!%a %b %d, %Y at %I:%M %p", os.time() + 7 * 60 * 60))..[["}
	}]]
	sleep(500)
	wh.edit = true
	sleep(500)
	webhook(wh)
end

function laporanDompet()
	scanDompet = scan(242)
	sleep(200)
	wh = {}
	sleep(500)
	wh.url = whDompet.."/messages/"..idMsgDompet
	sleep(500)
	wh.embed = [[{
		"title": "WORLD : CITIBINATE",
		"color": "10223871",
		"description": "Total WL : ]]..scanDompet..[[",
		"footer" : {"text": "]]..(os.date("!%a %b %d, %Y at %I:%M %p", os.time() + 7 * 60 * 60))..[["}
	}]]
	sleep(500)
	wh.edit = true
	sleep(500)
	webhook(wh)
end

---------------------------
---- Config Status Bot ----
---------------------------
function cekStatus()
	if getBot().status == "offline" then
		mOffline()
		sleep(1000)
		laporan()
		sleep(1000)
		reconnect()
		sleep(500)
	elseif getBot().status == "suspended" then
		laporan()
		sleep(1000)
		mSuspend()
		sleep(1000)
	elseif getBot().status == "login fail" then
		mLoginFail()
		sleep(1000)
		laporan()
		sleep(1000)
		reconnect()
		sleep(500)
	end
end

function mOffline()
	sleep(200)
	pesan = "Babu "..paket.. " Offline"
	sleep(200)
	wh = {}
	sleep(200)
	wh.username = "Kang Patroli"
	sleep(200)
	wh.url = "https://discord.com/api/webhooks/1016298560725196880/XPfzXBG_Dn62XCzOGXX2BQ4w3boL0-sMbpkcjIPqQYXJR17wAk5bbHov0GXSzZF43dXp"
	sleep(200)
	wh.content = pesan
	sleep(200)
	wh.edit = false
	sleep(200)
	webhook(wh)
	sleep(200)
end

function mSuspend()
	sleep(200)
	pesan = "Babu "..paket.. " Suspend"
	sleep(200)
	wh = {}
	sleep(200)
	wh.username = "Kang Patroli"
	sleep(200)
	wh.url = "https://discord.com/api/webhooks/1016298560725196880/XPfzXBG_Dn62XCzOGXX2BQ4w3boL0-sMbpkcjIPqQYXJR17wAk5bbHov0GXSzZF43dXp"
	sleep(200)
	wh.content = pesan
	sleep(200)
	wh.edit = false
	sleep(200)
	webhook(wh)
	sleep(200)
	removeBot(getBot().name)
	sleep(500)
end

function mOnline()
	sleep(200)
	pesan = "Babu "..paket.. " Online"
	sleep(200)
	wh = {}
	sleep(200)
	wh.username = "Kang Patroli"
	sleep(200)
	wh.url = "https://discord.com/api/webhooks/1016298560725196880/XPfzXBG_Dn62XCzOGXX2BQ4w3boL0-sMbpkcjIPqQYXJR17wAk5bbHov0GXSzZF43dXp"
	sleep(200)
	wh.content = pesan
	sleep(200)
	wh.edit = false
	sleep(200)
	webhook(wh)
	sleep(500)
end

function mLoginFail()
	sleep(200)
	pesan = "Babu "..paket.. " Login Fail"
	sleep(200)
	wh = {}
	wh.username = "Kang Patroli"
	sleep(200)
	wh.url = "https://discord.com/api/webhooks/1016298560725196880/XPfzXBG_Dn62XCzOGXX2BQ4w3boL0-sMbpkcjIPqQYXJR17wAk5bbHov0GXSzZF43dXp"
	sleep(200)
	wh.content = pesan
	sleep(200)
	wh.edit = false
	sleep(200)
	webhook(wh)
	sleep(200)
end

function reconnect()
	while getBot().status ~= "online" do
		sleep(5000)
		connect()
		sleep(5000)
		if getBot().status == "online" then
			sleep(300)
			mOnline()
			sleep(500)
			laporan()
			sleep(500)
			break
		end
		if getBot().status == "suspended" then
			laporan()
			sleep(500)
			mSuspend()
			sleep(500)
			break
		end
	end
end

------------------------
---- Config Rotasi ----
------------------------

function worldInfo()
	worldName = getBot().world
	sleep(300)
	for _,tile in pairs(getTiles()) do
		if tile.fg == 6 then
			mainDoorX = tile.x
			mainDoorY = tile.y
		end
	end
	sleep(300)
end

function scan(id)
   count = 0
   for _, obj in pairs(getObjects()) do
      if obj.id == id then
         count = count + obj.count
      end
   end
   return count
end

function scanReady(id)
   count = 0
   for _, tile in pairs(getTiles()) do
      if tile.fg == id and tile.ready  == true then
         count = count + 1
      end
   end
   return count
end

function panen()
	say("Mau Panen Dulu Gaes")
	sleep(1000)
	collectSet(true,2)
	sleep(200)
	for _, tile in pairs(getTiles()) do
		if tile.fg == 4585 and getTile(tile.x,tile.y).ready then
			findPath(tile.x,tile.y)
			sleep(dPanen1)
			while getTile(tile.x,tile.y).ready do
				if getBot().status ~= "online" then
					cekStatus()
					sleep(200)
				end
				if math.floor(getBot().x/32) == mainDoorX and math.floor(getBot().y/32) == mainDoorY then
					sendPacket(3,"action|join_request\nname|"..worldName.."|SA07VE00\ninvitedWorld|0")
					sleep(2000)
					findPath(tile.x,tile.y)
					sleep(200)
				end
				punch(0,0)
				sleep(dPanen2)
			end
			if findItem(idTree) > 180 then
				break
			end
		end
	end
end

function ambilFloating()
	say("Mau Collect Floating Dulu Gaes")
	sleep(1000)
	collectSet(true,2)
	sleep(200)
	for _, object in pairs(getObjects()) do
		if object.id == 4584 then
			if getBot().status ~= "online" then
				cekStatus()
				sleep(200)
			end
			if math.floor(getBot().x/32) == mainDoorX and math.floor(getBot().y/32) == mainDoorY then
				sendPacket(3,"action|join_request\nname|"..worldName.."|SA07VE00\ninvitedWorld|0")
				sleep(2000)
				findPath(object.x,object.y)
				sleep(200)
			end
			findPath(object.x,object.y)
			sleep(250)
			if findItem(idTree) > 180 then
				break
			end
		end
	end
end

function tanem()
	say("Mau Nanem Dulu Gaes")
	sleep(1000)
	collectSet(true,2)
	sleep(200)
	for _, tile in pairs(getTiles()) do
		if tile.fg == 0 and getTile(tile.x,tile.y+1).fg == 2 then
			if getBot().status ~= "online" then
				cekStatus()
				sleep(200)
			end
			if math.floor(getBot().x/32) == mainDoorX and math.floor(getBot().y/32) == mainDoorY then
				sendPacket(3,"action|join_request\nname|"..worldName.."|SA07VE00\ninvitedWorld|0")
				sleep(2000)
			end
			findPath(tile.x,tile.y)
			sleep(dTanem)
			place(idSeed,0,0)
			sleep(dTanem)
			if findItem(idSeed) < 1 then
				break
			end
		end
	end
end

function pnb()
	dPunch1 = 170
	sleep(100)
	dPunch2 = 190
	sleep(100)
	typePNB = math.random(1,3)
	sleep(150)
	if typePNB == 1 then
		local xBreak1 = 2
		local yBreak1 = 51
		sleep(100)
		collectSet(true,3)
		sleep(200)
		findPath(xBreak1,yBreak1)
		sleep(5000)
		say("PNB Bawah Asik")
		sleep(1000)
		repeat
			if getBot().status ~= "online" then
				cekStatus()
				sleep(200)
			end
			if math.floor(getBot().x/32) == mainDoorX and math.floor(getBot().y/32) == mainDoorY then
				sendPacket(3,"action|join_request\nname|"..worldName.."|SA07VE00\ninvitedWorld|0")
				sleep(2000)
				findPath(xBreak1,yBreak1)
				sleep(7000)
			end
			place(idTree,1,0)
			sleep(230)
			place(idTree,0,-1)
			sleep(230)
			place(idTree,-1,0)
			sleep(230)
			for i=1, jPunch do
				punch(1,0)
				sleep(dPunch1)
				punch(0,-1)
				sleep(dPunch2)
				punch(-1,0)
				sleep(dPunch1)
			end
			if findItem(idSeed) > 180 then
				break
			end
		until(findItem(idTree) < 7)
	elseif typePNB == 2 then
		local xBreak2 = 97
		local yBreak2 = 27
		sleep(100)
		collectSet(true,3)
		sleep(200)
		findPath(xBreak2,yBreak2)
		sleep(5000)
		say("PNB Kanan Asik")
		sleep(1000)
		repeat
			if getBot().status ~= "online" then
				cekStatus()
				sleep(200)
			end
			if math.floor(getBot().x/32) == mainDoorX and math.floor(getBot().y/32) == mainDoorY then
				sendPacket(3,"action|join_request\nname|"..worldName.."|SA07VE00\ninvitedWorld|0")
				sleep(2000)
				findPath(xBreak2,yBreak2)
				sleep(5000)
			end
			place(idTree,2,1)
			sleep(230)
			place(idTree,2,0)
			sleep(230)
			place(idTree,2,-1)
			sleep(230)
			for i=1, jPunch do
				punch(2,1)
				sleep(dPunch1)
				punch(2,0)
				sleep(dPunch2)
				punch(2,-1)
				sleep(dPunch1)
			end
			if findItem(idSeed) > 180 then
				break
			end
		until(findItem(idTree) < 7)
	elseif typePNB == 3 then
		local xBreak3 = 2
		local yBreak3 = 35
		sleep(100)
		collectSet(true,3)
		sleep(200)
		findPath(xBreak3,yBreak3)
		sleep(5000)
		say("PNB Kiri Asik")
		sleep(1000)
		repeat
			if getBot().status ~= "online" then
				cekStatus()
				sleep(200)
			end
			if math.floor(getBot().x/32) == mainDoorX and math.floor(getBot().y/32) == mainDoorY then
				sendPacket(3,"action|join_request\nname|"..worldName.."|SA07VE00\ninvitedWorld|0")
				sleep(2000)
				findPath(xBreak3,yBreak3)
				sleep(5000)
			end
			place(idTree,-2,1)
			sleep(230)
			place(idTree,-2,0)
			sleep(230)
			place(idTree,-2,-1)
			sleep(230)
			for i=1, jPunch do
				punch(-2,1)
				sleep(dPunch1)
				punch(-2,0)
				sleep(dPunch2)
				punch(-2,-1)
				sleep(dPunch1)
			end
			if findItem(idSeed) > 180 then
				break
			end
		until(findItem(idTree) < 7)
	end
end

function dropSeed()
	if getBot().status ~= "online" then
		cekStatus()
		sleep(200)
	end
	if math.floor(getBot().x/32) == mainDoorX and math.floor(getBot().y/32) == mainDoorY then
		sendPacket(3,"action|join_request\nname|"..worldName.."|SA07VE00\ninvitedWorld|0")
		sleep(2000)
	end
	say("Drop Sisa Seed Dulu")
	sleep(1000)
	collectSet(false,2)
	sleep(200)
	findPath(xDrop,yDrop)
	sleep(5000)
	drop(idSeed)
	sleep(1000)
	if findItem(242) > 0 then
		drop(242)
		sleep(1000)
	end
	findPath(xBreak,yBreak)
	sleep(1500)
	collectSet(true,2)
	sleep(700)
end

function trash()
	trashList = {5028, 5034, 5038, 5040, 5042, 5044, 5032, 5036, 7162, 5034, 7164, 5742, 5746}
	for i, trash in ipairs(trashList) do
		if findItem(trash) > 150 then
			sendPacket(2,"action|trash\n|itemID|"..trash)
			sleep(4500)
			sendPacket(2,"action|dialog_return\ndialog_name|trash_item\nitemID|"..trash.."|\ncount|"..findItem(trash))
			sleep(4500)
		end
	end
	if getBot().status ~= "online" then
		cekStatus()
		sleep(200)
	end
	if math.floor(getBot().x/32) == mainDoorX and math.floor(getBot().y/32) == mainDoorY then
		sendPacket(3,"action|join_request\nname|"..worldName.."|SA07VE00\ninvitedWorld|0")
		sleep(2000)
	end
end

function buyPack()
	if getBot().status ~= "online" then
		cekStatus()
		sleep(200)
	end
	if math.floor(getBot().x/32) == mainDoorX and math.floor(getBot().y/32) == mainDoorY then
		sendPacket(3,"action|join_request\nname|"..worldName.."|SA07VE00\ninvitedWorld|0")
		sleep(2000)
	end
	collectSet(false,2)
	sleep(200)
	while findItem(112) >= 2000 do
		sendPacket(2,"action|buy\nitem|itempack")
		sleep(1000)
		sendPacket(2,"action|buy\nitem|world_lock")
		sleep(1500)
	end
	findPath(xDrop,yDrop)
	sleep(5000)
	say("Beli Wl Dulu")
	sleep(1000)
	drop(242)
	sleep(1000)
	if scan(242) >= 10 then
		findPath(xDrop,yDrop)
		sleep(1500)
		collectSet(true,2)
		sleep(700)
		collectSet(false,2)
		sleep(500)
		drop(idSeed)
		sleep(1000)
		gasSavePack()
		sleep(500)
	end
	findPath(xBreak,yBreak)
	sleep(1000)
	collectSet(true, 2)
	sleep(500)
end

function gasSavePack()
	sendPacket(3,"action|join_request\nname|CITIBINATE|MNAFIM007\ninvitedWorld|0")
	sleep(6000)
	saveTrue = true
	sleep(200)
	while saveTrue do
		if getBot().world == "CITIBINATE" then
			sleep(200)
			saveTrue = false
			sleep(200)
			say("true")
		else
			sendPacket(3,"action|join_request\nname|CITIBINATE|MNAFIM007\ninvitedWorld|0")
			sleep(6000)
		end
	end
	sleep(500)
	worldInfo()
	sleep(500)
	for _, tile in pairs(getTiles()) do
		if math.floor(getBot().x/32) == mainDoorX and math.floor(getBot().y/32) == mainDoorY then
			sendPacket(3,"action|join_request\nname|CITIBINATE|MNAFIM007\ninvitedWorld|0")
			sleep(2000)
		end
	end
	sleep(150)
	if getBot().status ~= "online" then
		cekStatus()
		sleep(200)
	end
	sleep(1000)
	collectSet(false,2)
	sleep(500)
	xPack = math.floor(getBot().x/32)
	sleep(500)
	xPackOri = 82
	sleep(500)
	yPack = math.floor(getBot().y/32)
	sleep(500)
	xPackDrop = xPack - 2
	sleep(500)
	findPath(xPackDrop,yPack)
	sleep(1500)
	drop(242)
	sleep(1000)
	laporanDompet()
	sleep(2000)
	sendPacket(3,"action|join_request\nname|"..warpWorld.."\ninvitedWorld|0")
	sleep(7000)
	if getBot().world == warpWorld then
		sleep(500)
		worldInfo()
		sleep(1000)
		readyHarvest = 100
		sleep(500)
	else
		oke = true
		sleep(200)
		sendPacket(3,"action|join_request\nname|"..warpWorld.."\ninvitedWorld|0")
		sleep(7000)
		while oke do
			if getBot().world == warpWorld then
				sleep(500)
				worldInfo()
				sleep(1000)
				readyHarvest = 100
				sleep(500)
				oke = false
			else
				sendPacket(3,"action|join_request\nname|"..warpWorld.."\ninvitedWorld|0")
				sleep(7000)
			end
		end
	end
end

---------------------------
----- URUTAN EKSEKUSI -----
---------------------------

collectSet(false,2)
sleep(500)

worldKe = 1
sleep(500)

while true do
	-- Cek Urutan World
	if worldKe == 1 then 
		warpWorld = world1
		sleep(200)
		statusRotasi = "(1/9)"
		sleep(200)
	elseif worldKe == 2 then
		warpWorld = world2
		sleep(200)
		statusRotasi = "(2/9)"
		sleep(200)
	elseif worldKe == 3 then
		warpWorld = world3
		sleep(200)
		statusRotasi = "(3/9)"
		sleep(200)
	elseif worldKe == 4 then
		warpWorld = world4
		sleep(200)
		statusRotasi = "(4/9)"
		sleep(200)
	elseif worldKe == 5 then
		warpWorld = world5
		sleep(200)
		statusRotasi = "(5/9)"
		sleep(200)
	elseif worldKe == 6 then
		warpWorld = world6
		sleep(200)
		statusRotasi = "(6/9)"
		sleep(200)
	elseif worldKe == 7 then
		warpWorld = world7
		sleep(200)
		statusRotasi = "(7/9)"
		sleep(200)
	elseif worldKe == 8 then
		warpWorld = world8
		sleep(200)
		statusRotasi = "(8/9)"
		sleep(200)
	elseif worldKe == 9 then
		warpWorld = world9
		sleep(200)
		statusRotasi = "(9/9)"
		sleep(200)
	end
	
	sendPacket(3,"action|join_request\nname|"..warpWorld.."\ninvitedWorld|0") -- Warp ke Urutan world
	sleep(7000)
	if getBot().world == warpWorld then
		sleep(200)
	else
		oke = true
		sleep(200)
		sendPacket(3,"action|join_request\nname|"..warpWorld.."\ninvitedWorld|0")
		sleep(7000)
		if getBot().status ~= "online" then
			cekStatus()
			sleep(200)
		end
		sleep(150)
		while oke do
			if getBot().world == warpWorld then
				sleep(200)
				oke = false
				sleep(150)
			else
				sendPacket(3,"action|join_request\nname|"..warpWorld.."\ninvitedWorld|0")
				sleep(6000)
			end
		end
		sleep(150)
	end
	sleep(1000)
	worldInfo()
	sleep(1000)
	laporan()
	sleep(1000)

	say("Gasken Car Cuan Buat Ayang")
	sleep(1000)

	if findItem(112) >= 2000 or findItem(242) >= 1 or scan(242) >= 10 then -- cek gems untuk beli pack
		buyPack() 
		sleep(1000)
	end

	sleep(500)
	collectSet(true,2)
	sleep(500)

	if findItem(idSeed) > 50 then --drop sisa seed
		collectSet(false,2)
		sleep(500)
		findPath(xDrop,yDrop)
		sleep(1500)
		drop(idSeed)
		sleep(4500)
		findPath(xBreak,yBreak)
		sleep(1500)
		collectSet(true,2)
		sleep(200)
	end

	if findItem(idTree) > 50 then --break sisa block di backpack
		collectSet(true,2)
		sleep(200)
		say("Gasken Break Sisa Block di Backpack")
		sleep(1000)
		pnb()
		sleep(1000)
	else
		sleep(200)
	end

	if scan(4584) > 20 then  -- break floating block sisahan di world farm
		breakFloating = true
		sleep(200)
		while breakFloating do
			if packKe == stopRotasi then
				break
				sleep(500)
			end
			sleep(150)
			ambilFloating()
			sleep(500)
			pnb()
			sleep(500)
			tanem()
			sleep(500)
			dropSeed()
			sleep(500)
			trash()
			sleep(500)
			laporan()
			sleep(1000)
			if findItem(112) >= 2000 or findItem(242) >= 1 or scan(242) >= 10 then -- cek gems untuk beli pack
				buyPack() 
				sleep(1000)
			end
			if scan(4584) < 100 then
				breakFloating = false
				sleep(500)
			end
			if findItem(242) > 0 then
				collectSet(false, 2)
				sleep(300)
				findPath(xDrop,yDrop)
				sleep(1000)
				drop(242)
				sleep(1000)
				findPath(xBreak,yBreak)
				sleep(1500)
				collectSet(true,2)
				sleep(200)
			end
		end
	end

	sleep(500)
	readyHarvest = scanReady(idSeed)
	sleep(500)
	while (readyHarvest > 1) do
		panen()
		sleep(500)
		pnb()
		sleep(500)
		tanem()
		sleep(500)
		dropSeed()
		sleep(500)
		trash()
		sleep(500)
		laporan()
		sleep(1000)
		if findItem(112) >= 2000 or findItem(242) >= 1 or scan(242) >= 10 then -- cek gems untuk beli pack
			buyPack() 
			sleep(1000)
		end
		if findItem(242) > 0 then
				collectSet(false, 2)
				sleep(300)
				findPath(xDrop,yDrop)
				sleep(1000)
				drop(242)
				sleep(1000)
				findPath(xBreak,yBreak)
				sleep(1500)
				collectSet(true,2)
				sleep(200)
		end
		sleep(200)
		readyHarvest = scanReady(idSeed)
		sleep(200)
	end
	sleep(500)
	if scan(242) >= 1 then
		sendPacket(3,"action|join_request\nname|"..worldName.."|SA07VE00\ninvitedWorld|0")
		sleep(2000)
		if getBot().status ~= "online" then
			cekStatus()
			sleep(200)
		end
		if math.floor(getBot().x/32) == mainDoorX and math.floor(getBot().y/32) == mainDoorY then
			sendPacket(3,"action|join_request\nname|"..worldName.."|SA07VE00\ninvitedWorld|0")
			sleep(2000)
		end
		findPath(xDrop,yDrop)
		sleep(1500)
		collectSet(true,2)
		sleep(700)
		collectSet(false,2)
		sleep(500)
		drop(idSeed)
		sleep(1000)
		gasSavePack()
		sleep(500)
	end
	sleep(1000)
	laporan()
	sleep(7000)
	worldKe = worldKe+1
	sleep(400)
	if worldKe == 10 then 
		worldKe = 1
		sleep(400)
	end
	sleep(500)
end