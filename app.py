from flask import Flask ,jsonify,request
from flask_cors import CORS
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
app=Flask(__name__)
CORS(app)
# configuro la base de datos, con el nombre el usuario y la clave
app.config['SQLALCHEMY_DATABASE_URI']='mysql+pymysql://root:root@localhost/spacejam'
#                                               user:clave@localhost/nombreBaseDatos
app.config['SQLALCHEMY_TRACK_MODIFICATIONS']=False
db= SQLAlchemy(app)
ma=Marshmallow(app)
# defino la tabla
class Producto(db.Model):   # la clase Producto hereda de db.Model     
    id=db.Column(db.Integer, primary_key=True)   #define los campos de la tabla
    nombre=db.Column(db.String(100))
    precio=db.Column(db.Integer)
    stock=db.Column(db.Integer)
    def __init__(self,nombre,precio,stock):   #crea el  constructor de la clase
        self.nombre=nombre   # no hace falta el id porque lo crea sola mysql por ser auto_incremento
        self.precio=precio
        self.stock=stock

class Cliente(db.Model):
    id=db.Column(db.Integer, primary_key=True)
    nombre=db.Column(db.String(50))
    edad=db.Column(db.Integer)
    origen=db.Column(db.String(30))
    imagen=db.Column(db.String(500))
    def __init__(self,nombre,edad,origen,imagen):
        self.nombre=nombre
        self.edad=edad
        self.origen=origen
        self.imagen=imagen
 
db.create_all()  # crea las tablas
#  ************************************************************
 
class ProductoSchema(ma.Schema):
    class Meta:
        fields=('id','nombre','precio','stock')
producto_schema=ProductoSchema()            # para crear un producto
productos_schema=ProductoSchema(many=True)  # multiples registros

class ClienteSchema(ma.Schema):
    class Meta:
        fields=('id','nombre','edad','origen','imagen')
cliente_schema=ClienteSchema()
clientes_schema=ClienteSchema(many=True)
 
# crea los endpoint o rutas (json)
@app.route('/productos',methods=['GET'])
def get_Productos():
    all_productos=Producto.query.all()     # query.all() lo hereda de db.Model
    result=productos_schema.dump(all_productos)  # .dump() lo hereda de ma.schema
    return jsonify(result)

@app.route('/clientes',methods=['GET'])
def get_Clientes():
    all_clientes=Cliente.query.all()
    result=clientes_schema.dump(all_clientes)
    return jsonify(result)

@app.route('/productos/<id>',methods=['GET'])
def get_producto(id):
    producto=Producto.query.get(id)
    return producto_schema.jsonify(producto)

@app.route('/productos/<id>',methods=['DELETE'])
def delete_producto(id):
    producto=Producto.query.get(id)
    db.session.delete(producto)
    db.session.commit()
    return producto_schema.jsonify(producto)

@app.route('/productos', methods=['POST']) # crea ruta o endpoint
def create_producto():
    print(request.json)  # request.json contiene el json que envio el cliente
    nombre=request.json['nombre']
    precio=request.json['precio']
    stock=request.json['stock']
    new_producto=Producto(nombre,precio,stock)
    db.session.add(new_producto)
    db.session.commit()
    return producto_schema.jsonify(new_producto)

@app.route('/clientes', methods=['POST']) # crea ruta o endpoint
def create_cliente():
    print(request.json)  # request.json contiene el json que envio el cliente
    nombre=request.json['nombre']
    edad=request.json['edad']
    origen=request.json['origen']
    imagen=request.json['imagen']
    new_cliente=Cliente(nombre,edad,origen,imagen)
    db.session.add(new_cliente)
    db.session.commit()
    return cliente_schema.jsonify(new_cliente)

@app.route('/productos/<id>' ,methods=['PUT'])
def update_producto(id):
    producto=Producto.query.get(id)
   
    nombre=request.json['nombre']
    precio=request.json['precio']
    stock=request.json['stock']
 
    producto.nombre=nombre
    producto.precio=precio
    producto.stock=stock
    db.session.commit()
    return producto_schema.jsonify(producto)

 
 
 
# programa principal *******************************
if __name__=='__main__':  
    app.run(debug=True, port=5000)  
