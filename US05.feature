Feature: US05 - Acceder al panel de progreso del curso

    Scenario: Configuración de la sincronización
    Given que hay múltiples grupos en el curso  
    When el profesor accede al panel de progreso  
    Then se muestra un resumen visual con el avance por equipo y por reto  

    Examples:  
      | [curso]         | [equipos]   | [retos]           |  
      | curso_101       | equipo_A    | Reto de lógica    |  
      | curso_101       | equipo_B    | Reto de diseño    |  
      | curso_102       | equipo_C    | Reto de código    |  
      | curso_102       | equipo_D    | Reto de análisis  |


    Scenario: Filtro de métricas por fecha o reto
    Given que el sistema recopila datos de entrega  
    When el profesor filtra por [criterio]  
    Then obtiene métricas detalladas del desempeño de los estudiantes  

    Examples:  
      | [criterio]   | [resultado_esperado]                    |  
      | fecha        | Métricas de entregas entre dos fechas   |  
      | reto         | Detalles del desempeño por reto         |  
      | ambos        | Análisis cruzado por reto y periodo     |
