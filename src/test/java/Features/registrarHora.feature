Feature: Realizacion de casos ingresando nombre de usuario y contraseña
Scenario: Verificacion de ingreso de sesion
Given Abrir Chrome
When ingresar Username "mespinoza" y Password "123"
Then inicia sesion y agenda hora ingresando hora "10:12" y fehca "11/11/2021"