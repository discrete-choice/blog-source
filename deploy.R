# 1. 停止当前正在运行的预览服务
blogdown::stop_server()

# 2. 清理并重新编译整站
blogdown::build_site()

# 3. 自动调用终端推送到 GitHub（源码备份）
system("git add .")
system('git commit -m "Auto deploy: update posts"')
system("git push origin main")

message("🎉 所有文章已编译并推送到 GitHub！请等待 2 分钟去网页查看。")