#!/bin/bash
# Variables
ACTION=$1
COMPONENT=$2

## Functions
USAGE() {
  case $1 in
    missing-arguments)
      echo "Missing Arguments!!"
      USAGE
      ;;
    invalid-arguments)
      echo "Invalid Arguments!!"
      USAGE
      ;;
    invalid-component)
      echo "Invalid Component Given, Must be one of the following !!"
      USAGE
      ;;
    *)
      echo -e "\e[33mUsage: \e[31m$0 \e[35minstall|reinstall|uninstall \e[36mcart|catalogue|frontend|dispatch|payment|ratings|shipping|user|rabbitmq|mysql|redis|monogodb|\e[4mall(default)\e[0m"
      exit 1
  esac
}

## Main Program
if [[ $# -lt 1 || $# -gt 2 ]]; then
  USAGE missing-arguments
fi

case $ACTION in
  install|uninstall|reinstall)
    :
   ;;
  *)
    echo debug invalid-arguments
    USAGE invalid-arguments
esac


if [[ -z "$COMPONENT" ]]; then
  WHICH_COMPONENT=all
else
  case $COMPONENT in
    cart|catalogue|frontend|dispatch|payment|ratings|shipping|user|rabbitmq|mysql|redis|monogodb)
      WHICH_COMPONENT=$COMPONENT
    ;;
    *)
      USAGE invalid-component
    ;;
  esac
fi

echo "$WHICH_COMPONENT"
