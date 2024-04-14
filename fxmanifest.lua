fx_version "cerulean"
game "gta5"
lua54 "yes"

author "Pixeloza"

shared_script '@ox_lib/init.lua'
client_script "client.lua"
server_script "server.lua"
shared_script "config.lua"

ui_page "html/index.html"

files {
    "html/index.html",
    "html/style.css",
    "html/script.js"
}

exports {
    "OpenJobCenter"
}
