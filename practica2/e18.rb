=begin
¿Qué son los lazy enumerators? ¿Qué ventajas ves en ellos con respecto al uso de los enumer-
adores que no son lazy?
Tip: Analizalo pensando en conjuntos grandes de datos
=end

=begin
los lazy enumerators son aquellos enumeradores que no generan toda la coleccion de elementos sino los que 
generan la cantidad de elementos necesarios para que se ejecute una cadena de operaciones
la ventaja con respecto a esto es que los enuemradores con grandes volumenes de datos normales generan una 
gran cantidad de elementos en memoria los cuales podrian no ser necesarios 
ademas los enumeradores lazy permite trabajar con enumeradores infinitos
=end