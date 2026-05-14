# API Testing Task — reqres.in

## Endpoint Tested
https://reqres.in/api/users/2
**Header:** x-api-key: reqres-free-v1

---

## 1. Retrieve User Data (GET Request)
**Tool used:** curl / Postman
**Status Code:** 200 OK
**Response Body:**
{
  "data": {
    "id": 2,
    "email": "janet.weaver@reqres.in",
    "first_name": "Janet",
    "last_name": "Weaver",
    "avatar": "https://reqres.in/img/faces/2-image.jpg"
  }
}

## 2. First Name
Janet

## 3. URL from Response Body
https://contentcaddy.io?utm_source=reqres&utm_medium=json&utm_content=referral

## 4. Update Email Address (PUT Request)
Request body: { "email": "youremail@example.com" }
Status Code: 200 OK

## 5. Delete Last Name (PATCH Request)
Request body: { "last_name": "" }
Status Code: 200 OK
