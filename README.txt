# Evaluación Final Spring Módulo 5  Desarrollo de aplicaciones web dinámicas con Java
## Sistema de Información para Empresa de Asesorías en Prevención de Riesgos

# Integrantes:
     - Diego Rivera
     - Beatriz Maldonado
     - Jorge Lira
     - Jorge Montoya
     - Sammy Maldonado

## Índice

- [1. CONTEXTO](#1-CONTEXTO)
- [2. PROBLEMA](#2-PROBLEMA)
- [3. SOLUCIÓN](#3-SOLUCIÓN)
- [4. OBJETIVOS DEL PROYECTO](#4-OBJETIVOS_DEL_PROYECTO)
- [5. REQUISITOS DEL SISTEMA](#5-REQUISITOS_DEL_SISTEMA)
- [6. ESTRUCTURA DEL PROYECTO](#6-ESTRUCTURA_DEL_PROYECTO)
- [7. MODELO DE DATOS](#7-MODELO_DE_DATOS)
- [8. REPOSITORIOS](#8-REPOSITORIOS)


## 1. CONTEXTO

En la última década, han aumentado los índices de accidentabilidad, especialmente en las
empresas del rubro industrial, minero y construcción. Las cifras son alarmantes, a pesar de las
leyes y normativas que obligan a las empresas a tomar todaslas medidas necesarias para proteger
la vida y salud de los trabajadores. Para dar cumplimiento a la normativa y mantener ambientes
de trabajo seguros, muchas empresas se ven en la obligación de contratar asesoría profesional,
lo cual representa un costo elevado y fomenta la disminución o la no implementación de medidas
necesarias para la seguridad. Muchas de las empresas que han optado por no invertir en asesoría
preventiva, se ven expuestas a aplicación de multas de las entidades fiscalizadoras, gastos por
días perdidos en accidentabilidad, bajas en la producción, alzas en el pago de cotizaciones (al
organismo administrador del seguro de accidentes del trabajo, ley 16.744), entre otros. Además,
hay que considerar posibles demandas y pagos de indemnizaciones a lostrabajadores y familiares
afectados por accidentes del trabajo.
Un grupo de profesionales ha fundado una compañía de asesorías en prevención de riesgos
laborales y necesita una solución tecnológica que ayude a administrar los procesos que se deben
ejecutar en cada una de las empresas que son clientes de la compañía. Este servicio finalmente
pretende ofrecer una solución completa en prevención de riesgos para las empresas a un costo
razonable, cumpliendo estrictamente todos los procesos necesarios para dar cumplimiento a la
normativa vigente, mejorando los ambientes de trabajo, la productividad, contribuyendo a un
ahorro económico.

## 2. PROBLEMA

La empresa no posee un sistema de información que le permita administrar toda la cantidad de
información que se genera, ni controlar las actividades y el recurso humano. Existen problemas
con la planificación de las visitas, generalmente los profesionales están en terreno por lo que no

están disponibles para informarles sus actividades futuras. No existe registro del profesional que
ha estado con mayor actividad ni se sabe dónde está cada uno.
Las visitas a terreno a veces no tienen el efecto indicado por la falta de coordinación con el cliente.
Asisten trabajadores que no tienen que ver con la charla, o bien, no se coordina la ejecución de
la capacitación, lo que trae consigo multas para la empresa. No se tiene un control de los clientes
que pagan y los que no, lo que hace que muchas actividades de los profesionales corran por
cuenta de la empresa, generando desbalances financieros. Las actividades se registran en
carpetas lo que dificulta el seguimiento de las asesorías y el resumen de resultados por empresa.
Además, generalmente no se cumplen c iertas actividades de control de implementación de
soluciones y a veces no se ha cumplido con la dirección del trabajo, lo que genera multas para los
clientes, bajando la calidad del servicio. Los profesionales que han atendido la empresa
esporádicamente han variado, no existiendo un registro de la totalidad de actividades preventivas
realizadas y no se tiene certeza de los avances.

## 3. SOLUCION

Es necesario desarrollar una solución tecnológica que cubra los procesos de negocio descritos y
que proponga una mejora en la gestión, el control, la seguridad, y disponibilidad de información
para la empresa y sus clientes. El sistema debe permitir la planificación de actividades y el control
de ejecución de éstas, la gestión de clientes, la coordinación entre la empresa, los profesionales
y los clientes para la respuesta temprana ante incidentes de seguridad. Además, se requiere que
el sistema genere reportes y estadísticas que ayuden a tomar de decisiones y mejorar el
rendimiento de la empresa, considerando la carga laboral, y la demanda de clientes y las
actividades que cada uno involucra para el cumplimiento de los contratos. Es imprescindible,
mantener comunicación con los profesionales en todo momento, aún en terreno, y darle la
posibilidad de realizar todas sus actividades aun no teniendo conectividad (internet), ya que
muchas empresas se encuentran en zonas donde no hay conexión de ese tipo.

## 4. OBJETIVOS DEL PROYECTO

* Desarrollar un sitio web dinámico bajo el patrón de diseño MVC.
* Conectar el sitio web a una base de datos Oracle.
* Implementar servlets y JSP para manejar la lógica del sistema.
* Crear y gestionar clientes, profesionales y administrativos en la plataforma.


## 5. REQUISITOS DEL SISTEMA
*Java (JEE):** Servlets para manejar la lógica de negocio.
*JSP:** Para generar contenido dinámico en el frontend.
*Base de Datos:** Almacena toda la información relacionada con los clientes, capacitaciones, pagos, etc.
*Apache Tomcat:** Servidor de aplicaciones utilizado para desplegar el proyecto.
*Control de Versiones (GitHub):** El proyecto se encuentra en un repositorio público en GitHub.

## 6. ESTRUCTURA DEL PROYECTO
*Clases Java:** Manejan la lógica del sistema.**Interfaces:** Para definir los contratos de las funcionalidades.
*JSP:** Para la presentación dinámica del contenido.
*Hojas de Estilo:** Definición de estilos responsivos compartidos entre todas las páginas.
*Scripts JS:** Comentados y debidamente organizados.

## 7. MODELO DE DATOS
El sistema utiliza una base de datos Oracle con las siguientes tablas principales:

*Usuarios (Clientes, Administrativos, Profesionales)
*Capacitaciones
*Pagos
*Visitas

## 8. REPOSITORIOS

- https://github.com/D3R5/Sprint-Final-Modulo-6
- https://github.com/jorgemonval/Sprint-Final-Modulo-6
- https://github.com/lyra-c/Sprint-Final-Modulo-6
- https://github.com/Bemm12/Sprint-Final-Modulo-6
- https://github.com/Sammy-Maldonado/Sprint-Final-Modulo-6