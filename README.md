# Alke Wallet - Relational Database Design

## 📝 Descripción
Este proyecto consiste en el diseño y modelado de una base de datos relacional para una plataforma de billetera digital (Wallet). El objetivo principal fue crear una estructura de datos robusta, normalizada y eficiente para gestionar usuarios, saldos y el historial de transacciones financieras.

## 🚀 Enfoque de Ingeniería
Más allá de un simple diseño, este proyecto se centró en la **integridad referencial** y la **trazabilidad**. Al igual que en la gestión de procesos industriales, el control de flujos de entrada y salida debe ser exacto. 

- **Normalización:** Aplicación de 3NF (Tercera Forma Normal) para evitar redundancia.
- **Integridad:** Uso de Foreign Keys y Constraints para asegurar que cada transacción esté vinculada correctamente al emisor y receptor.
- **Escalabilidad:** Estructura pensada para un crecimiento modular.

## 🛠️ Tecnologías
- **Database:** MySQL
- **Tooling:** MySQL Workbench (Modelado DER)
- **Lenguaje:** SQL (DDL/DML)

## 📊 Modelo Entidad-Relación (DER)



<img width="1053" height="449" alt="Captura de pantalla 2026-03-02 170539" src="https://github.com/user-attachments/assets/915ad457-3776-48b5-b062-c5ac899efe64" />



## 📈 Impacto Técnico
- 100% de integridad referencial en el flujo de fondos.
- Optimización de consultas para historial de transacciones mediante indexación.
