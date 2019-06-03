# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
blacklists = [Blacklist.new(),Blacklist.new()]

for b in blacklists do
  b.save!
end

bl1 = Blacklist.find(1)
bl2 = Blacklist.find(2)


users = [User.new(location: 'Sudamerica', name: 'Felipe', biography: 'hola', password: '123456', email: 'fi1@miuandes.cl', city: 'Ovalle', country: 'Chile', lastname: 'Lorca', sadmin:true, blacklist:bl1) , User.new( location: 'Sudamerica', name: 'Juanito', biography: 'oli soy juan', password: '12341233', email: 'JP@miuandes.cl', city: 'Rancagua', country: 'Chile', lastname: 'Garcia', blacklist:bl2, sadmin:true), User.new( location: 'Europa', name: 'Maria', biography: 'salu2', password: '12341233', email: 'mjperez@miuandes.cl', city: 'Madrid', country: 'Espana', lastname: 'Perez', blacklist:bl1, sadmin:true)]

for u in users do
	u.save!
end

u = User.find(1)
u3 = User.find(3)

posts = [Post.new(title: 'Reclamo movistar' , description: 'No tengo señal hace mas de 20 dias y movistar no me da una solucion........',location: '1000000,200000',country: ' Chile', state: true, city: 'Santiago',user:u), Post.new( title: 'Reclamo Iphone' ,location: '1000000,200000',country: ' Chile', state: true,city: 'Santiago', description: 'Mal servicio, no responden, fui a cambiar la pantalla de mi iphone X y no me quisieron atender', user:u3)]

for p in posts do
	p.save!
end


p = Post.find(1)

comments = [Comment.new(text: 'Ohhh brigido, vomistar no llego a tiempo y funciona como el champiñon jiji, entel me dio fibra optica y clavistel jejejjee patata ', link: 'fd.com', picture: 'foto10.png', post:p , user:u3)]

for c in comments do
	c.save!
end
