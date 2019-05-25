blacklists = [Blacklist.new(),Blacklist.new()]

for b in blacklists do
  b.save!
end

bl1 = Blacklist.find(1)
bl2 = Blacklist.find(2)

admin_profiles = [AdminProfile.new(name: 'Felipe', email: 'filorca@miuandes.cl', password: 'ADsd765432', lastname: 'Lorca', location: 'Chile'), AdminProfile.new(name: 'Juan', email: 'jgandres@miuandes.cl', password: 'AD765432', lastname: 'Perez', location: 'Peru'), AdminProfile.new(name: 'Carlos', email: 'carlosvera@miuandes.cl', password: 'Carlitos1234', lastname: 'Tevez', location: 'Espana'), AdminProfile.new(name: 'Leo', email: 'golador@miuandes.cl', password: 'Cristiano456', lastname: 'Messi', location: 'Rusia')]


for adm in admin_profiles do
	adm.save!
end

su1 = AdminProfile.find(1)
su2 = AdminProfile.find(2)

super_admins = [SuperAdmin.new(admin_profile:su1), SuperAdmin.new(admin_profile:su2)]

for su in super_admins do
	su.save!
end


ad1 = AdminProfile.find(3)
ad2 = AdminProfile.find(4)
su1 = SuperAdmin.find(1)
su2 = SuperAdmin.find(2)

admins = [Admin.new(admin_profile:ad1, super_admin:su1),Admin.new(admin_profile:ad2, super_admin:su2)]

for a in admins do
	a.save!
end

a1 = Admin.find(1)
a2 = Admin.find(2)

users = [User.new(picture: 'foto.png', location: 'Sudamerica', name: 'Felipe', biography: 'hola', password: '12341233', email: 'filorca@miuandes.cl', city: 'Ovalle', country: 'Chile', lastname: 'Lorca', super_admin:su1 , admin:a2, blacklist:bl1) , User.new(picture: 'foto.png', location: 'Sudamerica', name: 'Juanito', biography: 'oli soy juan', password: '12341233', email: 'JP@miuandes.cl', city: 'Rancagua', country: 'Chile', lastname: 'Garcia', blacklist:bl2, super_admin:su2, admin:a1), User.new(picture: 'foto7.png', location: 'Europa', name: 'Maria', biography: 'salu2', password: '12341233', email: 'mjperez@miuandes.cl', city: 'Madrid', country: 'Espana', lastname: 'Perez', blacklist:bl1, super_admin:su1, admin:a1)]

for u in users do
	u.save!
end


for u in users do
	w = Wall.new(user:u)
	w.save!
end

w = Wall.find(1)
w3 = Wall.find(3)
u = User.find(1)
u3 = User.find(3)

posts = [Post.new(gps: '234,345' , title: 'Reclamo movistar' , description: 'No tengo señal hace mas de 20 dias y movistar no me da una solucion........',location: '1000000,200000',country: ' Chile', status: 'activo', files: 'foto4.png', city: 'Santiago', state:'RM', wall:w , user:u, super_admin:su1, admin:a2), Post.new(gps: '254,345' , title: 'Reclamo Iphone' ,location: '1000000,200000',country: ' Chile', status: 'activo', files: 'foto4.png', state:'RM', city: 'Santiago', description: 'Mal servicio, no responden, fui a cambiar la pantalla de mi iphone X y no me quisieron atender', user:u3, super_admin:su2, admin:a2, wall:w3)]

for p in posts do
	p.save!
end


p = Post.find(1)

comments = [Comment.new(text: 'Ohhh brigido, vomistar no llego a tiempo y funciona como el champiñon jiji, entel me dio fibra optica y clavistel jejejjee patata ', link: 'fd.com', picture: 'foto10.png', post:p , user:u3)]
