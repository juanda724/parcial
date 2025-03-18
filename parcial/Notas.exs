# Abstracción
# Programa para evaluar el promedio y el estado de un estudiante. Mapa inicial con nombre y lista de las notas del estudiante

# Descomposición
# crear el mapa inicial
# ingresar el nombre del estudiante
# crear la función evaluar_proyecto (retorna una tupa con {promedio, estado})
# si el estudiante no está en el mapa, mostrar {0, "No encontrado"}
# calcular el promedio de las notas (sumar la lista de notas y dividirlo por el número de notas)
# si el promedio es mayor o igual a 3 mostrar "Aprobado", sino, mostrar "Reprobado"


# Reconocimiento de patrones
# ingresar_texto




defmodule Notas do
  def main do
    estudiante = %{
      "juan" => [5.0, 3.9, 2.0], "pablo" => [3.0, 2.0, 1.0]}

    nombre = Util.ingresar("Ingrese el nombre del estudiante", :texto)

    tupla = evaluar_proyecto(estudiante, nombre)
    IO.inspect(tupla)
  end

  defp evaluar_proyecto(estudiante, nombre) do
    case Map.get(estudiante, nombre) do
      nil ->
        IO.inspect("No encontrado")
        {0, "No encontrado"}

      notas ->
        total_notas = Enum.sum(notas)
        promedio = total_notas / length(notas)

        estado = if promedio >= 3, do:
          IO.puts("Aprobado"),

        else:
          IO.puts("Reprobado")

        {promedio, estado}
      end
    end
  end

Notas.main()
