from django.db.models.fields import return_None
from django.shortcuts import render, HttpResponse
from django.utils import timezone

# Modelo referencias
from employee.models import employee_model
from contract.models import contrato_model
from incident.models import incidentModel
from payroll.models import modelo_nomina


# Create your views here.

def generar_nomina(request,empleado):
    # Para generar la nomina se necesita:
    # 1. Obtener el empleado (viene por parametro)
    id_empleado = employee_model.objects.get(id=empleado)
    # 2. Obtener el contrato del empleado
    contrato = contrato_model.objects.filter(empleado=empleado).first()
    if not contrato:
        return HttpResponse('El empleado no tiene un contrato')
    else:
        # 2.2 Obtener el salario diario del contrato
        salario_diario = contrato.salarioDiario
        # 3. Obtener las incidencias del empleado (Solo las que no esten en la nomina y que el estado sea aprobado)
        ultima_nomina = modelo_nomina.objects.filter(empleado=empleado).last()
        incidencias = incidentModel.objects.filter(employee=empleado, fecha__gte=ultima_nomina.fecha_pago) if ultima_nomina else None
        # 3.2 si hay incidencias con estado false, retornar un error
        if incidencias:
            for incidencia in incidencias:
                if not incidencia.estado:
                    return HttpResponse('El empleado tiene incidencias pendientes, no se puede generar la nomina')

        # 3.3 Calcular el monto de las incidencias que son deduccion y aumento
        deduccion = 0
        aumento = 0
        if incidencias:
            for incidencia in incidencias:
                if incidencia.tipo.deduccion:
                    deduccion += contrato.salarioDiario
                    #print('Deduccion')
                else:
                    aumento += contrato.salarioDiario
                    #print('Aumento')
        # 4. Calcular el salario subtotal (salario diario * dias trabajados (una quincena))
        salario_subtotal = salario_diario * 15 #redondear (si es .60 o mas sumar 1)
        # 5. Calcular el salario total (salario subtotal + aumento - deduccion)
        salario_total = salario_subtotal + aumento - deduccion
        # 6. Crear la nomina
        nomina = modelo_nomina()
        nomina.empleado = id_empleado
        # Obtener la fecha de pago (la fecha de pago es la fecha actual)
        nomina.fecha_pago = timezone.now()
        nomina.ajuste_incidencias_deduccion = deduccion
        nomina.ajuste_incidencias_aumento = aumento
        nomina.salario_subtotal = salario_subtotal
        nomina.salario_total = salario_total
        try:
            nomina.save()
            return HttpResponse('La nomina se genero correctamente, el salario total es: ' + str(salario_total) + ' con un salario diario de: ' + str(salario_diario) + ' y un salario subtotal de: ' + str(salario_subtotal) + ' con un aumento de: ' + str(aumento) + ' y una deduccion de: ' + str(deduccion))
        except Exception as e:
            return HttpResponse('Error al guardar la nomina: ' + str(e))
