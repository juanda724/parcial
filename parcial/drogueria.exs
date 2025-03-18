# Abstracción
# Droguería necesita calcular el desempeño de ventas de un producto en un mes. Se tiene un mapa que contiene los días del mes como clave y las ventas del producto como valor.

# Descomposición
# Crear un mapa de ventas diarias con el numero del mes y el numero de ventas
# Crear una función analizar_ventas que reciba el mapa
# calcular: total_ventas (sumar todos los valores), promedio_diario (sumar todos los valores y dividir por la cantidad de días), día_mejor_venta (escoger el día con más ventas (valor))
# en caso de que no haya ventas (%{}) y devolver {0, 0, "No hay"}



defmodule Drogueria do
  def main do
    ventas = %{"1" => 50, "2" => 10, "3" => 35}
    tupla = analizar_ventas(ventas)
    IO.inspect(tupla)
  end

  defp analizar_ventas(ventas) do
    case Kernel.map_size(ventas) do
      0 ->
        IO.puts("No hay datos")
        {0, 0, "No hay datos"}

       _->
        total_ventas = Enum.sum(Map.values(ventas))
        promedio_diario = total_ventas / Kernel.map_size(ventas)
        {dia_mejor_venta, _} = Enum.max_by(ventas, fn {_dia, venta} -> venta end)
        {total_ventas, promedio_diario, dia_mejor_venta}
    end
  end
end

Drogueria.main()
