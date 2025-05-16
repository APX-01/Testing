Feature: US06 - Recepción de retos semanales gamificados

Scenario: Asignación de reto gamificado al iniciar sesión
Given que el [estudiante] está registrado en la plataforma  
When inicia sesión en su cuenta  
Then recibirá un [reto gamificado semanal] para desarrollar sus habilidades  

Examples:  
  | [estudiante]   | [reto gamificado semanal]         |  
  | Estudiante_001 | Reto de lógica y razonamiento     |  
  | Estudiante_002 | Reto de creatividad digital       |  
  | Estudiante_003 | Reto de resolución de problemas   |

Scenario: Asignación de un nuevo reto tras completar el anterior
Given que el <estudiante> ha completado el reto anterior  
When comienza una nueva semana  
Then recibirá un <nuevo_reto_semanal> para mantenerse motivado  

Examples:
  | estudiante     | nuevo_reto_semanal             |
  | Estudiante_001 | Reto de pensamiento crítico    |
  | Estudiante_002 | Reto de diseño interactivo     |
  | Estudiante_003 | Reto de comunicación efectiva  |


