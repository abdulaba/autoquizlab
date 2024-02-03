puts "Creando Maestros"
puts "--------------------------"
Institution.destroy_all
Student.destroy_all
Teacher.destroy_all
Subject.destroy_all

hispano = Institution.create!(email: "hispano@gmail.com", password: "123456", name: "Hispano Americano de Leon", phone_number: "+1524777326424", address: "Blvd Vasco de Quiroga #235, Leon, Gto, Mexico")
britanico = Institution.create!(email: "britanico@gmail.com", password: "123456", name: "Colegio Britanico", phone_number: "+1524777326425", address: "Av universidad #1235, Campestre, Leon, Guanajuato, Mexico")
albatros = Institution.create!(email: "albatros@gmail.com", password: "123456", name: "Albatros Bilingual School", phone_number: "+1524777326426", address: "Blvd Paseo de la Reforma #222, Ciudad de Mexico, Mexico")
reina = Institution.create!(email: "reina@gmail.com", password: "123456", name: "Colegio Reina Isabel", phone_number: "+1524777326426", address: "Calle Sacramento #170, Fracc. Las Palmas, C.P. 22106, Tijuana B.C.")
cnh = Institution.create!(email: "cnh@gmail.com", password: "123456", name: "Colegio Niños Héroes", phone_number: "+1524777326426", address: "De Las Hojas 16602, Las Huertas 3ra Sección 22115 Tijuana, Península de Baja California, México")
cecc = Institution.create!(email: "cecc@gmail.com", password: "123456", name: "Centro de Estudio en Ciencias de la Comunicacion", phone_number: "+1524777326426", address: "C. Valle 12, Jardines del Pedregal, Álvaro Obregón, 01900 Ciudad de México, CDMX")




puts "Creando Alumnos"
puts "---------------------------"
Student.create!(email: "ticzel@gmail.com", password: "123456", institution: cecc, name: "Ruth Zavala")
Student.create!(email: "isabelo@gmail.com", password: "123456", institution: cecc, name: "Isabel Olmos")
Student.create!(email: "lucian@gmail.com", password: "123456", institution: cecc, name: "Lucia Natalia")
Student.create!(email: "robertop@gmail.com", password: "123456", institution: cecc, name: "Roberto Piñon")
Student.create!(email: "dantea@gmail.com", password: "123456", institution: cecc, name: "Dante Alizuri")
Student.create!(email: "lesliet@gmail.com", password: "123456", institution: cecc, name: "Leslie Torres")
Student.create!(email: "abrilg@gmail.com", password: "123456", institution: cecc, name: "Abril Gurza")
Student.create!(email: "marianas@gmail.com", password: "123456", institution: cecc, name: "Mariana Soto")
Student.create!(email: "brendaf@gmail.com", password: "123456", institution: cecc, name: "Brenda Figueroa")
Student.create!(email: "joans@gmail.com", password: "123456", institution: cecc, name: "Joan Sebastian")

Student.create!(email: "federicar@gmail.com", password: "123456", institution: reina, name: "Federica Rubio")
Student.create!(email: "armandom@gmail.com", password: "123456", institution: reina, name: "Armando Manza Nero")
Student.create!(email: "nataliar@gmail.com", password: "123456", institution: reina, name: "Natalia Rodriguez")
Student.create!(email: "diegob@gmail.com", password: "123456", institution: reina, name: "Diego Blanco")
Student.create!(email: "susanag@gmail.com", password: "123456", institution: reina, name: "Susana Guzman")
Student.create!(email: "ticzel@gmail.com", password: "123456", institution: reina, name: "Ticzel Alpizar")
Student.create!(email: "paglog@gmail.com", password: "123456", institution: reina, name: "Pablo Gomez")
Student.create!(email: "germang@gmail.com", password: "123456", institution: reina, name: "German Garcia")
Student.create!(email: "adrianr@gmail.com", password: "123456", institution: reina, name: "Adrian Razgado")
Student.create!(email: "robertoe@gmail.com", password: "123456", institution: reina, name: "Roberto Enaine")

Student.create!(email: "andreas@gmail.com", password: "123456", institution: cnh, name: "Andrea Soler")
Student.create!(email: "amanyl@gmail.com", password: "123456", institution: cnh, name: "Amany Laredo")
Student.create!(email: "julietar@gmail.com", password: "123456", institution: cnh, name: "Julieta Roviera")
Student.create!(email: "anad@gmail.com", password: "123456", institution: cnh, name: "Ana Duran")
Student.create!(email: "angelal@gmail.com", password: "123456", institution: cnh, name: "Angel Alcaraz")
Student.create!(email: "davidm@gmail.com", password: "123456", institution: cnh, name: "David Mata")
Student.create!(email: "guillermol@gmail.com", password: "123456", institution: cnh, name: "Guillermo Lopez")
Student.create!(email: "luisa@gmail.com", password: "123456", institution: cnh, name: "Luis Avila")
Student.create!(email: "auroram@gmail.com", password: "123456", institution: cnh, name: "Aurora Martinez")
Student.create!(email: "pamelab@gmail.com", password: "123456", institution: cnh, name: "Pamela Betancourt")

Student.create!(email: "paquito@gmail.com", password: "123456", institution: hispano, name: "Francisco Acuña")
Student.create!(email: "lalo@gmail.com", password: "123456", institution: britanico, name: "Eduardo Rios")
Student.create!(email: "gio@gmail.com", password: "123456", institution: albatros, name: "Giovana Cueto")
Student.create!(email: "lulu@gmail.com", password: "123456", institution: hispano, name: "Maria de Lourdes Rangel")
Student.create!(email: "sebas@gmail.com", password: "123456", institution: britanico, name: "Sebastian Gonzalez")
Student.create!(email: "emanuel@gmail.com", password: "123456", institution: albatros, name: "Emanuel Galvan")
Student.create!(email: "elias@gmail.com", password: "123456", institution: hispano, name: "Elias Coronado")
Student.create!(email: "fer@gmail.com", password: "123456", institution: britanico, name: "Fernando Barajas")
Student.create!(email: "torres@gmail.com", password: "123456", institution: albatros, name: "Torres")
Student.create!(email: "leo@gmail.com", password: "123456", institution: hispano, name: "Leonardo Michell")

puts "Creando Maestros"
puts "-------------------------------------"

lila = Teacher.create(email: "delila@gmail.com", password: "123456", name: "Delila Smith", institution: reina)
car = Teacher.create(email: "carmen@gmail.com", password: "123456", name: "Carmen Alcaraz", institution: reina)
lu = Teacher.create(email: "laura@gmail.com", password: "123456", name: "Lucero Cobarruvias", institution: reina)
ro = Teacher.create(email: "laura@gmail.com", password: "123456", name: "Rocio Mistral", institution: reina)
kat = Teacher.create(email: "laura@gmail.com", password: "123456", name: "Katia Romero", institution: reina)

marc = Teacher.create(email: "mariac@gmail.com", password: "123456", name: "Maria Candelaria", institution: cnh)
ropo = Teacher.create(email: "robertop@gmail.com", password: "123456", name: "Roberto Povs", institution: cnh)
lupita = Teacher.create(email: "lupitas@gmail.com", password: "123456", name: "Guadalupe Sanz", institution: cnh)
ang = Teacher.create(email: "andresg@gmail.com", password: "123456", name: "Andres Garcia", institution: cnh)
raulp = Teacher.create(email: "raulp@gmail.com", password: "123456", name: "Raul Politro", institution: cnh)

soc = Teacher.create(email: "laura@gmail.com", password: "123456", name: "Socorro Sanchez", institution: cecc)
pru = Teacher.create(email: "laura@gmail.com", password: "123456", name: "Prudencia Garcia", institution: cecc)
edubu = Teacher.create(email: "laura@gmail.com", password: "123456", name: "Eduardo Buenavista", institution: cecc)
roco = Teacher.create(email: "laura@gmail.com", password: "123456", name: "Rodolfo Cordova", institution: cecc)
geopa = Teacher.create(email: "laura@gmail.com", password: "123456", name: "Georgina Paz", institution: cecc)

lau = Teacher.create(email: "laura@gmail.com", password: "123456", name: "Laura Pausini", institution: albatros)
maye = Teacher.create(email: "mayela@gmail.com", password: "123456", name: "Maye Rangel", institution:hispano)
gus = Teacher.create(email: "gus@gmail.com", password: "123456", name: "Gustavo Cerati", institution:britanico)
flor = Teacher.create(email: "flor@gmail.com", password: "123456", name: "Flor Margarita", institution: albatros)
cristobal = Teacher.create(email: "cristobal@gmail.com", password: "123456", name: "Cristobal Colon", institution:hispano)

puts "Creando Subjects"
puts "-------------------------------------"

Subject.create(institution: cecc, teacher: soc, name: "Creatividad")
Subject.create(institution: cecc, teacher: pru, name: "Diseño")
Subject.create(institution: cecc, teacher: edubu, name: "Contabilidad")
Subject.create(institution: cecc, teacher: roco, name: "Medios")
Subject.create(institution: cecc, teacher: geopa, name: "Probabilidad")

Subject.create(institution: reina, teacher: lila, name: "Geografia")
Subject.create(institution: reina, teacher: car, name: "Frances")
Subject.create(institution: reina, teacher: lu, name: "Comunicacion")
Subject.create(institution: reina, teacher: ro, name: "Redaccion")
Subject.create(institution: reina, teacher: kat, name: "Radio")

Subject.create(institution: cnh, teacher: maye, name: "Derecho")
Subject.create(institution: cnh, teacher: lau, name: "Lectura")
Subject.create(institution: cnh, teacher: cristobal, name: "Literatura")
Subject.create(institution: cnh, teacher: gus, name: "Analisis")
Subject.create(institution: cnh, teacher: flor, name: "Desarrollo")

puts "Proceso Terminado"
puts "Seeds creados correctamente :)"
