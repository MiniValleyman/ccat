# Bash completion for ccat

_ccat() {
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  opts="--bg --color -C --color-code -G -h --help --html --palette -v --version"

  case "${prev}" in
    --bg)
      COMPREPLY=($(compgen -W "light dark" -- ${cur}))
      return 0
      ;;
    -C | --color)
      COMPREPLY=($(compgen -W "never always auto" -- ${cur}))
      return 0
      ;;
    -G | --color-code)
      return 0
      ;;
    -h | --help)
      return 0
      ;;
    --html)
      return 0
      ;;
    --palette)
      return 0
      ;;
    -v | --version)
      return 0
      ;;
    *)
      COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
      ;;
  esac
}

complete -F _ccat ccat
