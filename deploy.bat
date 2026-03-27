rem 1. Build JAR(주석처리됨)
call mvnw.cmd clean package

rem 2. Dockerfile을 시행시킨다.
call docker build -t belokana/order-service:1.0 .

rem 3. 도커허브에 이미지 저장
call docker push belokana/order-service:1.0

rem 4. ssh접속 / pull
call ssh tiger@localhost "cd /home/tiger/order-service && docker compose pull && docker compose up -d"