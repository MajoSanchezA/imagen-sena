class Person
    attr_accesor :nombre, :dir

    def guardar
        client = Mysql2::Client.new(
            host: "localhost",      # Cambia según tu configuración
            username: "tu_usuario",
            password: "tu_contraseña",
            database: "tu_base_de_datos"
        )

        # Consulta SQL para insertar un registro
        query = "INSERT INTO usuarios (nombre, dir) VALUES ('Juan Pérez', 'juan@example.com')"

          client.query(query)
end


persona = Persona.new
persona.nombre = 'luis'
persona.dir = 'call'
persona.guardar

