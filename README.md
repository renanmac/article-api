# Article API  

### Instructions:

| METHOD | Path | Status | Info |
|--|--|--|--|
| GET | / | 200 OK | Return All Articles |
| GET | /api/v1/articles | 200 OK | Return All Articles
| GET | /api/v1/articles/1 | 200 OK |Return Article where id=1
| POST | /api/v1/articles | 201 Created |Create Article (Params: article[title], article[content])
| PATCH/PUT | /api/v1/articles/1 | 200 OK | Update Article where id=1 (Params: article[title], article[content])
| DELETE | /api/v1/articles/1 | 204 No content | Delete Article where id=1

