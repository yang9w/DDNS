#!/usr/bin/env bash
RUN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )";

CMD="\"$RUN_DIR/run.py\" -c \"$RUN_DIR/config.json\" >> \"$RUN_DIR/run.log\""

echo "*/5 * * * *   root    $CMD" > /etc/cron.d/ddns;
/etc/init.d/cron reload;
#如果centos 8 报错第七行使用此命令替换第七行：service crond reload;
