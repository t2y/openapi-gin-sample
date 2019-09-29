# openapi-gin-sample

gin microserver sample by generating with openapi-generator

## How to build

to download jar file and generate source code with openapi-generator from [spec/openapi.yaml](spec/openapi.yaml).

```bash
$ make download generate
```

generated code is in `go` directory by default.

```bash
$ tree go
go
├── README.md
├── api_books.go
├── api_default.go
├── api_user.go
├── api_users.go
├── model_book.go
├── model_byte_stream.go
├── model_format.go
├── model_frequency.go
├── model_generic_error.go
├── model_inline_response_200.go
├── model_inline_response_201.go
├── model_input_stream.go
├── model_stream_format.go
├── model_user.go
└── routers.go

0 directories, 16 files
```

to build go sources.

```bash
$ make
go build -o main main.go
```

to run gin server.

```bash
$ ./main
2019/09/29 15:13:50 Server started
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:	export GIN_MODE=release
 - using code:	gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /                         --> github.com/t2y/openapi-gin-sample/go.Index (3 handlers)
[GIN-debug] POST   /books/create             --> github.com/t2y/openapi-gin-sample/go.CreateBook (3 handlers)
[GIN-debug] GET    /books/book/:id           --> github.com/t2y/openapi-gin-sample/go.GetBookById (3 handlers)
[GIN-debug] GET    /books/list/:frequency    --> github.com/t2y/openapi-gin-sample/go.GetBooks (3 handlers)
[GIN-debug] GET    /stream/byte              --> github.com/t2y/openapi-gin-sample/go.GetByte (3 handlers)
[GIN-debug] GET    /stream/input             --> github.com/t2y/openapi-gin-sample/go.GetInput (3 handlers)
[GIN-debug] GET    /ping                     --> github.com/t2y/openapi-gin-sample/go.GetPing (3 handlers)
[GIN-debug] GET    /users/list               --> github.com/t2y/openapi-gin-sample/go.GetUsers (3 handlers)
[GIN-debug] DELETE /users/user/:id           --> github.com/t2y/openapi-gin-sample/go.DeleteUser (3 handlers)
[GIN-debug] POST   /users/create             --> github.com/t2y/openapi-gin-sample/go.CreateUser (3 handlers)
[GIN-debug] GET    /users/user/:id           --> github.com/t2y/openapi-gin-sample/go.GetUserById (3 handlers)
[GIN-debug] PUT    /users/user/:id           --> github.com/t2y/openapi-gin-sample/go.UpdateUser (3 handlers)
[GIN-debug] Listening and serving HTTP on :8080
```
