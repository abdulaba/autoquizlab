puts "Creando Maestros"
puts "--------------------------"
Institution.destroy_all
Student.destroy_all
Teacher.destroy_all

Institution.create!(email: "hispano@gmail.com", password: "123456", name: "Hispano Americano de Leon", phone_number: "+1524777326424", address: "Blvd Vasco de Quiroga #235, Leon, Gto, Mexico")

Institution.create!(email: "britanico@gmail.com", password: "123456", name: "Colegio Britanico", phone_number: "+1524777326425", address: "Av universidad #1235, Campestre, Leon, Guanajuato, Mexico")

Institution.create!(email: "albatros@gmail.com", password: "123456", name: "Albatros Bilingual School", phone_number: "+1524777326426", address: "Blvd Paseo de la Reforma #222, Ciudad de Mexico, Mexico")

puts "Creando Alumnos"
puts "---------------------------"

Student.create!(email: "paquito@gmail.com", password: "123456", institution_id: 12, name: "Francisco Acuña")

Student.create!(email: "lalo@gmail.com", password: "123456", institution_id: 13, name: "Eduardo Rios")

Student.create!(email: "gio@gmail.com", password: "123456", institution_id: 14, name: "Giovanna Cueto")

Student.create!(email: "lulu@gmail.com", password: "123456", institution_id: 12, name: "Maria de Lourdes Rangel")

Student.create!(email: "sebas@gmail.com", password: "123456", institution_id: 13, name: "Sebastian Gonzalez")

Student.create!(email: "emanuel@gmail.com", password: "123456", institution_id: 14, name: "Emanuel Galvan")

Student.create!(email: "elias@gmail.com", password: "123456", institution_id: 12, name: "Elias Coronado")

Student.create!(email: "fer@gmail.com", password: "123456", institution_id: 13, name: "Fernando Barajas")

Student.create!(email: "torres@gmail.com", password: "123456", institution_id: 14, name: "Torres")

Student.create!(email: "leo@gmail.com", password: "123456", institution_id: 12, name: "Leonardo Michell")

puts "Creando Maestros"
puts "-------------------------------------"

Teacher.create(email: "laura@gmail.com", password: "123456", name: "Laura Pausini", institution_id: 13)

Teacher.create(email: "mayela@gmail.com", password: "123456", name: "Maye Rangel", institution_id: 14)

Teacher.create(email: "gus@gmail.com", password: "123456", name: "Gustavo Cerati", institution_id: 12)

Teacher.create(email: "flor@gmail.com", password: "123456", name: "Flor Margarita", institution_id: 13)

Teacher.create(email: "cristobal@gmail.com", password: "123456", name: "Cristobal Colon", institution_id: 14)

puts "Proceso Terminado"
puts "Seeds creados correctamente :)"
