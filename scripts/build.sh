#!/usr/bin/env bash

ROOT=$(dirname "${BASH_SOURCE}")/..
JAPANESE_DIR="OpenFonts.Japanese"
CHINESE_DIR="OpenFonts.Chinese"
ENGLISH_DIR="OpenFonts"
OUTPUT_DIR="docs"

cd ${ROOT}

cd ${CHINESE_DIR}
xelatex ./resume.tex
mv resume.pdf ../${OUTPUT_DIR}/resume-cn.pdf
cd - > /dev/null

cd ${ENGLISH_DIR}
xelatex ./resume.tex
mv resume.pdf ../${OUTPUT_DIR}/resume.pdf
cd - > /dev/null

cd ${JAPANESE_DIR}
xelatex ./resume.tex
mv resume.pdf ../${OUTPUT_DIR}/resume-jp.pdf
cd - > /dev/null
cd - > /dev/null

