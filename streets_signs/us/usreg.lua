local usreg = {
	{ "bikelane", "Bike Lane", { white = 2, black = 4 } },
	{ "donotenter", "Do Not Enter", { red = 4, white = 3 } },
	{ "donotstopontracks", "Do Not Stop on Tracks", { white = 3, black = 2 } },
	{ "emergencyhybridbeacon", "Emergency Vehicle Hybrid Beacon", { white = 3, black = 3 } },
	{ "emergencysignal", "Emergency Signal", { white = 3, black = 2 } },
	{ "endschoolspeedlimit", "End School Speed Limit", { white = 3, black = 3 } },
	{ "keepright", "Keep Right Sign", { white = 3, black = 3 } },
	{ "leftongreenarrowonly", "Left on Green Arrow Only", { white = 3, black = 3 } },
	{ "leftturnonly", "Left Turn Only", { white = 3, black = 3 } },
	{ "leftturnsignal", "Left Turn Signal", { white = 3, black = 3 } },
	{ "leftturnyieldongreen", "Left Turn Yield on Green", { white = 3, black = 3, green = 1 } },
	{ "nobicycles", "No Bicycles", { white = 3, black = 2, red = 2 } },
	{ "noleftturn", "No Left Turn", { white = 3, black = 2, red = 2 } },
	{ "noparkingboth", "No Parking (Left/Right)", { white = 3, red = 3 } },
	{ "noparkingleft", "No Parking (Left)", { white = 3, red = 3 } },
	{ "noparkingright", "No Parking (Right)", { white = 3, red = 3 } },
	{ "noped", "No Pedestrians", { white = 3, black = 2, red = 2 } },
	{ "norightturn", "No Right Turn", { white = 3, black = 2, red = 2 } },
	{ "notrucks", "No Trucks", { white = 3, black = 2, red = 2 } },
	{ "noturnonred", "No Turn on Red", { white = 3, black = 2, red = 1 } },
	{ "nouturn", "No U-Turn", { white = 3, black = 2, red = 2 } },
	{ "onewayleft", "One Way (Left)", { white = 3, black = 3 } },
	{ "onewayright", "One Way (Right)", { white = 3, black = 3 } },
	{ "pedhybridbeacon", "Pedestrian Hybrid Beacon", { white = 3, black = 3, red = 1 } },
	{ "rightturnonly", "Right Turn Only", { white = 3, black = 3 } },
	{ "roundaboutchevron", "Roundabout Chevron", { white = 4, black = 4 } },
	{ "schoolspeedlimit20", "School Speed Limit 20", { green = 1, yellow = 1, white = 3, black = 3 } },
	{ "speedlimit50", "Speed Limit 50", { white = 3, black = 3 } },
	{ "stopforped", "Stop Here for Pedestrians", { white = 3, black = 3, red = 1 } },
	{ "stophereonred", "Stop Here on Red", { white = 3, black = 3 } },
	{ "straightonly", "Straight Only", { white = 3, black = 3 } },
	{ "yield", "Yield", { red = 4, white = 3 } },
	{ "yieldtoped", "Yield Here to Pedestrians", { white = 3, black = 2, red = 1 } },
	{ "stop", "Stop", { red = 4, white = 1 } },
}

for k, v in pairs(usreg) do
	streets.register_road_sign({
		name = "sign_us_" .. v[1],
		friendlyname = v[2] .. " Sign",
		tiles = {
			"streets_transparent.png",
			"streets_transparent.png",
			"streets_transparent.png",
			"streets_transparent.png",
			"streets_sign_back.png",
			"streets_sign_us_" .. v[1] .. ".png"
		},
		thickness = 0.01,
		section = "usreg",
		dye_needed = v[3]
	})
end