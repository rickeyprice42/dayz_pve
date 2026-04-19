class CfgPatches
{
	class Grimhold
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] =
		{
			"DZ_Scripts"
		};
	};
};

class CfgMods
{
	class Grimhold
	{
		dir = "Grimhold";
		picture = "";
		action = "";
		hideName = 0;
		hidePicture = 1;
		name = "Grimhold";
		credits = "Grimhold server";
		author = "Grimhold";
		authorID = "0";
		version = "0.1.0";
		extra = 0;
		type = "mod";
		dependencies[] =
		{
			"Game",
			"World",
			"Mission"
		};

		class defs
		{
			class gameScriptModule
			{
				value = "";
				files[] =
				{
					"Grimhold/Scripts/3_Game"
				};
			};
		};
	};
};
