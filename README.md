# CareerCompass 🎯

CareerCompass is a Career Guidance Portal developed using Flask, HTML, CSS, Bootstrap, and MySQL. It helps students explore different career options after 10th standard, understand various streams, view career roadmaps, and discover trending careers.

---

## Features

- Career guidance after 10th
- Science, Commerce and Arts streams
- Dynamic career details
- Career roadmaps
- Trending careers
- Contact form
- Career Recommendation
- Newsletter subscription
- Responsive user interface
- MySQL database integration

---

## Technologies Used

- Python
- Flask
- HTML5
- CSS3
- Bootstrap 5
- MySQL
- Jinja2

---

## Project Structure

```
CareerCompass/
│
├── app.py
├── requirements.txt
├── projectcareercompass.sql
├── README.md
│
├── static/
│   ├── css/
│   └── images/
│
└── templates/
    ├── index.html
    ├── about.html
    ├── after10th.html
    ├── career_details.html
    ├── career_recommendation.html
    ├── contact.html
    ├── guidance.html
    ├── roadmap.html
    ├── streams.html
    └── trending.html
```

---

## Database

The database file is included.

```
projectcareercompass.sql
```

Import this file into phpMyAdmin before running the project.

---

## Installation

### Clone Repository

```bash
git clone https://github.com/siddhi-pawaskar/CareerCompass.git
```

### Go inside project

```bash
cd CareerCompass
```

### Install Dependencies

```bash
pip install -r requirements.txt
```

### Import Database

Open phpMyAdmin and import

```
projectcareercompass.sql
```

---

## Run Project

```bash
python app.py
```

Then open

```
http://127.0.0.1:5000/
```

---

## Database Tables

- careers
- contacts
- roadmaps
- streams
- subscribers
- trending

---

## Screenshots

###

![Home](screenshot)

---

## Author

**Siddhi Pawaskar**

Computer Engineering Student

---

## License

This project is created for educational purposes.
