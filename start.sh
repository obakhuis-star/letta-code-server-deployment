#!/bin/sh
    mkdir -p /root/.letta/channels/telegram
    printf '%s\n' '{"accounts":[{"channel":"telegram","accountId":"587c43d9-6ebd
    -47a2-80b6-dbed84827f04","displayName":"@Orlando_opa_bot","enabled":true,"to
    ken":"8551312474:AAGK2nxayTfnFKChMup0DE6pbueO_ERyv1o","dmPolicy":"pairing","
    allowedUsers":[],"transcribeVoice":false,"binding":{"agentId":null,"conversa
    tionId":null}}]}' > /root/.letta/channels/telegram/accounts.json
    letta server --env-name "$ENV_NAME" --channels telegram
