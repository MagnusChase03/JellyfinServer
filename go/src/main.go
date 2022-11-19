package main

import (

	"net/http"
	"github.com/gin-gonic/gin"

)

type message struct {

	Status string `json:"status"`

}

var welcomes = []message {{Status: "Hello World!"},}

func main() {

	router := gin.Default()
	router.Use(CORSMiddleware())

	router.GET("/go", getWelcome)
	router.POST("/go", postWelcome)

	router.Run("0.0.0.0:3000")

}

func CORSMiddleware() gin.HandlerFunc {
	return func(c *gin.Context) {
		c.Writer.Header().Set("Access-Control-Allow-Origin", "*")
		c.Writer.Header().Set("Access-Control-Allow-Credentials", "true")
		c.Writer.Header().Set("Access-Control-Allow-Headers", "Content-Type, Content-Length, Accept-Encoding, X-CSRF-Token, Authorization, accept, origin, Cache-Control, X-Requested-With")
		c.Writer.Header().Set("Access-Control-Allow-Methods", "POST, OPTIONS, GET, PUT")

		if c.Request.Method == "OPTIONS" {
			c.AbortWithStatus(204)
			return
		}

		c.Next()
	}
}

func getWelcome(c *gin.Context) {

	c.IndentedJSON(http.StatusOK, welcomes)

}

func postWelcome(c *gin.Context) {

	var newWelcome message

	if err := c.BindJSON(&newWelcome); err != nil {

		return

	}

	welcomes = append(welcomes, newWelcome)
	c.IndentedJSON(http.StatusCreated, newWelcome)

}