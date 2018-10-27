rails generate controller bienvenido index

# crea en app/controllers/bienvenido_controller.rb
# crea en app/views/bienvenido/index.html.erb

# para crear una pagina de inicio de la aplicacion con el controlador y la vista ya teniendo 
# el controlador y la vista tenemos que decirle a Rails cuando queremos que muestre "Hola, Rails!"
# para el ejercicio queremos que lo haga cuando el navegante pida la raiz de nuestro sitio
# http://localhost:3000 que antes de realizar este ejercio lo ocupa la bienvenida de RAILS

# 1) Indicarle a Rails donde esta la pagina de inicio: en config/routes.rb agregamos la linea
     root 'bienvenido#index' 
     de esta forma le indicamos a Rails que derive las peticiones que llegan a la raiz de la
     aplicacion hacia la accion index del controlador bienvenido y "get 'bienvenido/index'" le
     indica a Rails que las peticiones que llegan a http://localhost:3000/bienvenido/index se
     deriven tambien a la accion index del controlador bienvenido.

     realizar el cambio.
   2) Levantar de nuevo el servidor
