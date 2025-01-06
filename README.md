# 🚀 JobHunter - Job Portal Web Application

A simple job portal web application built with Spring Boot and JSP where businesses can post jobs and view all job listings. The application follows the MVC (Model-View-Controller) architecture pattern.

## 🛠️ Technology Stack
- **Framework:** Spring Boot 3.x
- **View Technology:** JSP (JavaServer Pages)
- **Frontend:** 
  - Bootstrap 5.3.2
  - HTML/CSS
  - JavaScript
- **Build Tool:** Maven
- **Java Version:** Java 17 or higher
- **Dependencies:**
  - Spring Web MVC
  - Apache Tomcat (Embedded)
  - JSTL
  - Lombok
  - Jakarta EE

## ⭐ Features
- Post new job listings
- View all posted jobs
- Multiple technology stack selection
- Responsive design
- Form validation

## 📁 Project Structure
```bash
JobHunter/
├── src/main/
│   ├── java/
│   │   └── com/springprojects/JobHunter/
│   │       ├── controller/
│   │       │   └── JobController.java
│   │       ├── model/
│   │       │   └── JobPost.java
│   │       ├── repository/
│   │       │   └── JobRepo.java
│   │       └── JobHunterApplication.java
│   ├── resources/
│   │   └── application.properties
│   └── webapp/
│       └── views/
│           ├── home.jsp
│           ├── addjob.jsp
│           ├── success.jsp
│           └── viewalljobs.jsp
└── pom.xml
```

## 🚀 How to Run

1. **Prerequisites**
   - Java 17 or higher installed
   - Maven installed
   - An IDE (preferably IntelliJ IDEA or Spring Tool Suite)

2. **Clone the Repository**
   ```bash
   git clone [repository-url]
   cd JobHunter
   ```

3. **Configure Application**
   - Open `src/main/resources/application.properties`
   - Default server port is 8080, you can modify if needed
   ```properties
   server.port=8080
   spring.mvc.view.prefix=/views/
   spring.mvc.view.suffix=.jsp
   ```

4. **Build the Project**
   ```bash
   mvn clean install
   ```

5. **Run the Application**
   ```bash
   mvn spring-boot:run
   ```
   Or run `JobHunterApplication.java` from your IDE

6. **Access the Application**
   - Open a web browser and go to `http://localhost:8080`
   - You should see the home page with options to add jobs or view all jobs

## 🛠️ Detailed Setup Instructions

### Prerequisites Setup

1. **Java Installation**
   ```bash
   # Check if Java is installed
   java -version
   
   # Should show Java 17 or higher. If not, install Java 17:
   # For Ubuntu/Debian
   sudo apt install openjdk-17-jdk
   
   # For MacOS (using Homebrew)
   brew install openjdk@17
   ```

2. **Maven Installation**
   ```bash
   # Check Maven installation
   mvn -version
   
   # For Ubuntu/Debian
   sudo apt install maven
   
   # For MacOS
   brew install maven
   ```

### Project Configuration

**Application Properties**
   ```properties
   # Server Configuration
   server.port=8080
   
   # JSP Configuration
   spring.mvc.view.prefix=/views/
   spring.mvc.view.suffix=.jsp
   ```

## 📖 Usage

1. **Home Page**
   - Navigate between "Add Job" and "View All Jobs" options
   - Clean and intuitive interface

2. **Adding a Job**
   - Click on "Add Job"
   - Fill in the required fields:
     - Post ID
     - Post Profile
     - Post Description
     - Required Experience
     - Select Technology Stack (multiple selections possible)
   - Submit the form

3. **Viewing Jobs**
   - Click on "View All Jobs" to see all posted jobs
   - Jobs are displayed in a grid layout with complete details

## 👨‍💻 Development

To extend or modify this project:

1. **Adding New Features**
   - Create new model classes in `model` package
   - Add corresponding controller methods in `controller` package
   - Create new JSP views in `webapp/views` directory

2. **Modifying UI**
   - CSS styles are included in each JSP file
   - Bootstrap classes are used for responsive design

3. **Adding Data Persistence**
   - Currently uses in-memory list
   - Can be extended to use databases by adding Spring Data JPA

## 🤝 Contributing
Feel free to fork this project and submit pull requests for any improvements.

## ✨ Acknowledgments

Built with the following amazing technologies:

![Spring Boot](https://img.shields.io/badge/Spring_Boot-3.x-6DB33F?style=for-the-badge&logo=spring&logoColor=white)
![Java](https://img.shields.io/badge/Java-17+-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![JSP](https://img.shields.io/badge/JSP-Pages-red?style=for-the-badge&logo=java&logoColor=white)
![Bootstrap](https://img.shields.io/badge/Bootstrap-5.3.2-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white)

![Maven](https://img.shields.io/badge/Maven-3.x-C71A36?style=for-the-badge&logo=apache-maven&logoColor=white)

![Lombok](https://img.shields.io/badge/Lombok-1.18.x-FF5722?style=for-the-badge&logo=lombok&logoColor=white)
