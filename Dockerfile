FROM paperist/texlive-ja:alpine

RUN apk update && apk upgrade \
    && apk add --no-cache make gcc libc-dev perl-dev perl-app-cpanminus \
    && tlmgr install latexindent \
    && cpanm YAML::Tiny File::HomeDir Unicode::GCString \
    && apk del make gcc libc-dev perl-dev perl-app-cpanminus

RUN tlmgr install chktex lacheck lualatex-math newtx
RUN apk add --no-cache fontconfig ncurses
RUN tlmgr update --self --all
RUN luaotfload-tool -u -f

RUN apk add --no-cache nodejs npm \
    && npm install --global \
        textlint \
        textlint-filter-rule-allowlist \
        textlint-filter-rule-comments \
        textlint-plugin-latex2e \
        textlint-rule-preset-ja-technical-writing \
        textlint-rule-prh

RUN apk add --no-cache shadow git openssh zip

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN useradd -m vscode
USER vscode
RUN mkdir -p /home/vscode/.texlive2024/texmf-var/luatex-cache

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
