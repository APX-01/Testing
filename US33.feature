Feature: US033 - Métricas de participación

Scenario Outline: Visualización de métricas de participación del grupo
Given que el <profesor> accede a un <grupo>  
When visualiza las métricas  
Then puede ver estadísticas de <publicaciones_foros>, <entregas_retos> y <reuniones_realizadas>

Examples:
  | profesor      | grupo    | publicaciones_foros | entregas_retos | reuniones_realizadas |
  | Profesor_001  | Grupo A  | 45                   | 8              | 3                    |
  | Profesor_002  | Grupo B  | 30                   | 6              | 2                    |
  | Profesor_003  | Grupo C  | 50                   | 9              | 4                    |

Scenario Outline: Indicador de alerta por baja participación
Given que <estudiante> no participa  
When su participación es baja  
Then el sistema lo marca con un <indicador_alerta>

Examples:
  | estudiante     | indicador_alerta     |
  | Estudiante_007 | 🔴 Participación baja |
  | Estudiante_008 | 🔴 Participación baja |
  | Estudiante_009 | 🔴 Participación baja |