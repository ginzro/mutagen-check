# mutagen-check
https://docs.docker.com/docker-for-mac/mutagen-caching/<br>
Dockerに新しく追加されたMutagen-based cachingでどれだけhostとcontainer間でのファイルのやり取りが早くなったか測定できる

## How to
> source time-compose<br>
> ls | grep yml | xargs -I% -L 1 fish -c "time-compose %"

標準出力を確認するか、result_docker-compose.foo.yml.txtから10回の試行結果を確認できる

