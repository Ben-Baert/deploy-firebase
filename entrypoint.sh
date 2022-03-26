#!/bin/sh

set -e   # exit on first failed command
set -x   # print all executed commands to the log

echo "Starting"

echo "${FIREBASE_SERVICE_ACCOUNT}" | base64 --decode > "$GITHUB_WORKSPACE"/serviceaccount.json
export GOOGLE_APPLICATION_CREDENTIALS=$GITHUB_WORKSPACE/serviceaccount.json

echo "Variables set"

firebase use "$PROJECT_ID"

firebase deploy --only firestore:rules

echo "Done"
