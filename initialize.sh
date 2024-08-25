#!/bin/bash

mkdir -p .vscode
cp -b -S.bak .devcontainer/settings.json .vscode

cp -b -S.bak .devcontainer/.gitignore .
cp -b -S.bak .devcontainer/.textlintrc .
cp -b -S.bak .devcontainer/prh.yml .
