select emp_nombre, '$' || emp_salario_por_hora as Salario_Por_Horas, emp_horas_trabajadas as Horas_Trabajadas, emp_horas_extras as Horas_Extras,
'$' || ((emp_salario_por_hora* emp_horas_trabajadas) + (emp_horas_extras*  emp_salario_por_hora)) as Sueldo_Total from empleado;