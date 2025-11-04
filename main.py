from fastapi import FastAPI, HTTPException
from pydantic import BaseModel

app = FastAPI()

# 10 users with passwords
users_db = {
    "admin": "Hclplmcloud@123",
    "thanuja": "Hclplmcloud@123",
    "Dara" : "Hclplmcloud@123",
    "username" : "password"
}

class LoginRequest(BaseModel):
    username: str
    password: str

@app.post("/login")
def login(request: LoginRequest):
    if request.username in users_db and users_db[request.username] == request.password:
        return {"message": f"Welcome, {request.username}!"}
    else:
        raise HTTPException(status_code=401, detail="Invalid username or password")
