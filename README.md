# Задание

Реализовать тривиальное HTTP "Hello, world!" web-приложение на любом удобном Вам языке программирования и завернуть его в clound native окружение.

Требования:
 - Dockerfile, который докеризует приложение.
 - Приложение должно иметь health-check и ready-check.
 - Приложение должно предоставлять metrics endpoint для Prometheus (метрики - на Ваше усмотрение).
 - Grafana dashboard с визуализацией метрик.
 - docker-compose.yml, который запускает приложение со всем необходимым окружением (Prometheus и Grafana).

Временем и инструментом для выполнение тестового задания Вы не ограничены. Любые другие аспекты реализации, которые не указаны в требованиях, могут быть выполнены на Ваше усмотрение.

Следующее будет плюсом:
 - Kubernetes спеки приложения, либо Helm-чарт, для запуска его в Minikube (в дополнение к docker-compose.yaml).
 - E2E-тесты, которые проверяют корректность докеризации приложения.

Тестовое задание должно быть предоставлено в виде ссылки на публичный репозиторий (GitHub, BitBucket, GitLab) с исходным кодом. Приветствуется README.md файл с обзором реализации и/или шагами по запуску.

# Реализация
## шаг первый - сборка docker контейнера, который может поприветствовать мир.
1. main.go - написана простенькая программа на Golang, выводящая 'Hello World!', - said GoLang.
2. Dockerfile - описание многоступенчатой сборки docker образа
3. script.sh - набор команд сборки docker образа, запуска контейнера на порту 8080 и запрос для получения ожидаемого результата.

## шаг второй - подключение дополнительный контейнеров docker с образами (Prometheus и Grafana), упаковка в docker-compose
1. 

## шаг третий - реализация health-check и ready-check, эндпоинтов матрики для Prometheus и Grafana

## шаг четвёртый - создание Helm чарта.

## шаг пятый - E2E-тесты
