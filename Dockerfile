FROM oven/bun:slim

    ENV BUN_INSTALL_GLOBAL_DIR=/opt/letta-code

    ARG LETTA_CODE_VERSION=""
    COPY letta-code-version.txt /tmp/letta-code-version.txt

    RUN set -eux; \
     apt-get update; \
     apt-get install -y git python3 make g++; \
     version="${LETTA_CODE_VERSION:-$(cat /tmp/letta-code-version.txt)}"; \
     bun install -g "@letta-ai/letta-code@${version}"; \
     apt-get purge -y make g++; \
     apt-get autoremove -y; \
     rm -rf /var/lib/apt/lists/*

    ENV ENV_NAME="cloud"
    ENV LETTA_RESTORE_ENABLED_CHANNELS="1"

    COPY start.sh /start.sh
    RUN chmod +x /start.sh
     CMD ["sh", "-c", "mkdir -p /root/.letta/channels/telegram && printf '%s'
    '{\"accounts\":[{\"channel\":\"telegram\",\"accountId\":\"587c43d9-6ebd-47a2
    -80b6-dbed84827f04\",\"displayName\":\"@Orlando_opa_bot\",\"enabled\":true,\
    "token\":\"8551312474:AAGK2nxayTfnFKChMup0DE6pbueO_ERyv1o\",\"dmPolicy\":\"p
    airing\",\"allowedUsers\":[],\"transcribeVoice\":false,\"binding\":{\"agentI
    d\":null,\"conversationId\":null}}]}' >
    /root/.letta/channels/telegram/accounts.json && letta server --env-name
    \"$ENV_NAME\" --channels telegram"]
