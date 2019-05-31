#!/bin/bash

echo 1-1.正しい引数（２つの正の整数）が入力された時のテスト
RESULT=`sh ./kadai3.sh 10 15`
if [ "${RESULT}" = "最大公約数は 5 です" ]; then
	echo "テスト成功"
else
	echo "テスト失敗"
	exit 1
fi

echo 1-2.正しい引数（２つの正の整数）が入力された時のテスト
RESULT=`sh ./kadai3.sh 2 7`
if [ "${RESULT}" = "最大公約数は 1 です" ]; then
	echo "テスト成功"
else
	echo "テスト失敗"
	exit 1
fi

echo 2-1.不正な引数（正の整数以外の値）が入力された時のテスト
RESULT=`sh ./kadai3.sh 0 7`
if [ "${RESULT}" = "最大公約数を求められません" ]; then
	echo "テスト成功"
else
	echo "テスト失敗"
	exit 1
fi

echo 2-2.不正な引数（２つ未満の正の整数）が入力された時のテスト
RESULT=`sh ./kadai3.sh 2`
if [ "${RESULT}" = "引数の数は必ず2つを指定してください" ]; then
	echo "テスト成功"
else
	echo "テスト失敗"
	exit 1
fi

echo 2-3.不正な引数（３つ以上の正の整数）が入力された時のテスト
RESULT=`sh ./kadai3.sh 5 10 15`
if [ "${RESULT}" = "引数の数は必ず2つを指定してください" ]; then
	echo "テスト成功"
else
	echo "テスト失敗"
	exit 1
fi

exit 0
