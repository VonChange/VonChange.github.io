# 生成静态网站,生成完毕后全部网站文件位于_book文件夹中.
gitbook build

cp -rf myfile/* _book/myfile/
find  _book -name '*.html' | xargs sed -i "" "s|https://unpkg.com|/myfile|g"
find  _book -name '*.html' | xargs sed -i "" "s|generator|baidu-site-verification|g"
find  _book -name '*.html' | xargs sed -i "" "s|GitBook 3.2.3|cAxqlT3C5k|g"
# 将静态网站文件夹_book全部复制到当前目录,保证首页存在index.html文件
cp -rf ./_book/* ./
# 添加到版本库等待上传 Github
git add .
# 添加更新说明
git commit -m "文档更新"
# 推送到远程仓库,推送成功后等待一段时间后在线服务即可开启.
#git push origin master