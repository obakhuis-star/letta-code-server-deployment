#!/bin/sh
    mkdir -p /root/.letta/channels/telegram
    cat > /root/.letta/channels/telegram/accounts.json << 'EOF'
    {"accounts":[{"channel":"telegram","accountId":"587c43d9-6ebd-47a2-80b6-dbed
    84827f04","displayName":"@Orlando_opa_bot","enabled":true,"token":"855131247
    4:AAGK2nxayTfnFKChMup0DE6pbueO_ERyv1o","dmPolicy":"pairing","allowedUsers":[
    ],"transcribeVoice":false,"binding":{"agentId":null,"conversationId":null}}]
    }
    EOF
    letta server --env-name cloud --channels telegram
