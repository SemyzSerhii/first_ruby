# frozen_string_literal: true

Dir['./hw/*rb'].each {|file| require file }

puts 'Enter task number'
task_number = gets.chomp

begin
  send("task_#{task_number}")
rescue StandardError
  puts 'There is no task with number ' + task_number
end
