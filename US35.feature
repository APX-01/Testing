Feature: US035 - Reporte semanal

Scenario: Envío automático del resumen semanal de actividades
Given que es fin de semana  
When el sistema genera reportes  
Then el <estudiante> recibe por correo un resumen de <retos_completados>, <puntos_acumulados> y <nuevas_habilidades>

Examples:
  | estudiante     | retos_completados     | puntos_acumulados | nuevas_habilidades        |
  | Estudiante_001 | 3 retos completados   | 150 puntos         | Resolución de problemas   |
  | Estudiante_002 | 2 retos completados   | 120 puntos         | Creatividad digital       |
  | Estudiante_003 | 4 retos completados   | 180 puntos         | Pensamiento crítico       |

Scenario: Visualización del reporte con sugerencias
Given que el <estudiante> abrió el correo  
When revisa el reporte  
Then puede ver <sugerencias_actividades> para realizar a continuación

Examples:
  | estudiante     | sugerencias_actividades                |
  | Estudiante_001 | Explorar retos de pensamiento lógico   |
  | Estudiante_002 | Probar ejercicios de diseño UX         |
  | Estudiante_003 | Participar en retos colaborativos      |