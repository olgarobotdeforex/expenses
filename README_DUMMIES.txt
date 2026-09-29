MIS GASTOS V2 — GUÍA PARA PRINCIPIANTES

QUÉ INCLUYE
- Foto del ticket desde iPhone/Android.
- OCR local para intentar detectar fecha, importe y comercio.
- Concepto y tipo de gasto.
- Edición y borrado.
- Foto original guardada en el dispositivo.
- Filtros por fecha, tipo y búsqueda.
- Informes mensuales, anuales y totales.
- Gráficos.
- Excel y CSV.
- Copia/restauración JSON.
- Opcional: sincronización iPhone + PC mediante Supabase.

INSTALACIÓN SIMPLE CON GITHUB PAGES
1. Entra en https://github.com y crea una cuenta.
2. Pulsa + arriba a la derecha > New repository.
3. Nombre: mis-gastos. Puedes hacerlo público si usas GitHub Free.
4. Pulsa Create repository.
5. Dentro del repositorio pulsa Add file > Upload files.
6. Descomprime este ZIP en el ordenador.
7. Arrastra al navegador TODOS estos archivos: index.html, manifest.json, sw.js, icon.svg y supabase.sql.
8. Pulsa Commit changes.
9. En el repositorio: Settings > Pages.
10. En Build and deployment selecciona Deploy from a branch.
11. Branch: main. Folder: / (root). Pulsa Save.
12. Espera unos minutos. GitHub te mostrará el enlace del sitio.
13. Abre ese enlace en Safari del iPhone.
14. Pulsa Compartir > Añadir a pantalla de inicio > Añadir.
15. Aparecerá el icono Mis Gastos.

IMPORTANTE
GitHub Pages publica el código de la aplicación. NO subas aquí tus tickets, fotos ni archivos de gastos. Los datos se guardan en el navegador del dispositivo o, si configuras la nube, en Supabase.

SINCRONIZACIÓN ENTRE IPHONE Y PC (SUPABASE)
1. Entra en https://supabase.com y crea una cuenta.
2. Crea un proyecto nuevo. Guarda bien la contraseña de la base de datos.
3. En el proyecto abre SQL Editor > New query.
4. Abre el archivo supabase.sql de esta carpeta.
5. Copia TODO su contenido y pégalo en SQL Editor.
6. Pulsa Run.
7. En Supabase abre Connect (o Settings > API Keys según la interfaz).
8. Copia Project URL y la Publishable Key (empieza por sb_publishable_...). NO uses una Secret key.
9. En Mis Gastos > Ajustes pega ambos datos y pulsa Guardar conexión.
10. Crea una cuenta dentro de Mis Gastos con tu email y una contraseña.
11. Inicia sesión.
12. Pulsa Sincronizar ahora.

SEGURIDAD
- La Publishable Key puede estar en una aplicación web; la seguridad real la hacen las políticas RLS de Supabase.
- NUNCA pongas una Secret key de Supabase en index.html.
- Si vas a guardar datos fiscales importantes, conserva también las copias JSON/Excel.

CÓMO USARLA
1. Abre Mis Gastos.
2. Pulsa Nuevo.
3. Pulsa el cuadro de foto y elige Cámara.
4. Fotografía el ticket.
5. Espera a que termine el OCR.
6. Comprueba fecha e importe.
7. Escribe concepto.
8. Selecciona tipo.
9. Pulsa Guardar gasto.

EXCEL
En Gastos > Excel se descarga mis_gastos.xlsx. Puedes abrirlo directamente con Excel en Windows.

COPIA DE SEGURIDAD
En Gastos > Copia de seguridad se descarga un JSON con los gastos y las fotos locales. Guárdalo en una carpeta segura.

SI ALGO SALE MAL
- Si GitHub muestra 404: espera unos minutos y comprueba Settings > Pages.
- Si la cámara no aparece: abre la web con Safari/Chrome y concede permiso a la cámara.
- Si el OCR se equivoca: corrige fecha/importe antes de guardar.
- Si no sincroniza: comprueba Project URL, Publishable Key, que ejecutaste supabase.sql y que has iniciado sesión.
