## Start

- 필요한 의존성 설치 (대부분 설치되어있고 꼭 필수로 설치하지 않아도 되어서 필요할 때 설치하기)
  - [필요한 의존성 나열](https://www.lazyvim.org/#%EF%B8%8F-requirements)
  - [Docker 부분을 보면 필요한 의존성 패키지로 나열](https://www.lazyvim.org/installation)
- 심볼릭 링크 지정
  ```shell
    ln -s ~/dotfiles/vim/lazy-vim ~/.config/nvim
  ```
- `:LazyHealth` 으로 헬스 체크

## Note

- `VSCode Nvim` 확장에서도 사용됩니다.
- 트러블 슈팅 시 참고 정보
  - 해당 제품은 플러그인 매니저는 [lazy.nvim](https://github.com/folke/lazy.nvim), config 관리는 [LazyVim/starter](https://github.com/LazyVim/starter) 으로 역할이 나눠져있습니다.
  - 해당 제품은 각종 config를 제공하는 것이고 그것을 설치하는 주체는 `lazy.nvim` 라는 것입니다.
  - 이점을 유의하고 트러블 슈팅을 진행하도록 합니다.
