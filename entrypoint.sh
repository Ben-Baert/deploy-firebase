#!/bin/sh

echo "${FIREBASE_SERVICE_ACCOUNT}" | base64 --decode > "$GITHUB_WORKSPACE"/serviceaccount.json
export GOOGLE_APPLICATION_CREDENTIALS=$GITHUB_WORKSPACE/serviceaccount.json

firebase use "$PROJECT_ID"

firebase deploy --only firestore:rules
