# [![Typing SVG](https://readme-typing-svg.demolab.com?font=Bebas+Neue&weight=900&size=27&pause=500&color=3FCD63&background=FFFD2D00&width=435&lines=Rentora+Sphere+V1+-+MySQL+Core)](https://git.io/typing-svg)

This repository contains the core database architecture for **Rentora Sphere**, a real estate management system. 

[![MySQL](https://img.shields.io/badge/MySQL-Database-00758F?logo=mysql&logoColor=white)](https://www.mysql.com/)
[![draw.io](https://img.shields.io/badge/draw.io-ER%20Design-F08705?logo=diagramsdotnet&logoColor=white)](https://app.diagrams.net/)

## 🏗️ Architecture
The system is built on a relational model focusing on:
- **User Management**: Distinct roles for Owners, Tenants, and sysManager.
- **Unit Management**: Property tracking with owner association.
- **Contract Lifecycle**: Managing the legal and financial link between tenants and units.

## 🛠️ Tech Stack
- **Database**: MySQL 8.4.8
- **Tooling**: MySQL Workbench for Forward Engineering.

## Secreenshots:
<h2>ER Diagram - Workbench</h2>
<img src="https://raw.githubusercontent.com/Wahab-Al/Rentora_Sphere_V1_SQL/b72a338d5d641f8a9ea9ede32827d21a2a7aaca4/screenshots/ER_Workbench.png" width="700"/>
<br><br>
<h2>ER Diagram - draw.io</h2>
<img src="https://raw.githubusercontent.com/Wahab-Al/Rentora_Sphere_V1_SQL/b72a338d5d641f8a9ea9ede32827d21a2a7aaca4/screenshots/ER_drawio.png" width="700"/>


## 🚀 How to deploy
1. Create a new schema: `CREATE SCHEMA rentora_sphere_v1;`
2. Run the `schema_v1.sql` script located in this repository.
