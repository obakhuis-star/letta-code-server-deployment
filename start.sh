#!/bin/sh
mkdir -p /root/.letta/channels/telegram
F=/root/.letta/channels/telegram/accounts.json
printf '%s' '{"accounts":[{"channel":"telegram",' > $F
printf '%s' '"accountId":"587c43d9-6ebd-47a2-' >> $F
printf '%s' '80b6-dbed84827f04",' >> $F
printf '%s' '"displayName":"@Orlando_opa_bot",' >> $F
printf '%s' '"enabled":true,' >> $F
printf '%s' '"token":"8551312474:AAGK2nxayTfnFKChMup0DE6pbueO_ERyv1o",' >> $F
printf '%s' '"dmPolicy":"pairing",' >> $F
printf '%s' '"allowedUsers":[],"transcribeVoice":false,' >> $F
printf '%s' '"binding":{"agentId":null,"conversationId":null}}]}' >> $F
printf '\n' >> $F
R=/root/.letta/channels/telegram/routing.yaml
printf '%s\n' 'routes:' > $R
printf '%s\n' '  - accountId: "587c43d9-6ebd-47a2-80b6-dbed84827f04"' >> $R
printf '%s\n' '    chatId: "8361979722"' >> $R
printf '%s\n' '    agentId: "agent-39b9d3ec-c168-4de9-aac6-b925157f1905"' >> $R
printf '%s\n' '    enabled: true' >> $R
letta server --env-name "$ENV_NAME" --channels telegram
