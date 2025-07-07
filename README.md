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
[View Seeder on GitHub](https://github.com/eLDeDestroyer/golang-novel-api/blob/main/file/e_novel.sql)

---

# 🔐 Auth

## Register || POST  
`{host}/api/signup`

```json
{
  "name": "test",
  "username": "test",
  "password": "test123"
}
```

## Login || POST  
`{host}/api/signin`

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

---

# 👤 User

## Get Me || GET  
`{host}/api/auth/user`

## Get User By Username || GET  
`{host}/api/auth/user/{username}`

## Get Book by User Action || GET  
`{host}/api/auth/user/action/{action}`

## Add Action to Book || POST  
`{host}/api/auth/user/action/{action}/{book_id}`

---

# 📚 Book

## Get Categories || GET  
`{host}/api/auth/categories`

## Get Book by Title || GET  
`{host}/api/auth/book/search?title=`

## Get Recent Books || GET  
`{host}/api/auth/book/new`

## Get Most Liked Books || GET  
`{host}/api/auth/book/like`

## Get Books by Category || GET  
`{host}/api/auth/book/{categoryId}`

## Get Book Detail || GET  
`{host}/api/auth/book/detail/{id}`

```json
{
  "data": {
    "title": "hayam waruk",
    "description": "alkisah...",
    "image_path": "/uploads/hayam.jpg",
    "name": "Karatos bin Zeus",
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

---

## Add Book || POST  
`{host}/api/auth/book/add`

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

---

## Add Book Categories || POST  
`{host}/api/auth/book/categories/add`

```json
{
  "book_id": 12,
  "category_id": [1, 2, 3, 4]
}
```

---

## Update Book || PATCH  
`{host}/api/auth/book/update/{book_id}`

| Field       | Type   | Required |
|-------------|--------|----------|
| title       | string | Yes      |
| description | string | Yes      |
| image       | file   | No       |
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

---

## Update Book Categories || POST  
`{host}/api/auth/book/categories/update`

```json
{
  "book_id": 12,
  "category_id": [1, 2, 3, 4]
}
```

---

## Delete Book || DELETE  
`{host}/api/auth/book/delete/{book_id}`

---

# 📄 Page

## Get Page of Book || GET  
`{host}/api/auth/book/page/{book_id}/{page}`

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

---

## Add Page || POST  
`{host}/api/auth/book/page/add`

```json
{
  "text": "kisah ini berlanjut...",
  "book_id": 12
}
```

---

## Update Page || PATCH  
`{host}/api/auth/book/page/update`

```json
{
  "page": 1,
  "text": "kisah ini berlanjut...",
  "book_id": 12
}
```

---

## 🛡️ License

MIT License © 2025 — Built with ❤️ using Laravel 12 + JWT