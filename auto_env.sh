# Auto Env: Automatically activate Python virtual envs
BLUE='\033[0;34m'
DEFAULT='\033[0m'

cd() {
  builtin cd "$1"
  if [ -e "./env/bin/activate" ]; then
    _deactivate_current_env
    . env/bin/activate
    CURRENT_ENV=${PWD##*/}
    printf "${BLUE}On: ${CURRENT_ENV}${DEFAULT}\n"
  fi
}

_deactivate_current_env() {
  CURRENT_ENV=$CURRENT_ENV || "None"
  if [ "$(type -t deactivate )" = "function" ]; then
    printf "${BLUE}Off: ${CURRENT_ENV}${DEFAULT}\n"
    deactivate
  fi
}
