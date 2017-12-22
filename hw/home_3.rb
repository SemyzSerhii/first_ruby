p "що ти хочеш?".upcase
p question = gets.chop
p "що значить:  #{question.to_s.upcase}  ??!! ви звільнені ".upcase


line = 100
content = 'Зміст'
head_1 = 'Глава 1: Числа'
head_2 = 'Глава 2: Букви'
head_3 = 'Глава 3: Перемінні'
page_1 = 'page 1'
page_2 = 'page 33'
page_3 = 'page 188'
p content.center line
p head_1.ljust(line / 2) + page_1.rjust(line / 2)
p head_2.ljust(line / 2) + page_2.rjust(line / 2)
p head_3.ljust(line / 2) + page_3.rjust(line / 2)

