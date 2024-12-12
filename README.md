## proyecto_final_bda_2024
##Tema elegido: Sistema de Ventas de Entradas en un Cine.

##Caso Propuesto:
Un cine desea implementar un sistema de información para gestionar la venta de entradas. El sistema debe permitir el registro y seguimiento de los siguientes aspectos:

#Salas de Cine:

Cada sala tiene un identificador único, un nombre, capacidad máxima y un tipo (2D, 3D, IMAX). Las salas están asignadas a una sede específica del cine.

#Películas:

El cine proyecta varias películas. Cada película tiene un título, género, duración (en minutos), idioma, y clasificación por edades. Una película puede proyectarse en varias salas y horarios diferentes.

##Horarios de Función:

Cada película tiene horarios específicos para cada sala. Un horario de función incluye la fecha, hora de inicio, sala asignada y película asociada.

#Entradas:

Los clientes pueden comprar entradas para una función específica. Cada entrada debe tener un identificador único, un asiento asignado, el precio y el estado (comprada, reservada, cancelada). Un cliente puede comprar varias entradas para una misma función.

#Clientes:

Los clientes deben registrarse para comprar entradas en línea. Se almacenan datos básicos como su nombre, correo electrónico, número de teléfono y un historial de compras. Un cliente puede realizar compras para distintas funciones, y cada compra debe tener un identificador único y fecha.

#Métodos de Pago:
Los clientes pueden pagar sus entradas mediante tarjeta de crédito, débito o efectivo. El sistema debe guardar el método de pago utilizado y un número de referencia para las transacciones.
