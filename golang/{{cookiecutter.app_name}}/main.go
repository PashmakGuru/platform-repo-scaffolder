package main

import (
	"log"
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	log.Println("setting up server for {{ app_name }}...")

	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"message": "hello from {{ app_name }}!",
		})
	})

	// Listen and serve on 0.0.0.0:8080
	r.Run()
}
