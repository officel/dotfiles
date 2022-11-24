function docker-tags {
  curl -s https://registry.hub.docker.com/v1/repositories/$1/tags | jq -r '.[].name'
}

function jqp {
  __key=$1
  if [ -p /dev/stdin ]; then
      __str=`cat -`
  else
      __str=""
      echo "usage: json data | jqp some-key"
  fi

  if [ "${__key}" == "" ]; then
    echo "${__str}" | jq -c 'paths'
  else
    echo "${__str}" | jq -c 'paths | select(.[] == "'${__key}'")'
  fi
}

function pipsearch {
  # alternative pip search, but use pip_search
  # @todo: args
  # @todo: result to link
  # @todo: date to JST?
  q=${1:-ansible}
  page=${2:-1}
  o=${3:-}

  curl -s --get \
    --data-urlencode "q=${q}" \
    --data-urlencode "o=${o}" \
    --data-urlencode "page=${page}" \
    https://pypi.org/search/ | \
    pup 'a[class="package-snippet"]' | \
    pup | xq | \
    jq -cr '.html.body.a[] | [.h3.span[0,1]."#text"? , .h3.span[2].time."#text"?, .p."#text" ] | @tsv' | tr "\t" "|" | column -s"|" -t
}
