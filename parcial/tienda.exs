# Abstracción
# Tienda de tecnología requiere un programa para actualizar su inventario después de una venta.

# Descomposición
# función llamada "actualizar_venta" que recibe un mapa con al menos tres productos y sus cantidades
# si el producto no está en el inventario, mostrar "Producto no encontrado"
# si la cantidad a vender es mayor a la cantidad de unidades disponibles, entonces mostrar un mensaje "Stock insuficiente", si no, actualizar el inventario

# Reconocimiento de patrones
# ingresar_texto
# ingresar_entero



defmodule Tienda do
  def main do
    inventario = %{"laptop" => 7, "TVs" => 7, "procesadores" => 20}

    producto = Util.ingresar("Ingrese el producto: ", :texto)
    cantidad_vender = Util.ingresar("Ingrese la cantidad a vender: ", :entero)

    inventario_final = actualizar_inventario(inventario, producto, cantidad_vender)
    IO.inspect(inventario_final)
  end

  defp actualizar_inventario(inventario, producto, cantidad_vender) do
    case Map.get(inventario, producto) do
      nil ->
        IO.puts("Producto no encontrado")
        inventario

      cantidad when cantidad >= cantidad_vender ->
        nuevo_inventario = Map.put(inventario, producto, cantidad - cantidad_vender)
        IO.puts("Venta exitosa")
        nuevo_inventario

      _ ->
        IO.puts("Stock insuficiente")
        inventario
    end
  end
end

Tienda.main()
