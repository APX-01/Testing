Feature: US001 - Asignación de grupos

Scenario: Asignación automática de grupo al ingresar por primera vez
Given que el <estudiante> se ha registrado en el curso  
When accede por primera vez a la plataforma  
Then el sistema le asigna automáticamente a un <grupo_disponible>

Examples:
  | estudiante     | grupo_disponible |
  | Estudiante_001 | Grupo A          |
  | Estudiante_002 | Grupo B          |
  | Estudiante_003 | Grupo C          |

Scenario: Unirse manualmente a un grupo disponible
Given que el <estudiante> no ha sido asignado aún  
When elige un <grupo_disponible> desde el listado de equipos abiertos  
Then el sistema confirma su integración al grupo

Examples:
  | estudiante     | grupo_disponible |
  | Estudiante_004 | Grupo D          |
  | Estudiante_005 | Grupo E          |
