# Backend plan — MEDORA V2

Recommended:
Frontend: HTML/CSS/JavaScript
Map: Leaflet + OpenStreetMap
Backend: Node.js + Express
Database: PostgreSQL/MySQL
Authentication: secure server-side sessions/JWT with proper password hashing
Private reports: protected object storage

Suggested API:
GET /api/hospitals
GET /api/hospitals/:id
GET /api/doctors
GET /api/doctors/:id
POST /api/auth/register
POST /api/auth/login
POST /api/appointments
GET /api/appointments/:id
GET /api/availability
GET /api/blood
GET /api/labs

Admin:
- Facility CRUD
- Doctor CRUD
- Availability updates
- Verification workflow
- Appointment management
- User management

Production note:
Never store passwords, private health files or secret API keys in the GitHub Pages frontend.
