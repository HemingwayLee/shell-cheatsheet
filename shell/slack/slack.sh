MSG="$1"
LEVEL="$2"

FORMAT_MSG="\`\`\`$MSG\`\`\`"

WEBHOOK_URL=$(awk -F '=' '{if (! ($0 ~ /^;/) && $0 ~ /web_hook_url/) print $2}' settings.ini)
URL_NOSPACE="$(echo "${WEBHOOK_URL}" | tr -d '[:space:]')"

case "$LEVEL" in
  WARNING)
    ICON=':exclamation:'
    ;;
  ERROR)
    ICON=':x:'
    ;;
  *)
    ICON=':slack:'
    ;;
esac

curl -X POST --data "payload={\"text\": \"${ICON} ${FORMAT_MSG}\"}" ${URL_NOSPACE}

# example:
# ./slack.sh "This is a warning message" "WARNING"
# ./slack.sh "This is an error message" "ERROR"
# ./slack.sh "Other messages" "OTHER"

