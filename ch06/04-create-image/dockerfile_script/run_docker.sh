docker image rm ex22_original2

current_dir=$(pwd)/apa_folder
html_file="$current_dir/index.html"

if [ ! -d "$current_dir" ]; then
    tmp_path="$(pwd)/apa_folder"
    mkdir "$tmp_path"
fi
if [ ! -f "$html_file" ]; then   
    content='<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <body>
        <div>hello</div>
    </body>
</html>'

    echo "$content" > "$html_file"
fi

docker build -t ex22_original2 $current_dir
docker image ls | grep ex22_original2