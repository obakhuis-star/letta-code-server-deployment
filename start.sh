#!/bin/sh
    mkdir -p /root/.letta/channels/telegram
    base64 -d > /root/.letta/channels/telegram/accounts.json << 'EOF'
    eyJhY2NvdW50cyI6W3siY2hhbm5lbCI6InRlbGVncmFtIiwi
    YWNjb3VudElkIjoiNTg3YzQzZDktNmViZC00N2EyLTgwYjYt
    ZGJlZDg0ODI3ZjA0IiwiZGlzcGxheU5hbWUiOiJAT3JsYW5k
    b19vcGFfYm90IiwiZW5hYmxlZCI6dHJ1ZSwidG9rZW4iOiI4
    NTUxMzEyNDc0OkFBR0sybnhheVRmbkZLQ2hNdXAwREU2cGJ1
    ZU9fRVJ5djFvIiwiZG1Qb2xpY3kiOiJwYWlyaW5nIiwiYWxs
    b3dlZFVzZXJzIjpbXSwidHJhbnNjcmliZVZvaWNlIjpmYWxz
    ZSwiYmluZGluZyI6eyJhZ2VudElkIjpudWxsLCJjb252ZXJz
    YXRpb25JZCI6bnVsbH19XX0=
    EOF
    letta server --env-name "$ENV_NAME" --channels telegram
