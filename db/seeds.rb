puts "Creando Maestros"
puts "--------------------------"
Institution.destroy_all
Student.destroy_all
Teacher.destroy_all
Subject.destroy_all

hispano = Institution.create!(email: "hispano@gmail.com", password: "123456", name: "Hispano Americano de Leon", phone_number: "+1524777326424", address: "Blvd Vasco de Quiroga #235, Leon, Gto, Mexico")
britanico = Institution.create!(email: "britanico@gmail.com", password: "123456", name: "Colegio Britanico", phone_number: "+1524777326425", address: "Av universidad #1235, Campestre, Leon, Guanajuato, Mexico")
albatros = Institution.create!(email: "albatros@gmail.com", password: "123456", name: "Albatros Bilingual School", phone_number: "+1524777326426", address: "Blvd Paseo de la Reforma #222, Ciudad de Mexico, Mexico")

puts "Creando Alumnos"
puts "---------------------------"

Student.create!(email: "paquito@gmail.com", password: "123456", institution: hispano, name: "Francisco Acuña")
Student.create!(email: "lalo@gmail.com", password: "123456", institution: britanico, name: "Eduardo Rios")
Student.create!(email: "gio@gmail.com", password: "123456", institution: albatros, name: "Giovanna Cueto")
Student.create!(email: "lulu@gmail.com", password: "123456", institution: hispano, name: "Maria de Lourdes Rangel")
Student.create!(email: "sebas@gmail.com", password: "123456", institution: britanico, name: "Sebastian Gonzalez")
Student.create!(email: "emanuel@gmail.com", password: "123456", institution: albatros, name: "Emanuel Galvan")
Student.create!(email: "elias@gmail.com", password: "123456", institution: hispano, name: "Elias Coronado")
Student.create!(email: "fer@gmail.com", password: "123456", institution: britanico, name: "Fernando Barajas")
Student.create!(email: "torres@gmail.com", password: "123456", institution: albatros, name: "Torres")
Student.create!(email: "leo@gmail.com", password: "123456", institution: hispano, name: "Leonardo Michell")

puts "Creando Maestros"
puts "-------------------------------------"

lau = Teacher.create(email: "laura@gmail.com", password: "123456", name: "Laura Pausini", institution: albatros)
maye = Teacher.create(email: "mayela@gmail.com", password: "123456", name: "Maye Rangel", institution:hispano)
gus = Teacher.create(email: "gus@gmail.com", password: "123456", name: "Gustavo Cerati", institution:britanico)
flor = Teacher.create(email: "flor@gmail.com", password: "123456", name: "Flor Margarita", institution: albatros)
cristobal = Teacher.create(email: "cristobal@gmail.com", password: "123456", name: "Cristobal Colon", institution:hispano)

puts "Creando Subjects"
puts "-------------------------------------"

Subject.create(institution: hispano, teacher: maye, name: "Fisica")
Subject.create(institution: albatros, teacher: lau, name: "Historia")
Subject.create(institution: hispano, teacher: cristobal, name: "Ciencias Naturales I")
Subject.create(institution: britanico, teacher: gus, name: "Ciencias Naturales II")
Subject.create(institution: albatros, teacher: flor, name: "Ciencias Naturales III")

puts "Proceso Terminado"
puts "Seeds creados correctamente :)"
