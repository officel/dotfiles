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

