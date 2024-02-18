package main

import "github.com/gin-gonic/gin"

func main() {
	engine := gin.Default()
	engine.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "Hello",
		})
	})
	engine.Run(":8080")
}
