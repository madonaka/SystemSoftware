#!/bin/bash

RESULT=`sh ./kadai3.sh`

if [ ${RESULT} = "success" ]; then
	echo "テスト成功"
	exit 0
else
	echo "テスト失敗"
	exit 1
fi
