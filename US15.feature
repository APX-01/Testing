Feature: US015 - Gestionar integrantes del grupo

Scenario Outline: Ver lista de estudiantes del grupo
Given que el <profesor> accede a un <grupo>  
When selecciona la opción "Integrantes"  
Then el sistema muestra la lista completa de estudiantes matriculados en ese grupo

Examples:
  | profesor      | grupo          |
  | Profesor_001  | Grupo A        |
  | Profesor_002  | Grupo B        |
  | Profesor_003  | Grupo C        |

Scenario Outline: Eliminar estudiante del grupo
Given que el <profesor> está viendo la lista de integrantes  
When selecciona "Eliminar" junto a <estudiante>  
And confirma la acción  
Then el sistema remueve al estudiante del grupo  
And actualiza la lista mostrada

Examples:
  | profesor      | estudiante       |
  | Profesor_001  | Estudiante_001   |
  | Profesor_002  | Estudiante_005   |
  | Profesor_003  | Estudiante_009   |
