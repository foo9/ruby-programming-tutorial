# encoding: utf-8

contents = "目次"

chapter1_title = "1章: 数"
chapter1_page = "p. 1"

chapter2_title = "2章: 文字"
chapter2_page = "p. 72"

chapter3_title = "3章: 変数"
chapter3_page = "p. 118"

line_width = 50
half_line_width = line_width / 2

puts contents.center half_line_width
puts chapter1_title.ljust(half_line_width) + capter1_page.rjust(half_line_width)
puts chapter2_title.ljust(half_line_width) + capter2_page.rjust(half_line_width)
puts chapter3_title.ljust(half_line_width) + capter3_page.rjust(half_line_width)

