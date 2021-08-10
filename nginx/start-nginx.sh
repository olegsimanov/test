SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"

# components/build folder is referenced here directly
# because I didn't want to invest time in finding out
# how to make a link to be visible inside a container

docker run --rm \
-v "${SCRIPT_DIR}"/default.conf:/etc/nginx/conf.d/default.conf:ro \
-v "${SCRIPT_DIR}"/nginx.conf:/etc/nginx/nginx.conf:ro  \
-v "${SCRIPT_DIR}"/../site/resources:/var/www/html/resources \
-v "${SCRIPT_DIR}"/../site/js1:/var/www/html/js1 \
-v "${SCRIPT_DIR}"/../site/js2:/var/www/html/js2 \
-v "${SCRIPT_DIR}"/../site/index.html:/var/www/html/index.html \
--name test-static -p 5444:80 scr.saal.ai/nginx:1.17.1
