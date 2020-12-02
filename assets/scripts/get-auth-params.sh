USER_DETAIL=$(sfdx force:user:display -u amaxa --json)
export ACCESS_TOKEN=$(echo $USER_DETAIL | python -c "import json; import sys; print(json.load(sys.stdin)['result']['ACCESS_TOKEN'])")
export INSTANCE_URL=$(echo $USER_DETAIL | python -c "import json; import sys; print(json.load(sys.stdin)['result']['INSTANCE_URL'])")
