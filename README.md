
## Bundle install
    Instala todas las dependecias del proyecto

## Crear la base de Datos
    bundle exec rake db:create

## Crear una migracion para crear una tabla user

    bundle exec rake db:create_migration NAME=create_users_table

    Recuerda despues de crear la migracion, definir las modificaciones

    class CreateUsersTable < ActiveRecord::Migration[5.0]
        def change
            create_table :users do |t|
                t.string :fname
                t.string :lname
                t.string :email
                t.datetime :created_at
                t.datetime :updated_at
            end
        end
    end
## Crear el modelo

    bundle exec rake generate:model NAME=User"

## generar la migracion
    bundle exec rake db:migrate

## Revisar el estado de las migraciones
    bundle exec rake db:migrate:status
## Modifica el archivo app.rb y genera las rutas del modelo

    get '/users' do
        #index
    end

    get '/users/:id' do
        #show
    end

    get '/users/new' do
        #new
    end

    post '/users' do
        #create
    end

    get '/users/:id/edit' do
        #edit
    end

    put '/users/' do
        #update
    end

    patch '/users/' do
        #update
    end

    delete '/users/' do
        #destroy
    end


## Usear las vistas con  erb

    crea todas las vistas con extension .erb en la carpeta views

## User the model

    User.all 
    User.find
    User.find_by
    user = User.first
    user.update(fname: "Ferney")
    user.destroy