#!/bin/bash

mkdir -p .vscode
cp -b -S.bak .devcontainer/settings.json .vscode

cp -b -S.bak .devcontainer/.gitignore .
