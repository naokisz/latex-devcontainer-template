#!/bin/bash

mkdir -p .vscode
cp -b -S.bak .devcontainer/setting.json .vscode

cp -b -S.bak .devcontainer/.gitignore .
