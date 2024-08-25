#!/bin/bash

# 監視するファイルのパス
LOCK_FILE="../.git/index.lock"

# 1分ごとに確認する
while true; do
  # fuserでファイルを使用しているプロセスを確認
  if ! fuser "$LOCK_FILE" > /dev/null 2>&1; then
    # 使用しているプロセスがない場合、ファイルを削除
    if [ -e "$LOCK_FILE" ]; then
      DATE=`date +"%F %T"`
      echo "[${DATE}] Deleting $LOCK_FILE"
      rm "$LOCK_FILE"
    fi
  else
  DATE=`date +"%F %T"`
  echo "[${DATE}] $LOCK_FILE is in use."
  fi
  
  export LC_ALL=ja_JP.UTF-8
  DATE=`date +"%F %T"`
  echo "[${DATE}] sleeping..."
  # 1分待機
  sleep 10
done

