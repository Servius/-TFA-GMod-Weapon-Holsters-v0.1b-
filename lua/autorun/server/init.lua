local function Plug( )
print("Updated to Weapon Holstering v0.1c")
print("Changelog:")
print("- Version .1B->.1C")
print("- Support for TFA Day of Defeat added.")
print("- Support for Main Pack Pistols added.")
print("Note: Star Wars weapons in the works. -Servius")
end
hook.Add("PlayerInitialSpawn", "Updates", Plug)