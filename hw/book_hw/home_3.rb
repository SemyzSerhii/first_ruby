# frozen_string_literal: true

def task_4
  p 'що ти хочеш?'.upcase
  p question = gets.chop
  p "що значить:  #{question.to_s.upcase}  ??!! ви звільнені ".upcase

  line = 100
  content = 'Зміст'
  head1 = 'Глава 1: Числа'
  head2 = 'Глава 2: Букви'
  head3 = 'Глава 3: Перемінні'
  page1 = 'page 1'
  page2 = 'page 33'
  page3 = 'page 188'
  p content.center line
  p head1.ljust(line / 2) + page1.rjust(line / 2)
  p head2.ljust(line / 2) + page2.rjust(line / 2)
  p head3.ljust(line / 2) + page3.rjust(line / 2)
end
