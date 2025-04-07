# Setup dosboxa na zajęcia wia2 na pjatk

Skrypt działa na wszystkich dystrybucjach linuxa, macos i wsl.

## Instalacja
Aby korzystać ze skryptu należy najpierw zainstalować manager pakietów nix:
```sh <(curl -L https://nixos.org/nix/install) --daemon```

## Uruchamianie
`nix run github:geraldserafin/wia2-dosbox --extra-experimental-features "flakes nix-command"`

Na koncu komendy - jako argument - można podać scieżkę która ma zostać zmountowana jako dysk C w dosbox (zawarte w niej pliki będą dostępne w emulatorze). Jeśli scieżka nie zostanie podana to zmountowana zostanie aktualna scieżka robocza (PWD, ta w której wywołana jest komenda)