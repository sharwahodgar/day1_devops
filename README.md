# 🤖 CI/CD Pipeline for Node.js Web App

This repository contains a simple Node.js Express application bundled with a complete Continuous Integration/Continuous Deployment (CI/CD) pipeline, automated using **GitHub Actions** and **Docker**.

The goal of this project was to automate the entire process from code change to image deployment.

---

## 🚀 The CI/CD Workflow

The pipeline is defined in `.github/workflows/main.yml`. It triggers automatically on every push to the `main` branch and executes the following sequence:

1.  **Checkout Code:** Retrieves the latest code from the repository.
2.  **Test (CI):** Runs the placeholder `npm test` script to ensure code integrity.
3.  **Login to DockerHub:** Uses secure GitHub Secrets (`DOCKER_USERNAME` and `DOCKER_PASSWORD`) to log into the Docker registry.
4.  **Build & Push (CD):** Builds the Docker image based on the provided `Dockerfile` and pushes the final container image to DockerHub, tagged as `latest`.

### Tools Used

* **Application:** Node.js (Express)
* **Containerization:** Docker
* **Automation:** GitHub Actions
* **Registry:** DockerHub

### Deliverables

The successful execution of this workflow results in a new Docker image available in the DockerHub registry, demonstrating a fully automated **test → build → push** process.

---

## 🔧 How to Run Locally (Optional)

1.  **Build the image:**
    ```bash
    docker build -t web-app-robot .
    ```
2.  **Run the container:**
    ```bash
    docker run -d -p 3000:3000 web-app-robot
    ```
3.  **Access the app:** Open your browser to `http://localhost:3000`