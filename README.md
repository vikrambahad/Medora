# MEDORA — Hospital & Healthcare Service Finder

# MEDORA V2 — Professional College Project

**Find Care • Check Information • Reach Help Faster**

A responsive healthcare navigation prototype for Nagpur, upgraded for a final-year/college project presentation.

## V2 upgrades
- Professional responsive UI
- Leaflet + OpenStreetMap interactive map
- Hospital detail pages
- Doctor detail pages
- Real-world public institutional doctor references
- Real-world Nagpur facility references
- Demo login/register
- Role-based Admin Demo
- Demo appointment workflow
- Emergency Mode
- Search and filters
- Database schema
- GitHub Pages compatible frontend

## Real-world references
AIIMS Nagpur official directory lists doctors including Dr. Arijit Kumar Ghosh (Cardiology), Dr. Siddharth Dubhashi (General Surgery), Dr. Anand Chellappan (Nephrology), Dr. Alok Umredkar (Neurosurgery) and Dr. Mahendra Chauhan (Emergency and Trauma).

CARE Hospitals' official Nagpur doctor directory includes Dr. Akash Mahalle (Radiology), Dr. Ankur Sanghvi (Neurosurgery), Dr. Priyesh Dhoke (Orthopaedics/Spine Surgery), and Dr. Utkarsh Deshmukh (Nephrology).

Local facility references include Max Super Speciality Hospital, Orange City Hospital & Research Institute, Arihant Multispeciality Hospital, Jeevan Jyoti Blood Bank, Dr Hedgewar Blood Bank, Dhande Diagnostic Centre and STAR Imaging & Diagnostics.

These references are for academic demonstration. Verify details directly before real-world use.

## Leaflet map
The frontend loads Leaflet 1.9.4 from unpkg and OpenStreetMap tiles. Internet access is required for the map.

## Demo authentication
- Normal demo: Login page accepts any valid email + password.
- Admin Demo: Login -> "Use Admin Demo".
- Browser localStorage is used only for demonstration.
- This is NOT secure production authentication.

## GitHub Pages
GitHub Pages can host the static frontend (`index.html`, `css`, `js`). It cannot run the Node.js backend or database included as planning assets.

Full-stack architecture:
Browser -> GitHub Pages frontend -> HTTPS REST API -> Node.js/Express -> PostgreSQL/MySQL.

Do not put database passwords, private API keys, patient reports or secrets in frontend JavaScript/public GitHub files.

## Folder structure
MEDORA-V2-PRO/
- index.html
- css/style.css
- js/app.js
- database/schema.sql
- backend/README.md
- README.md

## Academic data disclaimer
This is a student project prototype. It is not a medical advice service, emergency dispatch system, hospital booking confirmation service, or source of live clinical availability.
