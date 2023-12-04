package main

import (
	"log"
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	log.Println("setting up web server (http://0.0.0.0:8080) for {{ cookiecutter.app_name }}...")

	gin.SetMode(gin.ReleaseMode)
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"message": "hello from {{ cookiecutter.app_name }}!",
		})
	})

	// Listen and serve on 0.0.0.0:8080
	r.Run()
}
