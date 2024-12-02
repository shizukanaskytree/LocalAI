package main

import (
	"fmt"
	"os"

	"github.com/joho/godotenv"
)

func main() {
	// 加载 .env 文件
	err := godotenv.Load(".env")
	if err != nil {
		fmt.Println("Error loading .env file:", err)
	} else {
		fmt.Println("Environment variables loaded successfully.")
	}

	// 打印测试变量
	fmt.Println("TEST_VAR:", os.Getenv("TEST_VAR"))
}
