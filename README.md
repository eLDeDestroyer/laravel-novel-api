# 📚 E-Novel API with Laravel (JWT + Laravel 12 + MySQL)

A RESTful API to manage books, users, and categories built using **Laravel 12**, **JWT**, and **MySQL**.

## 🚀 Tech Stack

- **Laravel 12** — PHP Web Framework
- **JWT** — JSON Web Token authentication (e.g. tymon/jwt-auth)
- **MySQL** — Relational database
- **Intervention/Image** — For image uploads and resizing (optional)

---

## ✨ Features

- ✅ JWT Register & Login
- ✅ Book CRUD (Create, Read, Update, Delete)
- ✅ Book Pagination & Page Management
- ✅ Category Assignment
- ✅ Action (Like, Seen, Page Read) Tracking
- ✅ Get Book by Title / Category / Popular / Recent

---

## 🗂️ Project Overview

🧭 **ERD Visual Link**  
[View on DrawSQL](https://drawsql.app/teams/devmare/diagrams/novel)

🌱 **SQL Seeder File**  
[View Seeder on GitHub](https://github.com/eLDeDestroyer/laravel-novel-api/blob/page/file/e_novel.sql)

---

# Auth

## Register || POST
`{host}/api/signup`

### Request

```json
{
  "name": "test",
  "username": "test",
  "password": "test123"
}
```

### Response

```json
{
  "data": {
    "username": "sacho",
    "token": "<JWT_TOKEN>"
  },
  "message": "Success Register",
  "success": true
}
```

## Login || POST
`{host}/api/signin`

### Request

```json
{
  "username": "test",
  "password": "test123"
}
```

### Response

```json
{
  "data": {
    "username": "sacho",
    "token": "<JWT_TOKEN>"
  },
  "message": "Success Login",
  "success": true
}
```

# User

## Get Me  || Get
`{host}/api/auth/user`

### Response

```json
{
  "data": {
    "username": "sacho",
    "name": "jadon",
    "books": [...]
  },
  "message": "Success Get User",
  "success": true
}
```

## Get User By Username || Get
`{host}/api/auth/user/{username}`

### Response

```json
{
  "data": {
    "username": "sacho",
    "name": "jadon",
    "books": [...]
  },
  "message": "Success Get User {username}",
  "success": true
}
```

## Get book by action user || GET 
`{host}/api/auth/user/action/{action}`

### Response

```json
{
  "data": {
    "books": [...]
  },
  "message": "Success Get Book",
  "success": true
}
```

## Add action to book || POST 
`{host}/api/auth/user/action/{action}/{book_id}`

### Response

```json
{
  "data": null,
  "message": "Success action to book",
  "success": true
}
```

# Book

## Get Categories || GET 
`{host}/api/auth/categories`

### Response

```json
{
  "data": [...],
  "message": "Success Get Book",
  "success": true
}
```

## Get Book By Title || GET 
`{host}/api/auth/book/search?title=`

### Response

```json
{
  "data": [...],
  "message": "Success Get Book",
  "success": true
}
```

## Get Recent Book || GET 
`{host}/api/auth/book/new`

### Response

```json
{
  "data": [...],
  "message": "Success Get Book",
  "success": true
}
```

## Get Book Most Like || GET 
`{host}/api/auth/book/like`

### Response

```json
{
  "data": [...],
  "message": "Success Get Book",
  "success": true
}
```

## Get Book By Category || GET 
`{host}/api/auth/book/{categoryId}`

### Response

```json
{
  "data": [...],
  "message": "Success Get Book",
  "success": true
}
```

## Get Book Detail || GET 
`{host}/api/auth/book/detail/{id}`

### Response

```json
{
  "data": {
    "title": "hayam waruk",
    "description": "alkisah...",
    "image_path": "/public/image/hayam.jpg",
    "name": "Karatos bin zeus",
    "action": {
        "seen": 12,
        "like": 5,
        "page": 10
    },
    "pages": [...]
  },
  "message": "Success Get Book",
  "success": true
}
```

## Add Book || POST
`{host}/api/auth/book/add`

### Request

| Field       | Type   | Required |
|-------------|--------|----------|
| title       | string | Yes      |
| description | string | Yes      |
| image       | file   | Yes      |

### Response

```json
{
  "data": 12,
  "message": "Success Add Book {title}",
  "success": true
}
```

## Add Categories Book || POST
`{host}/api/auth/book/categories/add`

### Request

```json
{
  "book_id": 12,
  "category_id": [1, 2, 3, 4]
}
```

### Response

```json
{
  "data": null,
  "message": "Success Add Category",
  "success": true
}
```

## Update Book || PATCH
`{host}/api/auth/book/update/{book_id}`

### Request

| Field       | Type   | Required |
|-------------|--------|----------|
| title       | string | Yes      |
| description | string | Yes      |
| image       | file   | Yes      |
| user_id     | number | Yes      |

### Response

```json
{
  "data": {
    "book_id": 12
  },
  "message": "Success Update Book",
  "success": true
}
```

## Update Categories Book || POST
`{host}/api/auth/book/categories/update`

### Request

```json
{
  "book_id": 12,
  "category_id": [1, 2, 3, 4]
}
```

### Response

```json
{
  "data": null,
  "message": "Success Update Category",
  "success": true
}
```

## Delete Book || DEL
`{host}/api/auth/book/delete/{book_id}`

### Response

```json
{
  "data": null,
  "message": "Success Delete Book",
  "success": true
}
```

# Page

## Get Page Book || Get
`{host}/api/auth/book/page/{book_id}/{page}`

### Response

```json
{
  "data": {
    "text": "kisah ini berwala...",
    "page": 2,
    "prev_page": 1,
    "next_page": 3
  },
  "message": "Success Get Page",
  "success": true
}
```

## Add Page Book || POST
`{host}/api/auth/book/page/add`

### Request

```json
{
  "text": "kisah ini berlanjut...",
  "book_id": 12
}
```

### Response

```json
{
  "data": null,
  "message": "Success Add Page",
  "success": true
}
```

## Update Page Book || PATCH
`{host}/api/auth/book/page/update`

### Request

```json
{
  "page": 1,
  "text": "kisah ini berlanjut...",
  "book_id": 12
}
```

### Response

```json
{
  "data": null,
  "message": "Success Update Page",
  "success": true
}
```

---

## 🛡️ License

MIT License © 2025 — Built with ❤️ using Fiber & Golang