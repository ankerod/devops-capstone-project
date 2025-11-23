from fastapi import FastAPI

app = FastAPI()

students_data = [
    {"student_id": 1, "name": "Alice", "age": 18, "grade": "A"},
    {"student_id": 2, "name": "Bob", "age": 17, "grade": "B"},
    {"student_id": 3, "name": "Charlie", "age": 19, "grade": "A-"},
    {"student_id": 4, "name": "Diana", "age": 18, "grade": "C+"},
]


@app.get("/")
def read_root():
    return {"projectname": "devops-capstone-project", "additional_info": "Check /users"}


@app.get("/students")
def students():
    return students_data


@app.get("/students/{student_id}")
def students_with_id(student_id: int):
    for student in students_data:
        if student["student_id"] == student_id:
            return student
