#!/bin/bash
cd /home/kavia/workspace/code-generation/video-processing-application-for-cellectra-5psp-test-line-1784/epm_ai_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

