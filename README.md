# EasyQuiz

EasyQuiz is a lightweight, clean, and simple quiz application written in Go. It was originally designed and used for an international festival to showcase a quiz about France.

## 🚀 Live Demo

You can see a live instance of the quiz (France edition) at: [quiz.cyprien.ovh](https://quiz.cyprien.ovh)

## ✨ Features

- **Simple & Clean UI:** Focus on the content with a minimalist design.
- **JSON Driven:** Quizzes are easily configurable via a `quiz.json` file.
- **Fast:** Powered by Go's efficient HTTP server and templates.
- **Responsive:** Works well on both desktop and mobile devices.

## 🛠️ Installation

### Prerequisites

- [Go](https://go.dev/doc/install) (1.16 or later)

### Running locally

1. Clone the repository:
   ```bash
   git clone https://github.com/cypriennn/EasyQuiz.git
   cd EasyQuiz
   ```

2. Run the application:
   ```bash
   go run main.go
   ```

3. Open your browser and navigate to `http://localhost:8080`.

## 📦 Deployment

EasyQuiz is designed to be easily containerized and deployed.

### Example with Docker & Nginx Proxy Manager

To deploy with Docker, you can use the provided Dockerfile.

Then, you can use **Nginx Proxy Manager** to handle SSL and proxy requests to your container on port `8080`.

## ⚙️ Configuration

The quiz content is managed in `quiz.json`. You can customize the title, background image, time limits, and questions:

```json
{
  "title": "My Awesome Quiz",
  "image_url": "https://example.com/background.jpg",
  "time_limits_per_type": {
    "multiple_choice": 20,
    "text": 30
  },
  "questions": [
    {
      "type": "multiple_choice",
      "text": "What is the capital of France?",
      "options": ["Lyon", "Paris", "Marseille"],
      "answer": "Paris"
    }
  ]
}
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

