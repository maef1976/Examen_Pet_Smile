Feature: Realizacion de casos ingresando nombre de usuario y contraseña
Scenario: Verificacion de ingreso de sesion
Given Abrir Chrome
When ingresar Username "mespinoza" y Password "12345"
Then inicia sesion