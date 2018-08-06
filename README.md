# Article API

### Instructions:

1- Run `rails db:migrate`

2- Run `rails db:seed` to create 20 Articles (optional)

3- `GET "/api/v1/articles"` return 10 Articles, `"/api/v1/articles?page={page}` to navigate between pages

### Endpoints:

| METHOD | Path | Status | Info |
|--|--|--|--|
| GET | / | 200 OK | Return All Articles, limit 10 per page |
| GET | /api/v1/articles | 200 OK | Return All Articles, limit 10 per page |
| GET | /api/v1/articles/{id} | 200 OK |Return Article where id={id}|
| POST | /api/v1/articles | 201 Created |Create Article (Params: article[title], article[content])|
| PATCH/PUT | /api/v1/articles/{id} | 200 OK | Update Article where id={id} (Params: article[title], article[content])|
| DELETE | /api/v1/articles/{id} | 204 No content | Delete Article where id={id}|

### Example:

`GET "/api/v1/articles/1"`
```json
{
	"id": 1,
	"title": "Ruby",
	"content": "Ruby on Rails",
	"created_at": "2018-08-03T18:40:11.031Z",
	"updated_at": "2018-08-03T18:40:11.031Z",
}
```