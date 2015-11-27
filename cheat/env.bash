#!/bin/sh
# cheat sheets for cli shell edition.
# Y.Nishimura

# 変数初期化
cheat_clear(){
  FLG_L=""
  FLG_E=""
  FLG_C=""
  FLG_H=""
  VALUE=""
  VALUE_F=""
  OPTIND=0
}

# main
cheat() {
  cheat_clear;
  # install dir. maybe,it is the directory where this file is put
  CHEAT_HOME_DIR="$HOME/.dotfiles/cheat"
  # CHEAT_HOME_DIR="$(dirname "${BASH_SOURCE:-${(%):-%N}}")"

  # sheets dir. you can change dir if you want. for example your own repos
  SHEET_DIR="$CHEAT_HOME_DIR/sheets"

  # オプション処理
  while getopts "lhe:c:" OPT
  do
    case $OPT in
      "l" ) FLG_L="TRUE" ;;
      "h" ) FLG_H="TRUE" ;;
      "e" ) FLG_E="TRUE" ; VALUE_F="$SHEET_DIR/$OPTARG" ;;
      "c" ) FLG_C="TRUE" ; VALUE_F="$SHEET_DIR/$OPTARG" ;;
    esac
  done

  # -l
  if [ "$FLG_L" = "TRUE" ]; then
    ls -1 $SHEET_DIR
    return;
  fi

  # -e
  if [ "$FLG_E" = "TRUE" ]; then
    vi $VALUE_F
    return;
  fi
 
  # -c
  if [ "$FLG_C" = "TRUE" ]; then
    vi $VALUE_F
    return;
  fi

  # -h
  #if [ "$FLG_H" = "TRUE" ]; then
  #fi

  # TARGET
  if [ $OPTIND -eq 1 ]; then
    shift `expr $OPTIND - 1`
    VALUE=$1;
    VALUE_F="$SHEET_DIR/$VALUE";
    if [ "$VALUE_F" = "$SHEET_DIR/" ]; then
      ls -1 $SHEET_DIR
      return;
    elif [ -f "$VALUE_F" ]; then
      more $VALUE_F;
      return;
    else
      echo "$VALUE is not found. maybe use -c or check at -l"
    fi
  fi

  # no arg
  cat <<'EOT'
usage $ cheat [-l|-h] [-e|-c][ TARGET]
EOT
}
