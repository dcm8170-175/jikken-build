from fastapi import Cookie, FastAPI, Request
from typing import Optional
import os

app = FastAPI()

# ルート
@app.get('/')
async def index():
    hostname = os.uname()[1]
    return{"msg":"Hello world!","hostname":hostname}
