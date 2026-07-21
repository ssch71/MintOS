KERNEL_REPO="https://release-assets.githubusercontent.com/github-production-release-asset/1274898554/cf43447f-4418-45d4-b7bb-4e11956056a2?sp=r&sv=2018-11-09&sr=b&spr=https&se=2026-07-09T03%3A52%3A23Z&rscd=attachment%3B+filename%3Dnot-CI-20260619-b03895ee-gts7lwifi.zip&rsct=application%2Foctet-stream&skoid=96c2d410-5711-43a1-aedd-ab1947aa7ab0&sktid=398a6654-997b-47e9-b12b-9515b896b4de&skt=2026-07-09T02%3A52%3A02Z&ske=2026-07-09T03%3A52%3A23Z&sks=b&skv=2018-11-09&sig=yFE%2B5f6kUKhbrn5K7Ra8TnkByBGK186ZMadF%2BVPbQhA%3D&jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmVsZWFzZS1hc3NldHMuZ2l0aHVidXNlcmNvbnRlbnQuY29tIiwia2V5Ijoia2V5MSIsImV4cCI6MTc4MzU2NzQ5NywibmJmIjoxNzgzNTY1Njk3LCJwYXRoIjoicmVsZWFzZWFzc2V0cHJvZHVjdGlvbi5ibG9iLmNvcmUud2luZG93cy5uZXQifQ.3yFk_3yz6umO3ncm8iS-7RwW13WXkVwvWyE1nrduSMY&response-content-disposition=attachment%3B%20filename%3Dnot-CI-20260619-b03895ee-gts7lwifi.zip&response-content-type=application%2Foctet-stream"

LOG_STEP_IN "- Downloading Paradigm kernel"
if [ -f "$WORK_DIR/kernel/boot.img" ]; then
    rm -f "$WORK_DIR/kernel/boot.img"
fi
if [ -f "$WORK_DIR/kernel/dtbo.img" ]; then
    rm -f "$WORK_DIR/kernel/dtbo.img"
fi

DOWNLOAD_FILE "$KERNEL_REPO/boot.img" "$WORK_DIR/kernel/boot.img"
DOWNLOAD_FILE "$KERNEL_REPO/dtbo.img" "$WORK_DIR/kernel/dtbo.img"
unset KERNEL_REPO
LOG_STEP_OUT