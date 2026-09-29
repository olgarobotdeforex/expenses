MIS GASTOS - VERSION 1

Esta versión es una PWA: funciona en iPhone/Android y ordenador desde un navegador.
Los gastos se guardan localmente en el dispositivo/navegador mediante localStorage.

IMPORTANTE: el OCR usa Tesseract.js y las hojas Excel usan SheetJS desde CDN. La primera vez necesita Internet para cargar esas librerías.

INSTALACIÓN RECOMENDADA EN IPHONE
1. Sube esta carpeta a un alojamiento HTTPS (por ejemplo GitHub Pages).
2. Abre la dirección en Safari.
3. Pulsa Compartir -> Añadir a pantalla de inicio.
4. Abre "Mis Gastos" desde el icono.
5. Pulsa el campo de foto y elige Cámara.

INSTALACIÓN EN WINDOWS PARA PROBARLA
1. Instala Python desde python.org.
2. Abre CMD en esta carpeta.
3. Ejecuta: python -m http.server 8000
4. En el ordenador abre http://localhost:8000

EXPORTACIÓN
- Descargar Excel (.xlsx): abre directamente con Excel.
- Descargar CSV: compatible con Excel y otros programas.

LIMITACIÓN DE ESTA V1
Los datos se almacenan en el navegador del dispositivo. Si borras los datos del navegador puedes perderlos. Para una V2 conviene añadir base de datos en la nube, usuario/contraseña, copia automática y sincronización entre móvil y ordenador.
