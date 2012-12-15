#!/usr/bin/env ruby

html_file = "output/index.html"

# Base Config for the Board
tiles = [	"Lumber",
					"Sheep",
					"Grain",
					"Brick",
					"Ore",
					"Brick",
					"Sheep",
					"Desert",
					"Lumber",
					"Grain",
					"Lumber",
					"Grain",
					"Brick",
					"Sheep",
					"Sheep",
					"Ore",
					"Ore",
					"Grain",
					"Lumber"
				]

tile_scores = [	"11",
								"12",
								"9",
								"4",
								"6",
								"5",
								"10",
								"",
								"3",
								"11",
								"4",
								"8",
								"8",
								"10",
								"9",
								"3",
								"5",
								"2",
								"6"
							]

# Randomize the tiles
tiles.shuffle!

# Write the HTML file
html_output = File.open(html_file, 'w')

html_output.write("
<html>
	<head>
		<link rel=\"stylesheet\" type=\"text/css\" href=\"css/board.css\">
		<script type=\"text/javascript\" src=\"js/jquery-1.8.3.min.js\"></script>
		<script type=\"text/javascript\" src=\"js/board.js\"></script>
	</head>
	<body>
		<div class=\"board\">")

tiles.each_index do |tile_index|
	html_output.write("\n<img src=\"img/#{tiles[tile_index]}.png\" class=\"cell#{tile_index + 1}\" tile_score=\"#{tile_scores[tile_index]}\"/>")
end

html_output.write("
		</div>
	</body>
</html>
")

html_output.close