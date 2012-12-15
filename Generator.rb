#!/usr/bin/env ruby

html_file = "index.html"
css_file = "board.css"

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

# Randomize the tiles
tiles.shuffle!
# Write the HTML file
html_output = File.open(html_file, 'w')
html_output.write("
										<html>
											<head>
												<link rel=\"stylesheet\" type=\"text/css\" href=\"board.css\">
											</head>
											<body>
												<div class=\"board\">
									")
tiles.each_index do |tile_index|
	html_output.write("<img src=\"#{tiles[tile_index]}.png\" class=\"cell#{tile_index + 1}\"/>")
end
html_output.write("
										</div>
										</body>
										</html>
									")
html_output.close

css_output = File.open(css_file, 'w')
css_output.write("
										.board {
											margin: 100px auto 100px auto;
											width: 1000px;
										}

										img {
											width: 200px;
											height: 200px;
											border: 0px;
											margin: -50px 0px 0px 0px;
											float: left;
										}

										.cell1 {
											margin-left: 200px;
										}

										.cell4 {
											margin-left: 100px;
											clear: both;
										}

										.cell8 {
											clear: both;
										}

										.cell13 {
											margin-left: 100px;
											clear: both;
										}

										.cell17 {
											margin-left: 200px;
											clear: both;
										}
								")