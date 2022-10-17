require 'bundler'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'

User.new("julie@julie.com", 35)
User.new("jean@jean.com", 23)
User.new("claude@claude.com", 75)

puts "Salut, tu veux créer un événement ? Cool !"
puts "Commençons. Quel est le nom de l'événement ?"
print "> "
titre = gets.chomp
puts "Super. Quand aura-t-il lieu ?"
print "> "
date = gets.chomp
puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
print "> "
duree = gets.chomp.to_i
puts "Génial. Qui va participer ? Balance leurs e-mails"
print "> "
user = gets.chomp
puts "Super, c'est noté, ton évènement a été créé !"
test = Event.new(date, duree, titre, user.split)
test.display