# [TFA] Weapon Holstering Repository #

Hello and welcome to the TFA WH Project! We aim to provide weapon holstering support to all weapons of popular importance currently on the TFA Base.
If you would like to contribute your own work, add support for your own weapons, or add support for your favorite pack feel free to fork the project and start working on weapons we currently do not already support. If you are new to git
feel free to read this somewhat helpful guide here: 
https://docs.google.com/document/d/1o599ftTRcHWWmDRIibNfC5NcJJF1YTY9IizqnxzgM7U/edit?usp=sharing

You can also watch a video found here: 
https://www.youtube.com/watch?v=72a28tleThY&t=484s

Feel free to contact the people listed here for help: 
- [Curry](http://steamcommunity.com/id/CurryIsCurry/): Project Creator
- [Servius](http://steamcommunity.com/profiles/76561198036188853/): Project Contributor & Repository Manager. 

#Written Guidance#
Some basic Git commands are:
```
git status
git add
git commit -m "what you did as a message here"
git push
```

Here is a simple template to get you started: 
```lua
weaponsinfoss["weapon_name"]={}
weaponsinfoss["weapon_name"].Model="world/model/path/for/gun"
weaponsinfoss["weapon_name"].Bone="ValveBiped.Bip01_Spine2"
weaponsinfoss["weapon_name"].BoneOffset={Vector(0,0,0),Angle(0,0,0)} 
-- change the values inside of the parintheses. The vector changes the actual location of the prop. Angle changes the rotation of the weapon. 
-- this can take some time so be patient and dont be scared to ask for help. 
```

##Rules: 
- You are not to sell or monetize the work done here. 
- You may not claim this work as your own as defined in our license. 
- You are allowed to modify this addon as long as it doesnt conflict and you understand that you must give us credit for the original source content. 

These rules are subject to change overtime. 