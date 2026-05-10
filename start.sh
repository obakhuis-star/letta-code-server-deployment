#!/bin/sh
    mkdir -p /root/.letta/channels/telegram
    base64 -d > /root/.letta/channels/telegram/accounts.json << 'EOF'
    eyJhY2NvdW50cyI6W3siY2hhbm5lbCI6InRlbGVncmFtIiwiYWNjb3VudElk
    IjoiNTg3YzQzZDktNmViZC00N2EyLTgwYjYtZGJlZDg0ODI3ZjA0IiwiZGlz
    cGxheU5hbWUiOiJAT3JsYW5kb19vcGFfYm90IiwiZW5hYmxlZCI6dHJ1ZSwi
    dG9rZW4iOiI4NTUxMzEyNDc0OkFBR0sybnhheVRmbkZLQ2hNdXAwREU2cGJ1
    ZU9fRVJ5djFvIiwiZG1Qb2xpY3kiOiJwYWlyaW5nIiwiYWxsb3dlZFVzZXJz
    IjpbXSwidHJhbnNjcmliZVZvaWNlIjpmYWxzZSwiYmluZGluZyI6eyJhZ2Vu
    dElkIjpudWxsLCJjb252ZXJzYXRpb25JZCI6bnVsbH19XX0=
    EOF
    letta server --env-name "$ENV_NAME" --channels telegram
