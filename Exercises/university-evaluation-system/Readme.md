# University Evaluation System

| ALUMNO|ID|NOTA |
| ----------- | ----------- | ----------- |
Marcos |    77755N    |      5
Joan   |    12345X    |      9
Maria  |    02468T    |      2
Marta  |    13579U    |      3
Alba   |    98765Z    |      5


## Use Cases
- Se quiere una lista para almacenar alumnos con su id que es una hash y nota
- Necesitamos guardar la notas de los alumnos
- El profesor es el unico que puede evaluar pasando el id del alumna y la nota correspondiente
- se debera emitir un evento con el hash del alumno cada vez que se evalue
- cualquiera puede consultar la nota de un alumno
- Se puede pedir una revision del examen para un alumno, se debe emitir un evento de revision. esto guarda la lista de alumnos que piden revisiones
- El profesor debe poder consultar que alumnos piden revision