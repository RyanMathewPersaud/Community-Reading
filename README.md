# Community Reading

## Window machine setup steps:

- (1) Download latest version of Nodejs (https://nodejs.org/dist/v15.6.0/node-v15.6.0-x64.msi)

- (2) Download latest version of golang (https://golang.org/dl/)

- (3) Install a version of PostgresSQL (https://www.postgresql.org/download/)

- (4) Clone repository into any location of your choice

- (5) Go to where the repoistory was cloned, then folder server, then folder config and add your postgres sql information there.

  - Note: Please do not commit your db.config with your postgres credentials.

- (6) Execute the folder two steps to build and start the applcation

  - Go frontend folder and run `yarn run build`
  - Go server folder and run `go run server.go`

- (7) Go into your browser and enter url http://localhost:5001
