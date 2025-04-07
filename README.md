# Setup dosboxa na zajęcia wia2 na pjatk

## Instalacja
Aby korzystać z aplikacji należy najpierw zainstalować manager pakietów nix:
```sh <(curl -L https://nixos.org/nix/install) --daemon```

## Uruchamianie
`nix run github:geraldserafin/wia2-dosbox --extra-experimental-features "flakes nix-command"`