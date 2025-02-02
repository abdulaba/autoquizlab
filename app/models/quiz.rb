class Quiz < ApplicationRecord
  belongs_to :teacher
  def content
    client = OpenAI::Client.new
    chaptgpt_response = client.chat(parameters: {
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: "haz un examen de #{number_of_questions} de la materia de #{subject_name} para alumnos de #{student_age} sobre #{topic} con un nivel #{exam_level} . Haz 3 respuestas, 2 de ellas incorrectas y una correctas por pregunta, agrega la respuesta correcta y empieza la respuesta correcta con R:"}]
    })
    return chaptgpt_response["choices"][0]["message"]["content"]
  end
end
