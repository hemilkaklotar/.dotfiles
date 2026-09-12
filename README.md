# .dotfiles

Personal configs. Symlinked into `$HOME` via `./stowlink` — nothing here installs
apps or touches the system, it only manages dotfiles.

## Layout

Each top-level folder is a package that mirrors `$HOME`:

| Package    | Manages |
|------------|---------|
| `ghostty/` | `~/.config/ghostty/` — terminal + Noctalia theme |
| `tmux/`    | `~/.tmux.conf`, `~/.tmux-cht-*`, `~/.config/tmux/themes/` |
| `sesh/`    | `~/.config/sesh/sesh.toml` — session manager config |
| `zsh/`     | `~/.zshrc`, `~/.zsh_profile`, `~/.profile` |
| `starship/`| `~/.config/starship.toml` — prompt (Noctalia palette) |
| `local/`   | `~/.local/bin/` — `sesh-picker`, `tmux-cht.sh` |
| `git/`     | `~/.gitconfig` |

## Usage

```bash
git clone <this-repo> ~/.dotfiles
cd ~/.dotfiles
./stowlink        # link everything (backs up regular files to *.backup)
```

Link a subset:

```bash
STOW_FOLDERS="tmux,zsh" ./stowlink
```

## Terminal workflow

Ghostty boots into the sesh picker (`sesh-picker`): one named tmux session per
project, fuzzy-matched over live sessions, `sesh.toml` configs and zoxide dirs.
Esc drops to a plain shell.

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

Requires (install separately): `tmux`, `sesh`, `zoxide`, `fzf`, `fd`, `zsh`,
`starship`, Ghostty. TPM plugins install with `prefix + I` inside tmux.
