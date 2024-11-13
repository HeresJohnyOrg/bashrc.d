### Julia
if ! [[ "${PATH}" =~ "${HOME}/.juliaup/bin" ]]; then
    PATH="${HOME}/.juliaup/bin:${PATH}"
fi
### Haskell
source /home/user/.ghcup/env
