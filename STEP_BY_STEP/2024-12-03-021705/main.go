package main

import (
	"os" // 引入 os 包，用于与操作系统交互

	"github.com/rs/zerolog"     // 引入 zerolog 包，用于日志记录
	"github.com/rs/zerolog/log" // 引入 zerolog 的 log 包，用于日志输出
)

func main() {
	// 初始化 zerolog 的日志输出到控制台
	log.Logger = log.Output(zerolog.ConsoleWriter{Out: os.Stderr})

	/// 设置全局日志级别为 InfoLevel
	// zerolog.SetGlobalLevel(zerolog.InfoLevel)

	// 设置全局日志级别为 DebugLevel
	zerolog.SetGlobalLevel(zerolog.DebugLevel)

	// 输出 Info 级别的日志信息
	log.Info().Msg("Info log")
	// 输出 Debug 级别的日志信息（默认情况下不会显示，除非将日志级别设置为 debug）
	log.Debug().Msg("Debug log (will not show unless level is set to debug)")
}
