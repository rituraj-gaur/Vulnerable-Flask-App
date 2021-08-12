echo $PATH
echo "Running script as `whoami`"
/home/thanos/.local/bin/bandit -r $WORKSPACE --format json
