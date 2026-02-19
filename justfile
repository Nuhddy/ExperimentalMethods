help:
    @just --list

update:
    devenv update
    git commit devenv.lock -m "update inputs"

push:
    git add .
    git commit -a --allow-empty-message -m ""
    git push

start:
    jupyter server &
    codium .

stop:
    jupyter server stop
