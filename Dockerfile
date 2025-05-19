# Sử dụng hình ảnh OpenJDK có Maven
FROM maven:3.9.3-eclipse-temurin-17

# Đặt thư mục làm việc trong container
WORKDIR /app

# Copy toàn bộ code vào container
COPY . .

# Di chuyển vào thư mục chứa pom.xml và build
RUN cd management && mvn clean install -DskipTests

# Chạy ứng dụng
CMD ["java", "-jar", "management/target/management-0.0.1-SNAPSHOT.jar"]
