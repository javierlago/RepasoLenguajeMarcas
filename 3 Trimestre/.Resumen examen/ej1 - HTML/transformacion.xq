<html>
      <head>
        <title>Prueba Examen</title>
      </head>
      <body>
        <table border="1">
          <tr>
            <th></th>
            <th>Autor</th>
            <th>Nombre</th>
            <th>Puntuacion</th>
          </tr>
          {
for $x in doc("index.xml")/pruebaexamen/biblioteca/libros/libro
return <tr>
      <td>
        {$x/@id}
      </td>
      <td>
        {$x/autor}
      </td>
      <td>
      {$x/nombre}
      </td>
      <td>
      {$x/puntuacion}
      </td>
    </tr>
          }
        </table>
      </body>
</html>