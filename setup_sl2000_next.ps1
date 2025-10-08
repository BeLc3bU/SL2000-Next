# ==================================================
# Script de creación de estructura para SL2000-Next
# ==================================================
# Uso: .\setup_sl2000_next.ps1
# ==================================================

$projectRoot = "SL2000-Next"
Write-Host "Creando estructura del proyecto $projectRoot ..."

New-Item -ItemType Directory -Force -Path "$projectRoot\backend\src\main\java\com\sl2000next\controllers"
New-Item -ItemType Directory -Force -Path "$projectRoot\backend\src\main\java\com\sl2000next\services"
New-Item -ItemType Directory -Force -Path "$projectRoot\backend\src\main\java\com\sl2000next\repositories"
New-Item -ItemType Directory -Force -Path "$projectRoot\backend\src\main\java\com\sl2000next\models"
New-Item -ItemType Directory -Force -Path "$projectRoot\backend\src\main\java\com\sl2000next\config"
New-Item -ItemType Directory -Force -Path "$projectRoot\backend\src\main\java\com\sl2000next\utils"
New-Item -ItemType Directory -Force -Path "$projectRoot\backend\src\main\resources"

New-Item -ItemType Directory -Force -Path "$projectRoot\frontend\src\components"
New-Item -ItemType Directory -Force -Path "$projectRoot\frontend\src\pages"
New-Item -ItemType Directory -Force -Path "$projectRoot\frontend\src\services"
New-Item -ItemType Directory -Force -Path "$projectRoot\frontend\src\assets"

New-Item -ItemType Directory -Force -Path "$projectRoot\database\init"
New-Item -ItemType Directory -Force -Path "$projectRoot\docs"

# Crear archivos vacíos
New-Item "$projectRoot\backend\pom.xml" -ItemType File
New-Item "$projectRoot\backend\Dockerfile" -ItemType File
New-Item "$projectRoot\backend\src\main\resources\application.yml" -ItemType File
New-Item "$projectRoot\backend\src\main\resources\schema.sql" -ItemType File

New-Item "$projectRoot\frontend\package.json" -ItemType File
New-Item "$projectRoot\frontend\Dockerfile" -ItemType File
New-Item "$projectRoot\frontend\src\App.js" -ItemType File

New-Item "$projectRoot\database\Dockerfile" -ItemType File
New-Item "$projectRoot\database\docker-compose.yml" -ItemType File
New-Item "$projectRoot\database\init\init.sql" -ItemType File

New-Item "$projectRoot\docs\README.md" -ItemType File
New-Item "$projectRoot\docs\agent.md" -ItemType File
New-Item "$projectRoot\docs\agent.yaml" -ItemType File
New-Item "$projectRoot\docs\project_issues.yml" -ItemType File
New-Item "$projectRoot\docs\prompt_master.txt" -ItemType File

New-Item "$projectRoot\.gitignore" -ItemType File

Write-Host "✅ Estructura creada correctamente en .\$projectRoot"
