Feature: US30 - Recordatorios de fechas límite de retos

Scenario: Envío de recordatorio 48 horas antes del vencimiento
Given que hay un [reto] próximo a vencer  
When faltan 48 horas para la fecha límite  
Then el sistema envía una [notificación automática] al estudiante  

Examples:  
  | [reto]           | [fecha_límite]   | [notificación automática]          |  
  | Reto_001         | 10/05/2025       | Recordatorio de entrega en 2 días  |  
  | Reto_002         | 15/05/2025       | Entrega próxima: 48h restantes     |


Scenario: Envío de último recordatorio 6 horas antes del vencimiento
Given que el [reto] vence hoy  
When quedan 6 horas para la fecha límite  
Then el sistema envía un [último recordatorio] al estudiante  

Examples:  
  | [reto]           | [hora_actual]   | [último recordatorio]                    |  
  | Reto_003         | 12:00           | Últimas 6 horas para entregar            |  
  | Reto_004         | 14:30           | ¡Rápido! Quedan solo 6 horas para vencer |

