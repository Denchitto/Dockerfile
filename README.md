# Создаем образ:
    # docker build -t denchitto/parcel-tracker:v1 .

# Монтируем БД при запуске контейнера
#git bash:
    # docker run -v //$(pwd)/tracker.db:/app/tracker.db denchitto/parcel-tracker:v1
#Powershell:
    # docker run -v ${pwd}/tracker.db:/app/tracker.db denchitto/parcel-tracker:v1