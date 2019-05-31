#!/bin/bash


# 不正な引数（２つ以外の正の整数）が入力されている場合
if [ $# -ne 2 ]; then
	echo "引数の数は必ず2つを指定してください" 
	exit 1
fi

# 不正な引数（0以下の値）が入力されている場合
if [ $1 -lt 1 ]; then
	echo "最大公約数を求められません" 
	exit 2
fi

if [ $2 -lt 1 ]; then
	echo "最大公約数を求められません" 
	exit 2
fi



# 引数が2つの正の整数（自然数）である場合


# 大きい値をNUM1へ、小さい値をNUM2へ代入する
if [ $1 -lt $2 ]; then
	NUM1=$2
	NUM2=$1
else
	NUM1=$1
	NUM2=$2
fi


# 大きい値を小さい値で割った余りを出す
RESULT=$(( ${NUM1} % ${NUM2} ))

# 余りが0でなければ再計算する
while [ ${RESULT} -ne 0 ]
do
	# 余りを求める計算
	RESULT=$(( ${NUM1} % ${NUM2} ))

	# 余りが0以外なら変数を入替えて0になるまで繰り返し再計算 
	if [ ${RESULT} -ne 0 ]; then
		NUM1=${NUM2}
		NUM2=${RESULT}
	fi
done
# 余りが0になったら答えを返して終了する
echo 最大公約数は ${NUM2} です
