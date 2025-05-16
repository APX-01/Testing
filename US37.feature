Feature: US037 - Visualización de medalla de desempeño del estudiante

Scenario Outline: Visualizar medalla asignada según el rendimiento
Given que el <estudiante> ha completado uno o más retos  
When accede a la vista del grupo  
Then puede visualizar su <medalla> asignada en base a su puntaje acumulado

Examples:
  | estudiante     | medalla  |
  | Estudiante_001 | Bronze   |
  | Estudiante_002 | Silver   |
  | Estudiante_003 | Basic    |

Scenario Outline: Actualización automática de la medalla al mejorar el puntaje
Given que el <estudiante> ha mejorado su puntaje  
When supera el umbral para una nueva medalla  
Then el sistema actualiza y muestra la <nueva_medalla> correspondiente automáticamente

Examples:
  | estudiante     | nueva_medalla |
  | Estudiante_001 | Gold          |
  | Estudiante_002 | Platinum      |
  | Estudiante_003 | Silver        |
