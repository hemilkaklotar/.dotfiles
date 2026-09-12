<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:b2c5ff,100:1f428f&height=180&section=header&text=.dotfiles&fontSize=72&fontColor=002b73&animation=fadeIn&fontAlignY=38" alt="dotfiles header"/>

[![Typing SVG](https://readme-typing-svg.demolab.com?font=JetBrains+Mono&size=20&pause=1000&color=B2C5FF&center=true&vCenter=true&width=640&lines=Ghostty+%2B+tmux+%2B+sesh+%E2%80%94+one+named+session+per+project;One+command+setup.+Zero+hardcoded+paths.;niri+%7C+hyprland+%7C+bare.+Your+call.)](https://github.com/hemilkaklotar/.dotfiles)

<p>
  <img src="https://img.shields.io/badge/Fedora-51A2DA?style=for-the-badge&logo=fedora&logoColor=white" alt="Fedora"/>
  <img src="https://img.shields.io/badge/Ghostty-121318?style=for-the-badge&logo=gnometerminal&logoColor=B2C5FF" alt="Ghostty"/>
  <img src="https://img.shields.io/badge/tmux-1BB574?style=for-the-badge&logo=tmux&logoColor=white" alt="tmux"/>
  <img src="https://img.shields.io/badge/zsh-F15A24?style=for-the-badge&logo=gnubash&logoColor=white" alt="zsh"/>
  <img src="https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white" alt="Neovim"/>
  <img src="https://img.shields.io/badge/sesh-⚡-B2C5FF?style=for-the-badge" alt="sesh"/>
</p>

*Portable developer setup — terminal stack, zsh, AI CLIs, and an optional
Wayland desktop, installed and linked with **one command**.*

</div>

---

## ✨ Quick start

```bash
git clone <this-repo> ~/.dotfiles
cd ~/.dotfiles
./setup                    # asks: bare terminal stack, niri, or hyprland
```

```bash
./setup --desktop=niri     # + niri configs, binary, nightly Noctalia
./setup --desktop=hypr     # + hyprland configs, binary, nightly Noctalia
./setup --no-system        # skip the package manager (no sudo)
STOW_FOLDERS="tmux,zsh" ./setup   # link only a subset
```

> 📖 **New machine?** Full starting-point guide — what gets installed,
> manual steps, daily workflow — in **[SETUP.md](SETUP.md)**.

`./stowlink` alone only (re)creates the symlinks — `setup` calls it after
installing everything. Every step is idempotent: re-run anytime.

---

## 📦 Layout

Each top-level folder is a package that mirrors `$HOME`:

| Package | Manages |
|---------|---------|
| `ghostty/` | `~/.config/ghostty/` — terminal + Noctalia theme |
| `tmux/` | `~/.tmux.conf`, `~/.tmux-cht-*`, `~/.config/tmux/themes/` |
| `sesh/` | `~/.config/sesh/sesh.toml` — session manager config |
| `zsh/` | `~/.zshrc`, `~/.zsh_profile`, `~/.profile` (incl. `s`/`sl` sesh shortcuts) |
| `starship/` | `~/.config/starship.toml` — prompt (Noctalia palette) |
| `nvim/` | `~/.config/nvim/` — LazyVim config (pinned via `lazy-lock.json`) |
| `local/` | `~/.local/bin/` — `sesh-picker`, `tmux-cht.sh` |
| `git/` | `~/.gitconfig` ⚠️ *personal identity — change after forking* |
| `niri/` | `~/.config/niri/` — linked only with `--desktop=niri` |
| `hypr/` | `~/.config/hypr/` — linked only with `--desktop=hypr` |

| File | Purpose |
|------|---------|
| `setup` | The one installer: system packages → langs → AI CLIs → linking → plugins → verify |
| `stowlink` | Link-only helper used by `setup` (backs up regular files to `*.backup`) |
| `SETUP.md` | What `setup` installs step by step |

---

## 🛠️ What `setup` installs

<details>
<summary><b>Click to expand the full stack</b></summary>

<br/>

- **System** (dnf/apt): git, zsh, tmux, fzf, zoxide, fd, eza, starship, neovim,
  yazi, jq, ripgrep, bat, gh, just, stow + build tools
- **Neovim**: LazyVim config linked from dotfiles + headless `Lazy! sync`
- **Languages** via mise: go, node, bun, uv — plus Rust via rustup
- **AI CLIs**: opencode, codex, claude
- **Dev TUI**: lazygit, lazydocker
- **Shell**: oh-my-zsh + autosuggestions, syntax-highlighting, fzf-tab, completions
- **Tmux plugins** via TPM, installed headless
- **Desktop profiles**: compositor binary (`niri`/`hyprland`) + **nightly** Noctalia

</details>

---

## ⚡ Terminal workflow

Ghostty boots into the sesh picker (`sesh-picker`): one named tmux session per
project, fuzzy-matched over live sessions, `sesh.toml` configs and zoxide dirs.
<kbd>Esc</kbd> drops to a plain shell.

<details>
<summary><b>⌨️ Shortcut cheatsheet</b></summary>

<br/>

| Where | Shortcut | Action |
|-------|----------|--------|
| shell | `s` | sesh fuzzy picker |
| shell | `s <path>` | jump to project session |
| shell | `sl` | back to last session |
| tmux `C-a` | `T` | full sesh picker popup |
| tmux `C-a` | `f` | quick sesh picker |
| tmux `C-a` | `L` | last session |
| tmux `C-a` | `i` | cht.sh cheatsheet |
| tmux `C-a` | `r` | reload tmux config |

</details>

---

## 💾 Session persistence

Automatic, two layers:

- **continuum** saves every 5 min and restores everything on tmux server start
  (reboot → open Ghostty → pick any session → the rest restore behind it)
- **event hooks** save instantly on detach, session create, window link/unlink
- Manual: `prefix + Ctrl-s` save, `prefix + Ctrl-r` restore (resurrect defaults)

---

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:1f428f,100:b2c5ff&height=120&section=footer&animation=fadeIn" alt="footer wave"/>

*Built for the terminal-obsessed. PRs welcome.*

</div>
