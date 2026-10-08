# examen-final-mysql2
# Disparador Basico.
#  Objetivo:
Crear un trigger que, al insertar una nueva membresía, calcule y complete automáticamente la fecha de vencimiento sumando 30 días a la fecha de inicio.

# Como se desarrollo el objetivo:
creamos el trigger con el nombre:  trg_membresia_calcular_vencimiento, antes de crear el trigger usamos DROP TRIGGER IF EXIST por si ya existía este trigger pues lo elimina para que no haya ningún problema luego
en el examen nos dice que usemos un AFTER INSTER pero en MySQL un trigger AFTER INSERT no puede modificar la misma tabla y me soltó un error entonces usamos el BEFORE INSERT porque el trigger se ejecuta antes de 
guardar la fila es como decir que el BEFORE INSERT ejecuta el formulario antes de entregarlo y el AFTER INSERT es como intentar corregirlo cuando ya fue archivado, también use un SHOW TABLES pero eso fue para revisar las tablas que tenia creadas porque tenia un error y era q estaba poniendo mal el nombre de una tabla y ahí lo logre corregir.

