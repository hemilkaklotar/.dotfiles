# SETUP — fresh developer machine in one command

```bash
git clone <this-repo> ~/.dotfiles
cd ~/.dotfiles
./setup                    # asks: bare terminal stack, niri, or hyprland
./setup --desktop=bare     # non-interactive: terminal stack only (default)
./setup --desktop=niri     # + niri compositor configs & binary
./setup --desktop=hypr     # + hyprland configs & binary
```

That's it. Re-run anytime — every step checks first and skips what's done.
`./setup --no-system` skips the package manager (no sudo) when tools are
already present. `STOW_FOLDERS="tmux,zsh" ./setup` links only a subset.

## What `setup` does, in order

| # | Step | Details |
|---|------|---------|
| 1 | System packages | Fedora (`dnf`) or Debian/Ubuntu (`apt`): git, curl, unzip, stow, zsh, tmux, fzf, zoxide, fd, eza, starship, neovim, yazi, wl-clipboard, gcc, make, jq, ripgrep, bat, gh, just. Debian extras: `fd`→`fdfind` and `bat`→`batcat` symlinks, yazi via cargo fallback, starship via official installer if unpackaged |
| 2 | Rust + mise | rustup (`-y`), mise installer |
| 3 | Languages | `mise use -g go node bun uv` (all latest, no shell-rc pollution) |
| 4 | sesh | `go install` to `~/.local/bin` (tmux session manager) |
| 5 | AI CLIs + dev TUI | opencode (personal fork via mise), codex (`npm -g @openai/codex`), claude (official installer), lazygit + lazydocker (`go install`) |
| 6 | Compositor + Noctalia nightly | only when `--desktop=niri|hypr`: verifies the compositor binary exists (installs `niri`/`hyprland` on Fedora if missing), then ensures **nightly** Noctalia — Fedora via `noctalia-git` from the LionHeartP COPR (release `noctalia` removed first); Debian/Ubuntu via the official `pkg.noctalia.dev` APT repo (release builds only, no nightly published there) |
| 7 | oh-my-zsh | unattended install + plugins: zsh-autosuggestions, zsh-syntax-highlighting, fzf-tab, zsh-completions |
| 8 | stow | ensures GNU `stow` is installed, then `./stowlink` — symlinks every package into `$HOME` (regular files backed up to `*.backup`). Base set: tmux, zsh, local, git, ghostty, sesh, starship, nvim — plus `niri/` or `hypr/` when that desktop profile is chosen |
| 9 | tmux plugins | clones tpm, headless `install_plugins`, reloads `~/.tmux.conf` |
| 10 | neovim | headless `Lazy! sync` — installs all LazyVim plugins on a fresh machine |
| 11 | Login shell | `chsh -s zsh` (best-effort) |
| 12 | Verify | checklist of every tool + key symlinks |

## Manual steps (not scripted on purpose)

- **Ghostty** — install from [ghostty.org](https://ghostty.org) (GUI app, no scriptable repo package). Then just open it: `sesh-picker` boots you into a session picker.
- **Docker** — needs repo setup + group + service (too machine-specific to script safely). Fedora: [docs.docker.com/engine/install/fedora](https://docs.docker.com/engine/install/fedora); add yourself to the `docker` group. `lazydocker` from step 5 talks to it.
- **Reboot or re-login** after first run so the zsh default shell + PATH settle.
- **`git/.gitconfig`** holds personal identity — fork the repo and change it.

## After setup — daily workflow

Ghostty opens into the sesh picker: one named tmux session per project.
Esc drops to a plain shell.

| Where | Shortcut | Action |
|-------|----------|--------|
| shell | `s` / `s <path>` / `sl` | picker / jump to project / last session |
| tmux `C-a` | `T` / `f` / `L` | full picker / quick picker / last session |
| tmux `C-a` | `r` | reload config |

Sessions auto-save (continuum every 5 min + instant save hooks) and restore
on tmux server start — see `README.md`.
