Feature: US016 - Distribución programada de retos

Scenario: Programación exitosa de la publicación de un reto
Given que el <profesor> ha creado un reto  
When selecciona "Programar publicación" y fija la <fecha> y <hora>  
Then el sistema guarda la configuración  
And muestra "El reto se publicará el <fecha> a las <hora>"

Examples:
  | profesor       | fecha       | hora   |
  | Profesor_001   | 2025-05-20  | 09:00  |
  | Profesor_002   | 2025-06-01  | 14:30  |
  | Profesor_003   | 2025-05-25  | 08:15  |

Scenario: Intento de programar con una fecha pasada
Given que el <profesor> ingresa una <fecha> anterior al día actual  
When intenta programar  
Then el sistema muestra "La fecha debe ser futura"  
And bloquea la confirmación

Examples:
  | profesor     | fecha       |
  | Profesor_001 | 2024-12-10  |
  | Profesor_002 | 2025-01-01  |
  | Profesor_003 | 2025-03-15  |
