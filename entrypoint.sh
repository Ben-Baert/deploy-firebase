#!/bin/sh

echo "${FIREBASE_SERVICE_ACCOUNT}" | base64 --decode > "$PROJECT_DIR"/serviceaccount.json
export GOOGLE_APPLICATION_CREDENTIALS=PROJECT_DIR/serviceaccount.json

firebase use "$PROJECT_ID"

firebase deploy --only firestore:rules
